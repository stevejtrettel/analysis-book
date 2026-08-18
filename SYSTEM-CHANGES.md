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

- 2026-08-18 — Fork point. No divergences yet beyond book metadata
  (package.json name, book/book.yml, latex/macros.tex contents).
