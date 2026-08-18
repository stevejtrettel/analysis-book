# ODE Book — Build System Design

A single markdown source compiles to two outputs: a static website
and readable, hand-editable LaTeX. Custom-built to replace Quarto.

**Everything starts fresh.** The previous attempt (`~/Writing/odes`) is prior
art only: no text, no figure toolkit, no export code, no design is ported
directly. We consult it for lessons, deliberately re-adopt the ideas that
survive scrutiny, and rewrite the rest.

## Decisions (settled)

| Decision | Choice | Why |
|---|---|---|
| Source format | Plain markdown + remark directives | Translates cleanly to LaTeX (MDX doesn't); mechanically convertible back to Quarto if this project ever stalls |
| Numbering | LaTeX numbers natively (`\newtheorem`, `\label`/`\ref`); web replicates the rules; build diffs the `.aux` file against the compiler's label table | Publisher-grade `.tex` with no hardcoded numbers, and drift between outputs is a build error, not a silent mismatch |
| LaTeX output | Human-quality: one file per chapter, `\include`, standard packages, macros passed through | The book must eventually go to a publisher |
| Math renderer | MathJax everywhere, build-time for prose, per-equation cache | Print export needs TeX→SVG-paths for figure labels; MathJax does that, KaTeX can't. One renderer, one `macros.tex`, no client math JS |
| Deliverable | One website, with the compiled PDF book linked on the site | The site is the front door; the PDF is a build artifact it publishes |
| Website | Framework-free static site in this repo (three-layer architecture below) | Astro considered and rejected as overkill; theme built fresh in the spirit of the personal site (sjtSite) without coupling |
| Theming | Light/dark mode compatible across the board — site, prose, live figures | Decided now as a structural constraint; specific styling deferred to a later pass |
| Figures on web | Islands (the page mounts the figure module); the dev server generates a standalone harness at `/dev/<id>` — no per-figure `index.html` boilerplate (amended with the author during the figure-system build) | Natural sizing and shared theme; zero ceremony per figure |
| Content | Fresh start — nothing ported directly (no text, no toolkit code, no export code, no figure design) | Ideas from `odes/` are re-adopted only deliberately; everything else is rewritten |
| Numbering conventions | Boring and standard: per-chapter, shared amsthm counter | Every exotic rule is one the web must re-implement and a publisher must tolerate |

## Source vocabulary

Theorem-family environments are container directives; the id prefix determines
the crossref word:

```markdown
:::theorem{#thm-picard title="Picard–Lindelöf"}
If $f$ is continuous in $t$ and Lipschitz in $y$, then ...
:::

:::proof
...
:::
```

Environments (v1): `theorem`, `lemma`, `proposition`, `corollary`,
`definition`, `example`, `remark`, and unnumbered `proof`. All share one
counter, numbered per chapter (`\newtheorem{theorem}{Theorem}[chapter]`,
`\newtheorem{lemma}[theorem]{Lemma}`, ...).

Numbered equations use Quarto-style trailing labels (unlabeled display math
stays unnumbered; raw environments like `aligned` pass through inside `$$`):

```markdown
$$
y' = f(t, y)
$$ {#eq-general}
```

Crossrefs are `@`-references, Quarto-style: `@thm-picard` → "Theorem 2.4",
`@eq-general` → "(2.1)" / `\eqref`, `@fig-...`, `@sec-...`, `@ch-...`.
Citations are pandoc-style `[@strogatz2018]` against `references.bib`.

Figures are container directives — the body is the caption, so captions can
hold math:

```markdown
:::figure{#fig-direction-field}
The direction field of $y' = \sin t - ay$, with solutions threaded through
chosen initial conditions.
:::
```

The id is also the figure's code lookup: `figures/fig-direction-field.js`
(single file, the common case) or `figures/fig-direction-field/index.js`
(folder, when a `print.js` or shared module earns it) — or, planned, a
plain image file. No `src` attribute; file presence is the signal.

Web: island mounting the figure's `main.js`. LaTeX: `figure` environment with
`\includegraphics` of the exported still(s), `\caption`, `\label`.

## Site structure

One website is the whole public face of the book: chapters as pages with
live figures, plus the compiled PDF offered as a download link on the site —
the two outputs are one artifact family, built together. Light/dark mode is a
structural requirement from day one: site chrome, prose, and live figures all
respond to it (the print stills are fixed-light). The visual design pass comes
later, targeting a theme in the spirit of the personal website (sjtSite);
until then, structure only — no styling decisions get baked into the compiler.

## Web architecture: three-layer static, no framework

Derived from what the artifact is — a document, not an app — and from the
longevity requirement (build and render unchanged in ten years). A book is
one template applied N times; the problems frameworks solve are not present.
(Astro was considered, including an md→md "resolved markdown" variant; both
rejected as adding a dependency the requirements don't justify. The layer
boundaries below are exactly what a framework would consume, so adopting one
later is cheap if ever justified.)

Three layers, strict one-way dependencies:

1. **Content pipeline** (the compiler — built, see design/crossref.md):
   parse → resolve → render. Pure functions: markdown in, per-chapter HTML
   fragments + book.json (title, parts, label table, anchors) out.
   Build-time math rendering lives here, cached per expression by content
   hash. Depends only on remark + the math renderer.
2. **Presentation layer**: layout.js (plain template literals — no template
   language) + book.css. Wraps fragments into pages, generates nav/ToC/
   landing from book.json, copies assets to dist/. Includes a small
   sharp-based image stage: size variants, WebP/AVIF, srcset, width/height
   attributes, cached by content hash. ~200–300 lines we own.
3. **Runtime layer**: the only client JS — figure modules as native ES
   modules (import map for the shared toolkit and a vendored, pinned
   three.js ESM build) plus a tiny theme toggle. Depends on nothing above
   it; a figure runs identically in a book page or a bare dev harness.

Dev loop: watcher re-runs the pipeline on save (sub-second; math cache keeps
it that way), tiny static server, livereload that preserves scroll. ~60
lines. Full-page refresh, no HMR machinery.

### Requirements imposed by figure-heavy books (e.g. a future calc3
### conversion, ~200 three.js/shader visuals) — designed in now:

- **Lazy mounting is the figure-embed contract, not an optimization.**
  Browsers hard-cap live WebGL contexts per page (≈8–16). Default embed:
  poster image; boot on scroll-into-view; teardown far off-screen with
  poster restored. Every figure must be pausable/disposable by contract.
- **One capture, two consumers**: a figure's deterministic export produces
  the print still AND the web poster (sharp derives the web variants).
  The export format is discovered, never declared: the export returns a
  self-describing artifact (SVG string / image bytes / composite), and the
  pipeline routes on what it receives — no format metadata to fall out of
  sync with the code. Format is independent of how the figure renders on
  screen: raster is the right export whenever vector is impossible
  (shaders) or impractical (three.js scenes, canvas figures with thousands
  of objects where SVG is too heavy), while a canvas-rendered figure with
  modest content may still export vector. Principle for the figure-system
  design generally: never declare what can be observed.
- **Capture caching + parallel headless runs** are load-bearing at 200
  figures, not conveniences.
- **Shader sources**: `?raw` imports are a bundler-ism. Standards-clean
  options: fetch() the .glsl at runtime, or glsl in tagged template
  literals. If neither satisfies during figure-system design, a tiny
  compile step scoped to the runtime layer only — site architecture
  unmoved.

Open on this layer: whether figure code is TS or JS (TS forces a runtime-
layer compile step), npm-dependency policy for figures beyond three.js, and
whether non-book pages (announcements, solutions) ever join the site.

## Repo layout

```
ode-book/
  book/               # the source of truth
    book.yml          # title, author, parts, chapter order
    part1/ch01.md
  figures/
    _toolkit/         # theme, panel, clock, rng — the per-book toolkit
    fig-<id>.js       # single-file figures, named by directive id (flat, book-wide)
    fig-<id>/         # folder figures: index.js + print.js/shared modules
  latex/
    preamble/         # class options, packages, theorem declarations
    macros.tex        # THE shared macro file: prose MathJax, figure labels, LaTeX
    build/            # generated: main.tex, ch01.tex, ... (committed or not, TBD)
  site/               # presentation + runtime layers (consume book/ via the compiler)
  compiler/           # the library: parse → book pass → emitters
  tools/              # export-figures.mjs (ported), aux-check, etc.
```

## Pipeline

1. **Parse** every chapter in `book.yml` order → mdast (remark-parse,
   remark-directive, remark-math, attribute support).
2. **Book pass** — the heart: walk the whole book, assign numbers to
   sections/theorems/equations/figures, build the global label table
   (`thm-picard → {kind, number "2.4", chapter, anchor, url}`).
3. **LaTeX emit**: per-chapter `.tex` + `main.tex`. Directives →
   environments, refs → `\Cref`/`\eqref`, math passed through verbatim, no
   numbers hardcoded. Readability is a hard requirement, not a nicety.
4. **Web emit**: per-chapter HTML fragments from the compiler, wrapped into
   pages by the presentation layer. Numbers and ref text baked in from
   the label table; MathJax renders math at build time, cached by hash of
   (tex string, macros). Prose edits rebuild via the watcher dev loop
   described in the architecture section.
5. **Figure export**: headless browser captures a print still per figure,
   SVG→PDF for the book. The capture contract (how a figure produces its
   print appearance) is part of the fresh figure-system design. Cached by
   content hash of figure source.
6. **Consistency check**: compile the PDF, parse the `.aux`, diff LaTeX's
   numbers against the label table. Any mismatch fails the build.

## Milestones

1. **Round-trip spike**: one sample chapter (two theorems, a labeled
   equation, crossrefs, one real figure) → working PDF and working web
   page. Proves the LaTeX emitter and the book pass.
2. **Numbering hardening**: `.aux` consistency check, parts/frontmatter,
   TOC, citations in both outputs.
3. **Site polish**: layout, nav, theme, figure islands with the dev-harness
   split, MathJax build cache.
4. **Stress test**: write one full real chapter (rewriting material, not
   porting it) and fix what breaks.

## Open (defaults proposed, adjustable)

- Exercises with hideable solutions, index: **punt to v2**.
- LaTeX preamble: **written fresh**, refined as the emitter matures.
- Whether `latex/build/` output is committed or generated-only.
- The figure system itself: its API, theming, and export contract get their
  own design conversation before any code — the biggest open design area.
