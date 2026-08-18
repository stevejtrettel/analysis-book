/**
 * Build orchestrator: book.yml → parse → resolve → emit LaTeX + the site,
 * compile the PDF, and run the aux check.
 *
 *   node compiler/build.js            build everything (LaTeX + PDF + site)
 *   node compiler/build.js --no-pdf   skip latexmk + aux check
 *
 * Also importable: build({pdf}) throws BuildError on content errors, so the
 * dev loop (site/dev.js) can keep a warm process and stay sub-second.
 *
 * Site output is dist/: the whole public face, pure static files —
 * landing page, one page per chapter, assets, and the compiled PDF.
 */

import { readFileSync, writeFileSync, mkdirSync, cpSync, existsSync, copyFileSync } from "node:fs";
import { execFileSync } from "node:child_process";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import YAML from "yaml";

import { parseChapter } from "./parse.js";
import { resolveBook, walk } from "./resolve.js";
import { captureFigures } from "../tools/capture.mjs";
import { emitMain, emitChapter } from "./emit-latex.js";
import { emitChapterFragment } from "./emit-html.js";
import { initMath, saveMathCache, mathStylesheet } from "./math.js";
import { auxCheck } from "./aux-check.js";
import { chapterPage, landingPage } from "../site/layout.js";

const ROOT = path.dirname(path.dirname(fileURLToPath(import.meta.url)));
const TEX_OUT = path.join(ROOT, "latex", "build");
const DIST = path.join(ROOT, "dist");

export class BuildError extends Error {
  constructor(errors) {
    super(errors.map((e) => `  ✗ ${e}`).join("\n"));
    this.errors = errors;
  }
}

export async function build({ pdf = true } = {}) {
  const t0 = performance.now();

  // --- load + parse --------------------------------------------------------

  const book = YAML.parse(readFileSync(path.join(ROOT, "book", "book.yml"), "utf8"));

  book.parts = book.parts.map((part) => ({
    title: part.title ?? null,
    figure: part.figure ?? null,
    chapters: part.chapters.map((rel) => ({
      file: rel,
      slug: path.basename(rel, ".md"),
      tree: parseChapter(readFileSync(path.join(ROOT, "book", rel), "utf8")),
    })),
  }));
  book.chapters = book.parts.flatMap((p) => p.chapters);

  // --- resolve -------------------------------------------------------------

  const { labels, errors } = resolveBook(book.chapters);
  if (errors.length) throw new BuildError(errors);

  // --- emit: LaTeX ---------------------------------------------------------

  mkdirSync(TEX_OUT, { recursive: true });
  writeFileSync(path.join(TEX_OUT, "main.tex"), emitMain(book, book.chapters));
  for (const ch of book.chapters) writeFileSync(path.join(TEX_OUT, `${ch.slug}.tex`), emitChapter(ch));

  // --- figures: resolve + capture (cache makes hits ~free) -----------------

  const directiveIds = new Set();
  for (const ch of book.chapters)
    walk(ch.tree, (n) => {
      if (n.type === "containerDirective" && n.name === "figure" && n.attributes?.id)
        directiveIds.add(n.attributes.id);
    });
  const partFigureIds = book.parts.map((p) => p.figure).filter(Boolean);
  const figures = await captureFigures(ROOT, [book.figure, ...partFigureIds, ...directiveIds].filter(Boolean)); // hero (book.yml figure:) + part art: wired by layout.js / main.tex

  // --- emit: site ----------------------------------------------------------

  await initMath(ROOT);

  for (const ch of book.chapters) {
    const fragment = emitChapterFragment(ch, figures);
    mkdirSync(path.join(DIST, ch.slug), { recursive: true });
    writeFileSync(path.join(DIST, ch.slug, "index.html"), chapterPage(book, ch, fragment));
  }
  writeFileSync(path.join(DIST, "index.html"), landingPage(book, figures));

  cpSync(path.join(ROOT, "site", "assets"), path.join(DIST, "assets"), { recursive: true });
  cpSync(path.join(ROOT, "figures"), path.join(DIST, "figures"), { recursive: true });

  mkdirSync(path.join(DIST, "assets", "figures"), { recursive: true });
  mkdirSync(path.join(TEX_OUT, "figures"), { recursive: true });
  for (const [id, fig] of figures) {
    copyFileSync(path.join(fig.dir, "poster-light.png"), path.join(DIST, "assets", "figures", `${id}-light.png`));
    copyFileSync(path.join(fig.dir, "poster-dark.png"), path.join(DIST, "assets", "figures", `${id}-dark.png`));
    if (fig.stills.length === 1) {
      copyFileSync(path.join(fig.dir, fig.stills[0].file), path.join(TEX_OUT, "figures", `${id}.pdf`));
    } else if (directiveIds.has(id)) {
      // The emitter's row layout for still sequences is designed, unbuilt.
      throw new BuildError([`figure "${id}": sequence layout in LaTeX arrives with the first sequence figure in a chapter`]);
    } else {
      fig.stills.forEach((s, i) =>
        copyFileSync(path.join(fig.dir, s.file), path.join(TEX_OUT, "figures", `${id}-${i + 1}.pdf`)));
    }
  }
  writeFileSync(path.join(DIST, "assets", "mathjax.css"), mathStylesheet());

  // The math font files (1.8MB) change only with the font package: copy once
  // per version, verified by a stamp so a bump can't leave dist/ stale.
  const fontPkg = path.join(ROOT, "node_modules", "@mathjax", "mathjax-newcm-font");
  const fontVer = JSON.parse(readFileSync(path.join(fontPkg, "package.json"), "utf8")).version;
  const fontOut = path.join(DIST, "assets", "mathjax-fonts");
  const stamp = path.join(fontOut, ".version");
  if (!existsSync(stamp) || readFileSync(stamp, "utf8") !== fontVer) {
    cpSync(path.join(fontPkg, "chtml", "woff2"), fontOut, { recursive: true });
    writeFileSync(stamp, fontVer);
  }
  saveMathCache();

  const pdfSrc = path.join(TEX_OUT, "main.pdf");
  if (existsSync(pdfSrc)) copyFileSync(pdfSrc, path.join(DIST, "book.pdf"));

  console.log(
    `${labels.size} labels · ${book.chapters.length} chapters → dist/ in ${(performance.now() - t0).toFixed(0)}ms`
  );

  // --- compile + verify ----------------------------------------------------

  if (!pdf) return;

  console.log("compiling PDF (latexmk, xelatex)...");
  execFileSync("latexmk", ["-xelatex", "-interaction=nonstopmode", "-halt-on-error", "main.tex"], {
    cwd: TEX_OUT,
    stdio: ["ignore", "ignore", "inherit"],
  });
  copyFileSync(pdfSrc, path.join(DIST, "book.pdf"));

  const mismatches = auxCheck(path.join(TEX_OUT, "main.aux"), labels);
  if (mismatches.length)
    throw new BuildError(
      mismatches.map((m) => `aux check: ${m.id}: resolver says ${m.ours}, LaTeX says ${m.latex}`)
    );
  console.log(`aux check passed: LaTeX agrees with the resolver on all ${labels.size} labels ✓`);
  console.log(`PDF at latex/build/main.pdf (and dist/book.pdf)`);
}

// --- CLI -------------------------------------------------------------------

if (import.meta.url === pathToFileURL(process.argv[1]).href) {
  try {
    await build({ pdf: !process.argv.includes("--no-pdf") });
  } catch (e) {
    console.error("build failed:\n" + (e instanceof BuildError ? e.message : e.stack));
    process.exit(1);
  }
}
