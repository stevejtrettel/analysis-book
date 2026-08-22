# Ch 5 Purpose — the theory with no handles

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Skeleton — to be filled in its own discussion. Adjudicated shape:
`part1-chapters.md`.

## Goals

- **Story refinement (Steve, 2026-08-20, endorsed as successful):**
  the chapter is NOT "general theory, then applied to cool example
  numbers." It is the general theory that COMPLETES the study of the
  single infinite process, to set up Ch 6 — whose question is: "now
  we know all these different processes, sequences and sums, with
  limits — what do we do with that?" Ch 5 finishes the theory; Ch 6
  spends it justifying the actual computations of Newton and Euler.
  (This eases the example-hunt pressure: the chapter earns its place
  by its two big theorems — Cauchy criterion, Cauchy–Hadamard — and
  by making Ch 6 possible; examples serve the theory rather than
  justify the chapter.)
- **BW proof route — IMPORTANT OPEN DECISION BOUNDARY (Steve,
  2026-08-20: leans peak, "but not hard," keep April's for now):**
  (a) peak argument — every sequence contains a monotone
  subsequence, so BW is MCT applied to structure always present;
  narrative continuity with the workshop (the craft of finding
  monotonicity shown to be universally possible). Steve's lean, for
  narrative reasons. (b) nested intervals / bisection — April's
  route, which Steve likes; its own narrative continuity: the
  trapping spine (Ch 1 traps, Ch 2 nested-interval property and the
  uncountability proof, Ch 3 decimal construction). Both routes have
  real stories; decide at section-writing time. Do not silently
  change.
  **New argument for (a), 2026-08-20 (unification pass):** Ch 4 now
  carries the doctrine that *every convergence test in Part I is MCT
  in a costume*. Under the peak route BW is the **last** MCT theorem —
  the one saying the engine always has something to grip, however bad
  the sequence — and then **Cauchy is the genuine break**: the first
  criterion in the book mentioning neither monotonicity nor a limit
  value. A sharper reason for the peak route than narrative continuity
  alone, and it gives this chapter's identity ("no handles") a precise
  meaning. Still not decided.
- Seed (decided; revised 2026-08-18 second session): the
  assumption-free calculus — what can be proved about a sequence you
  know nothing about, and what those facts do. BW; limsup/liminf as
  total operations; Cauchy via tail-oscillation. **The "five faces of
  completeness" framing is DROPPED** (Steve: "I don't actually care
  about the five faces framing — I care about proving things about
  general sequences and using such facts nicely"). Salvage: one
  remark that the Cauchy form is the one that travels to Part III
  (mentions only distance); converse directions as exercises at most.
  Cut-vs-exercises disposition open.
- Exports / skills / strands / meta-lesson / exit state: TBD.
- Border (decided): tools need boundedness or nothing (vs Ch 4's
  handles). Biggest clients (EVT-style extractions) are Part II's.

## Story

- Seed (decided): the result the chapter is built around is already
  designated — a luckily-verified condition
  becomes an always-computable quantity (ratio/root upgraded to the
  sharp limsup dichotomy).
- Opening question (seed): Ch 4 used subsequences you *chose*; what is
  an arbitrary bounded sequence *forced* to contain?
- Arc / ending / prelude brief: TBD.

## Ledger

- Seed: cashes Ch 4's deliberate double-visits (ratio/root limsup
  form).
- **Cauchy–Hadamard moves INTO this chapter** (decided 2026-08-20,
  Steve: this chapter is the general theory of what happens with
  sequences, and the radius theorem is one of its big results,
  alongside the Cauchy criterion). The hook the reader already
  holds: the geometric series converges exactly for |x| < 1 — is a
  cutoff like that special, or universal? Answer: universal, with
  the cutoff computed by the limsup formula.
  **Reasons April postponed it to §6.3, examined before moving
  (recorded so the move is known to be eyes-open):**
  (1) one-visit principle — object introduced once, convergence and
  function theory together; mitigated: two-visit treatment is now
  house style, and the split line is clean ("where does it
  converge" here; "what function is the sum" in Part II).
  (2) the theory chapter had no room — no longer true: the
  five-faces drop freed the chapter's final slot.
  (3) nothing in Part I needs it (verified: Ch 6's exponential
  series convergence is per-fixed-x ratio test) — so the move is
  story-driven, admitted as such under the content rule.
  (4) richer motivation in §6.3 amid live function questions — real
  cost; the boundary zoo (behavior at |x| = R), continuity, and all
  function-flavored material STAY in Part II.
  (5) Part I leanness — minor, half a section.
- **The chapter's shape (Steve, 2026-08-18): theory, then its own
  examples.** Ch 4 = examples with some theory; Ch 5 = the general
  theory followed by more examples — this answers the standing worry
  (open joint 4) that BW/Cauchy have few clients left inside Part I
  after the MCT-only workshop. Example candidates already on file:
  implicitly defined sequences (Cauchy as the only handle), sharp
  ratio/root, radius of convergence, Cauchy error analysis.
- **The exponential thread's only business here** (2026-08-20, light
  touch by design): the series Euler manipulated freely in 1748 was
  first PROVED convergent by Cauchy in 1821 — the same *Cours
  d'analyse* as the criterion this chapter is built on. The reckoning
  motif at chapter scale: Ch 5's tools arriving eighty years late to
  certify Ch 6's hero. One paragraph, no more
  (`exponential-thread.md`).
- Cauchy's motivation now comes from the workshop: contraction and
  telescoping kept making the move "total remaining travel is small,
  so the process settles" — Cauchy is the general name for that move
  (invent-then-name). One-line revisit when Cauchy arrives: Oresme's
  harmonic blocks (proved in Ch 3) re-read as "never internally
  settles." Details TBD.

## Status

- Shape decided 2026-08-18 (`part1-chapters.md`). Purpose discussion
  in progress 2026-08-20 (story: guarantees vs Ch 4's craft; two big
  named results — Cauchy criterion, Cauchy–Hadamard).
- 2026-08-20 (unification pass): a new argument for the peak route
  recorded under the BW decision boundary — BW as the last MCT theorem,
  Cauchy as the genuine break. Not a decision.
- 2026-08-20 (exponential-thread rewrite): the exponential thread
  passes through this chapter as a single paragraph (Cauchy 1821
  certifying Euler's 1748 series) — deliberately light; no example
  hunt on its account.
- REJECTED (Steve, 2026-08-20): the subadditivity lemma (Fekete) as
  an example — beauty didn't override its having no client in the
  book.
