# Source Map

Everything in `plan/` is material from the previous (Quarto-era) draft,
sorted for the rebuild into `book/`. Nothing here is compiled; chapters get
rewritten from this material one at a time — never converted mechanically.
Sorted 2026-08-18 after a full read of every file.

## How this folder is organized

- `chNN-<slug>/` — one bundle per chapter, holding everything specific to it:
  - `outline/` — the April 2026 section-by-section outlines (**content truth**
    for ch 1–9). Template per section: Narrative / Content (theorem statements
    + proof sketches) / Guided Exercises / Exercises / Dependencies. Each
    chapter also has `overview.md` and a drafted `00-history.md` prelude.
  - `skeleton/` — the Quarto-era chapter skeletons: section structure plus
    (for ch 1–4) theorem blocks with statements and block ids. Ch 11–15
    skeletons are condensed extractions of `part3-plan.md`.
  - `plan.md` — that chapter's Dec 2025 plan. Background only for ch 1–7 and
    9; **still load-bearing for ch 8 and ch 10** (see table).
- `part1-intro.md`, `part2-intro.md` — part introductions (April 2026,
  essentially write-ready prose in bullet form).
- `part3-plan.md` — the Part III master plan (Dec 2025). **The content truth
  for ch 11–15**; those chapters have no outline layer.
- `narrative/` — the √2, π, e story threads (Dec 2025). The mathematics
  matches what the outlines implemented but chapter *placements* are stale
  (e.g. `pi.md` puts Archimedes in Ch 2; it lives in §4.5). Re-sync, don't
  rewrite.
- `results/` — self-contained worked proofs, timeless reference: irrationality
  of e and π, the continued fraction of e, contraction convergence rates.
- `archive/` — superseded cross-chapter planning. Read for archaeology only:
  - `reaching-for-infinity-overview.md` (Dec 17): first master doc, old
    9-chapter numbering. Its philosophy sections (anti-Rudin manifesto,
    exercise tiers) still hold; structure and conventions do not.
  - `overview.md` (Dec 19–27): the Ch 1–10 master plan in current numbering.
    Superseded by the outlines for ch 1–7/9; the per-chapter `plan.md` copies
    are the better version of its ch 8/10 content.
  - `historical-intros-plan.md` (Dec 16): old numbering, but the only drafted
    prelude sketches for Part II+ chapters beyond what the outlines carry —
    mine it when writing history preludes.
  - `part3-ideas/`: the two Dec 22 Part III drafts (abstract functional-
    analysis track v1, and the response that became `part3-plan.md`). The
    unplaced-topics dump at the end of `part_iii_outline.md` is the paper
    trail of the unresolved Part III restructuring.

Conventions for theorem blocks moved to `design/conventions.md` (updated to
the new directive syntax). Deleted as Quarto machinery, recoverable from git:
per-chapter `index.qmd` include lists (their H1 titles are recorded in the
table below; section order is the filename numbering) and the ten empty
skeleton `00-history.qmd` stubs.

## The strata (by git date)

1. **Dec 15–17, 2025** — first planning pass (`archive/reaching-for-infinity-
   overview.md`, `archive/historical-intros-plan.md`). Old 9-chapter shape.
2. **Dec 18–29, 2025** — the master plan: `archive/overview.md`,
   `part3-plan.md`, per-chapter `plan.md`, `narrative/`, `results/`,
   chapter skeletons created.
3. **Apr 14–20, 2026** — the outline campaign: detailed outlines ch 1–9,
   part intros, conventions; theorem-block pass over skeletons ch 1–2
   (Apr 16) and ch 3–4 (Apr 20).
4. **Aug 18, 2026** — §4.5 Archimedes' π rewritten in outline + skeleton
   (identical block ids across both); repo migrated off Quarto the same day.

## Per-chapter status

Rendered title = the H1 the old book used. Where layers disagreed on a title,
all variants are listed — **pick one during the rebuild**.

