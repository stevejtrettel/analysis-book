# Map of the planning material

This folder holds all planning material for the book. The dated folders are
the layers inherited from the previous (Quarto) draft, grouped purely by
*when they were written* — they become legacy as the new plan is built off
them. `new/` is where the new plan starts. Nothing here is compiled.

Accounting done 2026-08-18 after a full read of every file. All files were
converted `.qmd` → `.md`, otherwise byte-identical to the originals. Deleted
as Quarto machinery (recoverable from git): the per-chapter `index.qmd`
include lists — their rendered titles are recorded below — and ten empty
skeleton history stubs. Theorem-block conventions were carried forward to
`design/conventions.md`, translated to the new directive syntax.

## The layers

- **`2025-plans/`** — Dec 15–29, 2025. The planning campaign:
  `reaching-for-infinity-overview.md` (Dec 17: master doc v1 — philosophy,
  conventions, an early 9-chapter structure) and `historical-intros-plan.md`
  (Dec 16: prelude sketches, old numbering); then `overview.md` (Dec 19–27:
  master plan v2, Ch 1–10 in the current shape), per-chapter plan files for
  Ch 1–10, the two abandoned `part3-ideas/` drafts (Dec 22),
  `overview-part3.md` (Dec 24–29: the Part III plan), `narrative/` (√2, π, e
  threads) and `results/` (worked proofs).
- **`2025-chapters/`** — the old book's chapter files, Ch 1–15. Created
  Dec 2025; theorem blocks (ids + statements) added Apr 16, 2026 for Ch 1–2
  and Apr 20 for Ch 3–4; Ch 5–9 are header-only scaffolds; Ch 10–15 are
  bullet condensations of the Dec plans. `04-convergence/05-archimedes-pi.md`
  updated Aug 18, 2026.
- **`2026-outline/`** — Apr 14–20, 2026, plus Aug 18. The detailed outline
  campaign: `part1.md`/`part2.md` intros and per-section outlines for
  Ch 1–9 (Narrative / Content with proof sketches / Guided Exercises /
  Exercises / Dependencies, plus drafted history preludes).
  `04-convergence/05-archimedes-pi.md` was rewritten the morning of
  Aug 18, 2026 — the newest content in the repo. Ch 10 has only one orphan
  exercise; Ch 11–15 were never outlined.
- **`new/`** — the new plan, live since Aug 18, 2026. `thesis.md`
  (founding document), `part1-philosophy.md`, `part1-chapters.md`
  (Part I = unnumbered notation opener + six chapters; Ch 1 split,
  MCT inversion), the two axiomatic designs, `purpose-chN.md` files
  (Goals/Story/Ledger/Status per chapter, adjudicated before section
  lists — the goals-first workflow), and `sources/` (research
  verification with ⚠ VERIFY flags). Start at its `README.md`.

Session decisions from the April campaign are logged in `claude-notes.md`
(repo root) — its content decisions still stand; its Quarto tooling
references do not.

## Newest version of each thing

| Thing | Newest version | Supersedes |
|---|---|---|
| Book structure (parts, chapters) | `book/book.yml` (Aug) + Apr decisions in `claude-notes.md` | Dec structures in both master docs |
| Ch 1–7, 9 content | the 2026 outlines | Dec per-chapter plans, `overview.md` chapters |
| Ch 8 content | 2026 outline for structure; **Dec plan still newest for proofs & exercises** (outline left them TBD) | — |
| Ch 10 content | the **Dec plan** (near-draft, 25 exercises) — nothing newer exists | its condensation in `2025-chapters/10-…` |
| Ch 11–15 content | **`overview-part3.md`** (Dec) — nothing newer exists | the `part3-ideas/` drafts; skeletons are extractions of it |
| §4.5 Archimedes' π | the **Aug 18** files (outline + chapter file share block ids) | April version |
| Historical preludes | 2026 outline `00-history` files (Ch 1–9 only) | Dec 16 `historical-intros-plan.md` (still the only material for Ch 10–15) |
| Part intros | 2026 `part1.md` / `part2.md`; Part III has none | — |
| Conventions | `design/conventions.md` (Apr content, Aug syntax) + claude-notes style rules | conventions in the Dec 17 doc |
| Narrative threads | Dec 29, never updated — math right, chapter placements stale | — |
| Philosophy statement | only in the Dec 17 doc — never rewritten, keep for that alone | — |

