# Handoff: picking this repo up cold

*Reaching for Infinity* — Steve Trettel's undergraduate real analysis
textbook, told as the story of infinite processes. Updated 2026-08-18,
the day the repo migrated off Quarto onto the custom build system.

## The one unusual thing to understand first

This book runs on a **deliberate copy** of the build system developed in
`~/Writing/ode-book` (same author, same system, separate copies). The
strategy is build-twice-then-abstract: each book's copy evolves freely to
fit its book, and once both have diverged under real use the system gets
unified using the two copies as data points. `SYSTEM-CHANGES.md` is the
contract: provenance of the fork, the rules (bug fixes get ported to the
other repo or logged; design divergences are welcome but logged with a
*why*), and the running divergence log. Read it before touching system
code, and keep it honest — the eventual unification depends on it.
As of the fork, three fixes made here still await porting to ode-book
(listed there).

## What's system vs. what's book

System (came from ode-book; architecture in `DESIGN.md`, subsystem specs
in `design/`):

- `compiler/` — markdown → resolved book → HTML fragments + LaTeX.
  Numbering/crossref spec: `design/crossref.md`.
- `site/` — presentation layer (template-literal `layout.js`,
  `book.css`) + dev loop. Style decisions: `design/site-style-notes.md`.
- `tools/` — headless figure capture (`capture.mjs`), guarded deploy.
- `latex/preamble/` — XeLaTeX + memoir print design.
- `figures/_toolkit/` — the per-book figure toolkit. Figure system spec:
  `design/figure-system-notes.md`.

Book:

- `book/` — **the source of truth**: `book.yml` (title, parts, chapter
  order) + chapters as directive markdown. Currently one stub chapter
  (`part1/real-line/`) proving the pipeline; everything else is still to
  be written.
- `plan/` — all planning material. The previous draft's layers, grouped
  by date (`2025-plans/`, `2025-chapters/`, `2026-outline/`), become
  legacy as the new plan is built off them in `plan/new/`.
  **`plan/MAP.md` is the index**: what's from when, the newest version
  of each thing, a usage guide (what to open, what to distrust), and
  old→new path translation. Never converted mechanically, and not
  itself compiled.
- `design/conventions.md` — theorem-block conventions (environment
  taxonomy, label naming, notation), carried over from the old draft
  and updated to the new directive syntax.
- `latex/macros.tex` — the shared macro file (print and web read the
  same file); holds `\RR`, `\QQ`, `\ep`, etc.
- `claude-notes.md` — the Quarto-era session log. Its *content*
  decisions (outline workflow, environment conventions, per-chapter
  state, style rules like the ★ terminal-section convention) are still
  the record; its tooling references (Quarto, .qmd rendering) are
  obsolete.

## Running it

`npm install`, then `npm run build` (full build: site into `dist/`, PDF
via latexmk/XeLaTeX at `dist/book.pdf`, aux consistency check that fails
the build if print and web numbering disagree) or `npm run dev`
(watch/serve/livereload). Requires a TeX installation locally; Netlify
is manual-deploy-only by design and **this book's site is not linked to
Netlify yet**.

Source syntax (full spec in `DESIGN.md` + `design/crossref.md`):
`:::theorem{#thm-x title="..."}` container directives (theorem, lemma,
proposition, corollary, definition, example, remark; unnumbered proof,
sketch), `$$...$$ {#eq-x}` labeled equations, `{#sec-x}` heading ids,
`@thm-x` / `@Thm-x` crossrefs, `:::figure{#fig-x}` where the id is also
the lookup for `figures/fig-x.js`. A top-level `figure:` key in
`book.yml` sets the landing/title-page hero (none set yet — an early
candidate for this book's first real figure).

## State and next steps

- Migration complete and verified 2026-08-18: Quarto removed, system
  in, stub chapter builds end to end (site + PDF + aux check).
- Next substantive work: the new plan in `plan/new/`, built off the
  legacy layers (see `plan/MAP.md`), then chapters drafted into `book/`
  from it — which will also surface what this book needs from the
  system that the ODE book didn't.
- Open, deliberately: hero figure, per-part art, Netlify link, and how
  the historical preludes (every `00-history.qmd` is empty) fit the new
  chapter structure.

## Working with the author

Steve is a math professor and works as a collaborator, not a client:
discuss structure and trade-offs before producing; his adjudication
gates the work. Decisions get recorded (this file, `SYSTEM-CHANGES.md`,
or the session log) — the repos are built to be picked up cold.