| Bundle | Rendered title (variants) | Content truth | State |
|---|---|---|---|
| ch01-real-line | The Real Line (plan: "Foundations") | outline | Outline complete; §1.5 geometry (curve length, area, trig via arc length) is new vs plan and load-bearing for §2.6/§4.5. Skeleton fully blocked. |
| ch02-limits | Limits | outline | Complete; §2.6 parabola quadrature new; Babylonian I/II/III thread. Skeleton fully blocked. |
| ch03-sequences | Studying Sequences (overview: "Bounded Sequences"; plan: "Sequences and Convergence") | outline | Complete but the only chapter with no guided exercises. Skeleton blocked Apr 20. |
| ch04-convergence | Proving Convergence (plan/overview: "Infinite Processes") | outline; **§4.5 is the freshest work in the repo** (Aug 18) | §4.4/§4.5 skeletons are the most developed anywhere; §4.5 outline+skeleton share block ids — staged as first drafting target. |
| ch05-exchanging-limits | When Order Matters (plan: "Commutativity and Limits") | outline | Most proof-complete outline in Part I (Mertens, Riemann rearrangement, dominated convergence proved in full) — but skeleton is placeholder-only, **zero theorem blocks**. |
| ch06-continuity | Continuity | outline | Gold standard: the most finished outline in the book. Skeleton headers-only. |
| ch07-differentiation | Differentiation | outline | Complete. exp/log reworked vs plan: built from Ch 1's aˣ, log = exp⁻¹ in §7.4 (plan's Taylor-series construction and standalone §9.4 Logarithms are dead). Skeleton headers-only. |
| ch08-integration | Integration | outline (structure) + **plan.md (proofs & exercises)** | Thinnest Part II outline: exercises "TBD" in §8.1/8.2/8.4; the plan holds full proofs (trapping theorem, axiom verification, Archimedes-inequality 7-step GE). Skeleton headers-only. |
| ch09-calculus | Calculus (overview: "The Fundamental Theorem and Its Consequences") | outline | Rich; trig via arcsin-as-integral + ODE uniqueness; π-computation tour. Placeholders: Euler π²/6 ("Chapter __"), Weierstrass sine product. Skeleton headers-only. |
| ch10-extending-integral | Extending the Integral (plan: "Completing the Integral") | **plan.md** | Never got an April outline (only the orphan `outline/exercise-sphere.md`). The plan is draft-level: full Daniell development, 25 exercises — the most detailed document in the repo. Skeleton = Dec condensation of it, different format from ch 6–9. |
| ch11-metrics | Metric Spaces | part3-plan.md | Skeleton = extraction of the plan with retitles (11.2 "Reproving Theorems", 11.5 "Completing Spaces") and ★ on 11.4/11.5. |
| ch12-function-space | Function Spaces | part3-plan.md | Ditto. Note: the plan's Arzelà–Ascoli guided-exercise block was dropped from the skeleton — A–A currently exists nowhere. |
| ch13-fourier | Fourier Series (plan: "Fourier Analysis") | part3-plan.md | Distinctive set piece: 13.4 "Why Complex Exponentials" (d/dx as rotation matrix). Plan's guided exercises (Gibbs, Chebyshev, Haar) not in skeleton. |
| ch14-diffeq | Differential Equations | part3-plan.md | Only 4 content sections; live author note atop 03-eigenfunction: "LETS DO SOME ODE STUFF FIRST!" — the ODE/PDE split is an open question. |
| ch15-distributions | Beyond Functions (plan: "Distributions") | part3-plan.md | The book's thematic climax (§15.1 is literally "Reaching for Infinity") and its most overloaded chapter (7 sections, 4 full applications). Live note atop 01-reaching proposing a periodic-distributions-first reorganization. |

## Punch list (found during the 2026-08-18 full read)

Things to fix or decide during the rebuild — none were fixed in the sort:

**Open decisions**
- Chapter titles wherever the table shows variants (worst: ch 3, ch 4).
- Part III restructuring (recorded in `claude-notes.md` Discussion Threads):
  possible 6-chapter split, home for calculus of variations (currently only
  starred §12.3, yet load-bearing for 13.2's isoperimetric proof), ODE/PDE
  split of ch 14, ch 15 overload. Heat equation is worked in 13.4, 14.3, and
  15.5 — a re-split would deduplicate.
- Sturm–Liouville (14.3) is stated with no available proof pathway — the
  compact-operator machinery was cut with the v1 draft, and Arzelà–Ascoli
  vanished entirely (ch 11 still points at it: "why Arzelà-Ascoli (Ch 12)
  needs extra conditions").
- The n-ball volume exercise (`ch10-extending-integral/outline/
  exercise-sphere.md`) has no confirmed home: §8.3's GE promises it "in
  Chapter 10," its dependency line says "§10.?", but its tools live in §9.4.
- Whether `exr-` exercise environments enter the compiler (v2 per DESIGN.md).

**Stale cross-references**
- Ch 1 renumbering fallout (plan's §1.4/§1.5 vs outline's §1.3/§1.4):
  `ch01/outline/04-reals.md` cites "§1.4 completeness" (it *is* §1.4;
  completeness is §1.3); `ch02/outline/02-convergence.md` and
  `03-limit-laws.md` cite "§1.5" for Archimedean/density (now §1.4);
  `ch02/outline/04-mct.md` off by one twice; `ch04/outline/overview.md`
  cites "§1.4 completeness".
- Ch 8 outline dependencies attribute uniform continuity to "§6.4" and cite
  "§6.5 compactness of [a,b]" — uniform continuity is §6.5; there is no
  compactness section.
- §4.1 (outline and skeleton) promises Wallis = π/2 "in §4.5" — the Aug 18
  §4.5 explicitly defers it to integration theory.
- Ch 9 overview says "Historical Prelude: to be determined" but the prelude
  is drafted in `ch09/outline/00-history.md`.
- Part III: baked-in chapter numbers throughout ("Ch 12", "13.4"); ch 11
  Baire section promises a meager-differentiability proof "in Ch 12" that
  ch 12 doesn't contain; ch 11's intro omits ch 15 from its list of doors
  opened.
- Pell sign conventions differ across §2.1 / §4.1 / §4.4 exercises
  ((−1)ⁿ·2 vs (−1)ⁿ vs (−1)ⁿ⁺¹ — different sequences, needs reconciliation
  when drafting).

**Live author flags (still actionable)**
- §1.5 lacks the double-angle / half-angle identities the §4.5 doubling-
  recurrence guided exercise needs (ch 1 skeleton has a ★ "Trigonometric
  Identities" placeholder for them).
- `ch04/outline/03-contraction.md` contains mid-derivation scratch ("Hmm,
  need xy > 2...") — correct endpoint, not copy-ready.
- `ch04/outline/02-comparison.md`: "[NOTE: Would like more interesting/
  historically important examples here]".
- §2.5 "Irrational Bases" guided exercise marked exploratory/may-be-removed.
- Ch 8 Archimedes-inequality GE steps "TBD" (the plan has a 7-step version);
  it leans on convexity facts that exist only as §7.2 exercises.
- §7.4 e-continued-fraction GE is a stub ("Details to be worked out" —
  `results/e-continued-fraction.md` has the mathematics).
- Ch 10 skeleton `04-measure.md` ends with all-caps note: exercises /
  Stieltjes extensions.
- A drafting think-aloud survives verbatim in ch 11's Baire section ("wait,
  ℚ IS dense. Try again").
- Tannery naming: outlines renamed §5.4 to "Dominated Convergence" (Tannery
  credited only in the history file) — deliberate, forward-pointing to
  integration.

## Path translation (for reading claude-notes.md and older docs)

| Old path | Now |
|---|---|
| `plan/chapter-N-*.md` | `plan/chNN-<slug>/plan.md` |
| `plan/overview.qmd` | `plan/archive/overview.md` |
| `plan/overview-part3.qmd` | `plan/part3-plan.md` |
| `plan/reaching-for-infinity-overview.md`, `plan/historical-intros-plan.md`, `plan/part3-ideas/` | `plan/archive/...` |
| `plan/conventions.md` (a.k.a. `_formatting/conventions.md`) | `design/conventions.md` |
| `outline/NN-<slug>/*.qmd` | `plan/chNN-<slug>/outline/*.md` |
| `outline/part1.qmd`, `outline/part2.qmd` | `plan/part1-intro.md`, `plan/part2-intro.md` |
| `chapters/NN-<slug>/*.qmd` | `plan/chNN-<slug>/skeleton/*.md` |
| `outline/ch6/...` (in claude-notes) | `plan/ch06-continuity/outline/...` |