Rendered chapter titles (from the deleted index files), with variants still
undecided: 1 The Real Line · 2 Limits · 3 Studying Sequences (elsewhere
"Bounded Sequences", "Sequences and Convergence") · 4 Proving Convergence
(elsewhere "Infinite Processes") · 5 When Order Matters · 6 Continuity ·
7 Differentiation · 8 Integration · 9 Calculus (elsewhere "The Fundamental
Theorem and Its Consequences") · 10 Extending the Integral (elsewhere
"Completing") · 11 Metric Spaces · 12 Function Spaces · 13 Fourier Series
(elsewhere "Fourier Analysis") · 14 Differential Equations · 15 Beyond
Functions (elsewhere "Distributions").

## Using the docs: what to open, what to distrust

**Deciding the new plan's shape** — open `claude-notes.md` (Key Decisions +
Part III discussion) and `2025-plans/overview.md` for chapter arcs.
Distrust: the six title variants above; the Part III structure is explicitly
unresolved — the "unplaced topics" list ending
`2025-plans/part3-ideas/part_iii_outline.md` is the open agenda.

**Planning any of Ch 1–7, 9** — open its 2026 outline (for these chapters it
nearly *is* a new plan; Ch 6 is the most finished, Ch 5 has complete
proofs). `2025-chapters/` gives block ids/statements for Ch 1–4. Distrust:
cross-references into Ch 1 (renumbering left several off by one — reals.md,
convergence, limit-laws, mct, ch-4 overview); §4.1's promise that Wallis is
proved in §4.5 (the Aug rewrite defers it to integration); scratch work
mid-derivation in the §4.3 outline; §7.4's exp/log construction *replaced*
the Dec plan's Taylor-series one — don't blend them.

**Ch 8** — outline for structure, **Dec plan for everything marked TBD**
(full proofs, the 7-step Archimedes-inequality exercise). Distrust its
dependency labels (§6.4/§6.5 swapped; uniform continuity is §6.5); the
convexity facts it needs exist only as §7.2 exercises.

**Ch 10** — the Dec plan, full stop. Note: the n-ball exercise
(`2026-outline/10-extending-integral/exercise-sphere.md`) has no settled
home — §8.3 promises it "in Chapter 10," its tools live in §9.4.

**Ch 11–15** — `overview-part3.md` is the only source; the skeletons add
retitles and two live author notes (`14-diffeq/03-eigenfunction.md`: "LETS
DO SOME ODE STUFF FIRST!"; `15-distributions/01-reaching.md`: periodic
distributions first?). Distrust anything leaning on Arzelà–Ascoli or
spectral machinery — it was cut, so Sturm–Liouville (14.3) is asserted with
no proof path, and ch 11 still points at an A–A that exists nowhere. The
heat equation is worked three times (13.4, 14.3, 15.5) — a restructuring
flag, not a plan.

**§4.5 / first drafting target** — the Aug 18 files, ready to write; but
your own flag stands: §1.5 lacks the double-angle identities its doubling
exercise needs (Ch 1 skeleton has a ★ "Trigonometric Identities"
placeholder for them).

**History preludes** — 2026 outline `00-history` files (Ch 1–9, drafted);
`2025-plans/historical-intros-plan.md` for Ch 10–15 (mine, don't follow).

**While writing anything** — `2025-plans/narrative/` for the √2/π/e arcs;
`2025-plans/results/` for worked gems (e's continued fraction fills §7.4's
stub exercise); `reaching-for-infinity-overview.md` for the philosophy
statement.

## Path translation (for claude-notes.md and older docs)

| Old path | Now |
|---|---|
| `plan/...` (files, `narrative/`, `results/`, `part3-ideas/`) | `plan/2025-plans/...` (same names, `.md`) |
| `outline/NN-<slug>/`, `outline/part1.qmd`, `outline/ch6/` | `plan/2026-outline/...` |
| `chapters/NN-<slug>/` | `plan/2025-chapters/NN-<slug>/` |
| `plan/conventions.md` (a.k.a. `_formatting/conventions.md`) | `design/conventions.md` |
