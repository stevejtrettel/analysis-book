/**
 * Build-time MathJax: TeX → CHTML strings, so pages ship no math JS.
 *
 * One MathJax instance per process (init ~100ms), a disk cache keyed by
 * content hash of (font, macros, display, tex) so unchanged expressions cost
 * a Map lookup on rebuild. The stylesheet is generated with adaptiveCSS off:
 * it covers the whole font, so it never depends on which expressions were
 * rendered — the only choice under which per-expression caching stays sound.
 *
 * The font is the one-line swap: change FONT to any @mathjax/*-font package
 * (mathjax-newcm is the mathjax package default) and reinstall.
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { createHash } from "node:crypto";
import path from "node:path";

const FONT = "mathjax-newcm";
const FONT_URL = "/assets/mathjax-fonts";

let MathJax = null;
let cache = new Map();
let cachePath = null;
let cacheDirty = false;
let keyPrefix = "";

/**
 * Load the cache and start MathJax, defining macros.tex's macros once.
 * Idempotent: a warm process (the dev loop's builder) pays init once. A
 * macros.tex change must arrive in a fresh process — the dev loop respawns
 * its builder for exactly that reason.
 */
export async function initMath(root) {
  if (MathJax) return;
  cachePath = path.join(root, ".cache", "math.json");
  if (existsSync(cachePath)) {
    cache = new Map(Object.entries(JSON.parse(readFileSync(cachePath, "utf8"))));
  }

  const macrosFile = path.join(root, "latex", "macros.tex");
  const macros = existsSync(macrosFile) ? readFileSync(macrosFile, "utf8") : "";
  const version = JSON.parse(
    readFileSync(path.join(root, "node_modules", "mathjax", "package.json"), "utf8")
  ).version;
  keyPrefix = `${version}|${FONT}|${hash(macros)}|`;

  const { init } = await import("mathjax");
  MathJax = await init({
    loader: { load: ["input/tex", "output/chtml"] },
    tex: { packages: { "[+]": ["ams"] } },
    chtml: { adaptiveCSS: false, fontURL: FONT_URL },
  });
  // The whole font, up front: the sync tex2chtml path can't await the
  // dynamic font pieces (\mathbb, script, fraktur, ...), and adaptiveCSS is
  // already off because caching demands render-order independence.
  await MathJax.startup.document.outputJax.font.loadDynamicFiles();
  if (macros.trim()) MathJax.tex2mml(macros); // registers \newcommand definitions
}

/** TeX → CHTML html string. Throws with the TeX source on a compile error. */
export function renderMath(tex, display) {
  const key = keyPrefix + hash(`${display ? "D" : "I"}\0${tex}`);
  const hit = cache.get(key);
  if (hit !== undefined) return hit;

  const node = MathJax.tex2chtml(tex, { display });
  const html = MathJax.startup.adaptor.outerHTML(node);
  if (html.includes("data-mjx-error")) {
    const msg = html.match(/data-mjx-error="([^"]*)"/)?.[1] ?? "unknown error";
    throw new Error(`math error: ${msg}\n  in: ${tex.trim().split("\n")[0]}`);
  }
  cache.set(key, html);
  cacheDirty = true;
  return html;
}

/** The full font stylesheet — a static asset, identical for every build. */
export function mathStylesheet() {
  return MathJax.startup.adaptor.textContent(MathJax.chtmlStylesheet());
}

export function saveMathCache() {
  if (!cacheDirty) return;
  mkdirSync(path.dirname(cachePath), { recursive: true });
  writeFileSync(cachePath, JSON.stringify(Object.fromEntries(cache)));
  cacheDirty = false;
}

function hash(s) {
  return createHash("sha256").update(s).digest("hex").slice(0, 16);
}
