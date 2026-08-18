# Part I Chapter Structure — Working Decisions

Status: capture of the 2026-08-18 restructuring discussion. Chapter
shapes adjudicated; section plans still to be written. **The chapter
names used below ("the workshop", "practice without terminology", etc.)
are internal shorthands for content — NOT title candidates. Titles are
Steve's, written in his voice at drafting time.** Builds on `part1-philosophy.md`; the inversion decision below
supersedes the April Ch 3/Ch 4 ordering (their *content* survives nearly
intact, reallocated).

## The decided shape

Part I is now **six chapters** (numbering below shifts accordingly;
"Ch 2 setup / Ch 3 workshop / Ch 4 theory / Ch 5 arithmetic" elsewhere
in plan/new/ docs should be read as chapters 3–6).

- **Ch 1 — practice without terminology** (split decided 2026-08-18).
  *Doctrine: existence is definability — not having terminology means
  the thing does not exist in our mathematics.* The world of fields and
  order (the arithmetic everyone believed was complete), the working
  tools, and the accumulating discoveries that practice handles
  quantities the language cannot denote: the diagonal, areas, roots.
  The patching attempts = extending vocabulary one word at a time; each
  fails. Ends with a diagnosis, not a wound: our mathematics is smaller
  than our practice.
- **Ch 2 — the axiom creates the terminology.** Completeness makes an
  entire vocabulary well-defined at a stroke: sup-expressions denote.
  A sequence of christenings: √2, roots, aˣ and log (algebraic track),
  length, area, trig values (geometric track — the axiomatic-
  measurement design lands here). The axiomatic method as plot: saying
  what numbers *should be* is the act that brings them into existence.
  Twist ending: uncountability — the language created more than it can
  ever individually name.
- Open within the split: where the pure language material (sets,
  functions, Cantor) lives — inside Ch 1, or as a Chapter 0/appendix so
  the book opens at the practice. Fields/order are NOT extractable
  (they are the "world before" and half of ℝ's interface).
- **Ch 2 — the setup.** What convergence means + the basic machine:
  process zoo, ε-N, limit laws, MCT as the *one existence tool*
  (Babylonian, e, nonneg series), terminal: decimals, parabola.
  Exit state: you can compute when algebra cooperates; you can certify
  when monotone; everything downstream is driven by that limitation.
- **Ch 3 — the workshop.** *Thesis: certification is creation.* Lots of
  interesting examples; each section a technique revealing hidden
  monotone structure; every section ends with a number that now exists.
  1. Splitting: subsequence defined (promoted — see rule below),
     inheritance, gluing theorem, divergence via two subsequential
     limits; alternating series with two-sided error bound; √2 CF
     convergents; Wallis converges.
  2. Comparison: tests; absolute convergence via positive parts; ratio
     and root in BOUND form (no auxiliary limits); infinite products
     via the two Bernoulli-style product inequalities.
  3. Telescoping → contraction: difference-series principle; rates;
     golden ratio, nested radicals, Newton, periodic CF tails.
  4. ★ Continued fractions, general theory.
  5. Measurement of the Circle (the Aug §4.5, climax, moves intact —
     verified machinery-free).
- **Ch 4 — the theory with no handles.** *Thesis: the assumption-free
  calculus — what can be said about a sequence you know nothing about.
  Ch 3's certificates demand handles (monotonicity found, a partner
  produced, a constant computed); Ch 4's tools need boundedness or
  nothing.*
  1. BW and the set of subsequential limits (opening question: Ch 3
     used subsequences you *chose*; what is an arbitrary bounded
     sequence *forced* to contain?).
  2. limsup/liminf: total operations + their calculus; convergence ⟺
     shadows meet; ratio/root upgraded to the sharp limsup dichotomy
     (the chapter's emblem: a luckily-verified condition becomes an
     always-computable quantity); Cauchy–Hadamard radius formula
     (placement of radius still open — joint 3).
  3. Cauchy: tail-oscillation derivation (centerpiece, preserved);
     the intrinsic criterion; implicitly defined sequences.
  4. Five faces, told as the CONVERSES: each principle regenerates the
     axiom; completeness = one concept, five formulations; the
     settling-form mentions only distance and is the one that travels.
     (NOT an unmasking, NOT a discovery — completeness is known and
     visibly spent since Ch 1–2; the chapter measures its reach,
     intrinsic form, and identity.)
- **Ch 5 — The Arithmetic of the Infinite** (decided). Rearrangement =
  commutativity; double sums = associativity/grouping; Cauchy product =
  distributivity; dominated convergence = limits through the
  operations. Euler as master calculator; climax (1+x/n)ⁿ = Σxᵏ/k!.
  A number chapter, not a hinge.

## Design rules established in this discussion

- **Promotion rule** (Steve, 2026-08-18): a concept may be promoted to
  where the current mathematics naturally invites it; its *theory*
  stays where it belongs. (Subsequences: object in §3.1, theory in
  Ch 4 — parallel to isolated values in Ch 1 vs functions in Part II.)
- **Invent-then-name**: the workshop invents techniques under concrete
  pressure (positive parts, difference-series, two-sided trapping);
  later chapters name and generalize them (a± in Ch 5's rearrangement,
  bounded variation later, limsup as the automatic trap, completeness-
  via-series in Part III). Practice → theory is the thesis order.
- Ch 3 proof-route changes required by the inversion (all verified):
  absolute convergence via Σ(aₙ+|aₙ|) (MCT, not Cauchy); contraction
  via the difference series (not Cauchy); products via |Pₙ−Pₙ₋₁| ≤
  B|uₙ| + the inequalities Π(1+xᵢ) ≤ 1/(1−Σxᵢ), Π(1−xᵢ) ≥ 1−Σxᵢ.

## Open joints

1. ~~Gluing lemma's home~~ — resolved by the promotion rule.
2. Double-visit of ratio/root (bound form Ch 3, limsup form Ch 4):
   proposed as deliberate motivation engine; needs sign-off.
3. Radius of convergence: §4.2 (Cauchy–Hadamard as payoff) vs held for
   §6.3.
4. Ch 4's in-chapter concreteness: are divergence certificates + sharp
   tests + radius + Cauchy error analysis enough, or does it want one
   more worked set-piece? (Its biggest clients — EVT-style extractions
   — are Part II's.)
5. Chapter titles: to Steve's voice; theses above are the test.
6. ~~Ch 1 split~~ — resolved: split into practice-without-terminology /
   the-axiom-creates-the-terminology (see top). Still open inside it:
   the language-material placement (Ch 0/appendix vs in-chapter) and
   the section split of each half.
7. Crossref fallout of the reshuffle (Part I now six chapters; the old
   §4.5 lands as the workshop's final section; "§3.1 union theorem"
   citations, etc.) — bookkeeping at outline-rewrite time.
