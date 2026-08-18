# Build-system provenance & divergence log

This book runs on the custom build system developed in `~/Writing/ode-book`
(compiler/, site/, tools/, latex/preamble, figures/_toolkit, and the design
docs in DESIGN.md + design/). The two books deliberately run **separate
copies** of the system so each can evolve to fit its book; once both have
diverged under real use, the system gets abstracted into one shared tool
using the two copies as data points.

**Copied from:** ode-book commit `2297131` ("chpater pages"), working tree
of 2026-08-18 (which included uncommitted edits to site/book.css and
site/layout.js beyond that commit).

## Rules of the road

- **Bug fixes** to system code get ported to the other repo (or at least
  logged here so the eventual merge knows).
- **Design divergences** are the point — let them happen, but log them
  below with a line of *why*, so the future unification can tell deliberate
  differences from drift.

## Divergence log

- 2026-08-18 — Fork point. Divergences beyond book metadata (package.json
  name, book/book.yml, latex/macros.tex contents): none.

## Fixes awaiting port to ode-book

Three system changes made here during the migration; all three belong in
ode-book too (the first is a generalization, the other two are latent
bugs ode-book simply hasn't hit yet):

1. **Hero figure comes from book.yml, not hardcoded** — the landing/title
   hero was `hero-pendulum` in compiler/build.js, site/layout.js, and
   latex/preamble/preamble.tex. Now a top-level `figure:` key in book.yml
   (mirroring the per-part `figure:`); absent means no hero. ode-book
   would add `figure: hero-pendulum` to its book.yml.
2. **compiler/math.js preloads all dynamic font files** — the sync
   `tex2chtml` path throws "retry" on characters in dynamically-loaded
   font pieces (`\mathbb`, script, fraktur, ...). Fix: `await
   MathJax.startup.document.outputJax.font.loadDynamicFiles()` in
   initMath. ode-book hits this the first time a chapter uses `\mathbb`
   with a cold .cache/math.json.
3. **main.tex inputs latex/macros.tex** — DESIGN.md promises macros are
   shared identically by print and web, and math.js reads the file, but
   the LaTeX emitter never `\input` it: any macro used in prose breaks
   the PDF build. Fix in compiler/emit-latex.js (`\input{../macros}`
   after the preamble).
