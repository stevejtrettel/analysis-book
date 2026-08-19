# Part I Chapter Structure — Working Decisions

Status: capture of the 2026-08-18 restructuring discussion. Chapter
shapes adjudicated; section plans still to be written. **The chapter
names used below ("the workshop", "practice without terminology", etc.)
are internal shorthands for content — NOT title candidates. Titles are
Steve's, written in his voice at drafting time.** Builds on `part1-philosophy.md`; the inversion decision below
supersedes the April Ch 3/Ch 4 ordering (their *content* survives nearly
intact, reallocated).

## The decided shape

Part I is now **six numbered chapters plus an unnumbered notation
opener** (numbering below shifts accordingly;
"Ch 2 setup / Ch 3 workshop / Ch 4 theory / Ch 5 arithmetic" elsewhere
in plan/new/ docs should be read as chapters 3–6).

- **Unnumbered opener — notation only** (decided 2026-08-18, second
  session; Steve chose this over an appendix). Logic, quantifiers,
  sets, functions (injective/surjective/bijective as *vocabulary*),
  induction. Abbreviated — readable in one sitting; the book's first
  numbered page is mathematics. Cardinality *theory* is NOT here — it
  moves to Ch 2's twist section (see below).
- **Ch 1 — practice without terminology** (split proposed in the
  morning session; **stress-tested and confirmed in the second
  session, in the reallocated form below** — the thin version, old
  §1.1+§1.2 alone, was rejected as a weak opening chapter).
  *Doctrine: existence is definability — not having terminology means
  the thing does not exist in our mathematics.*
  **Boundary rule: the completeness axiom IS the chapter boundary.**
  Ch 1 never spends sup-existence; Ch 2 spends it in every section.
  Ch 1 *does* define least upper bound and exhibits sets in ℚ that
  lack one — the word exists, the referent doesn't; the diagnosis
  needs the word to state what's missing.
  Contents: the world of fields and order + the inequality toolbox
  (the arithmetic everyone believed was complete); the diagonal and
  the failed patches (vocabulary extended one word at a time, each
  patch fails); **measurement pulled pre-axiom** (ruled "excellent and
  correct"): the (A1)–(A4)/(L1)–(L4) axioms, polygon area as known +
  the homework derivation series, the trapping inequality — and the
  traps close on *nothing* (design consequence 5: a crisis of
  practice, not philosophy); the Babylonian iteration as pure
  inequality work (decreasing, bounded, error below any tolerance —
  all field/order-provable; the one unposable question is what it
  approaches). Section test: every section ends with something
  *nameless*. Ends with a diagnosis, not a wound: our mathematics is
  smaller than our practice.
- **Ch 2 — the axiom creates the terminology.** Completeness makes an
  entire vocabulary well-defined at a stroke: sup-expressions denote.
  A sequence of christenings: √2, roots, aˣ and log (algebraic track),
  length, area, trig values (geometric track — the axiomatic-
  measurement design *closes* here; the forcing theorem needs
  sup-existence, so it lands on this side of the boundary). The
  axiomatic method as plot: saying what numbers *should be* is the act
  that brings them into existence. Section test: every section is a
  christening. Twist ending: uncountability — and the twist section
  carries the cardinality theory (same-size via bijection, ℚ
  countable, ℝ uncountable, algebraics countable ⟹ transcendentals
  exist — Cantor's proof as the punchline). Kept lean by design
  (Steve's condition: must not bloat Ch 2): general countability
  machinery (ℕ×ℕ, countable unions, Cantor's power-set theorem) goes
  to exercises. Ending pivot (required): the doctrine reframes from
  "each number needs a name" to "the *system* needs a definition" —
  so uncountability deepens the doctrine instead of refuting it.
- Fields/order are NOT extractable to the opener (they are the "world
  before" and half of ℝ's interface). Pacing note: the split does not
  delay completeness materially — same pages, new labels (Steve).
- **Ch 2 — the setup: known endpoints** (MCT removed — decided
  2026-08-18, second session). What convergence means + computing
  toward *known* targets: process zoo, ε-N, limit laws, density
  (every real — even Ch 2's unnameable ones — is reached by
  rationals), terminals: decimals and parabola, **both verified to
  survive without MCT**. Parabola needs only the §1.5 sandwich +
  geometric series (checked: MCT appears nowhere in the April file).
  Decimals' single MCT use ("every decimal converges") is replaced by
  the new Ch 2 sup-christening: x = sup of truncations exists there,
  and |x − Sₙ| ≤ 10⁻ⁿ by direct estimate — known-endpoint
  convergence. (Same fix gives the Liouville number its existence.)
  Exit state = cliffhanger: you can verify convergence only toward a
  limit you can already name; e, nested radicals, Σ1/n² are out of
  reach. **The rhyme**: this chapter ends in a limitation as Ch 1
  ended in a diagnosis, and the next chapter opens with the answer —
  Part I performs deferral-and-reckoning twice, once for numbers,
  once for processes.
- **Ch 3 — the workshop.** *Thesis: certification is creation.* Now
  **introduces MCT** — the chapter owns its engine. Lots of
  interesting examples; each section a technique revealing hidden
  monotone structure; every section ends with a number that now exists.
  1. MCT + direct certifications (visible monotone structure): MCT
     from the ε-characterization of sup; Babylonian re-proved without
     the Pell closed form — the lesson: this generalizes when no name
     is available; e (guided exercise); nested radicals, first visit
     (revisited for *rate* in the contraction section — deliberate
     progress-marker, per the double-visit rule); nonneg series
     criterion, Σ1/n², harmonic divergence.
  2. Splitting: subsequence defined (promoted — see rule below),
     inheritance, gluing theorem, divergence via two subsequential
     limits; alternating series with two-sided error bound; √2 CF
     convergents; Wallis converges.
  3. Comparison: tests; absolute convergence via positive parts; ratio
     and root in BOUND form (no auxiliary limits); infinite products
     via the two Bernoulli-style product inequalities.
  4. Telescoping → contraction: difference-series principle; rates;
     golden ratio, nested radicals (second visit: rate), Newton,
     periodic CF tails.
  5. ★ Continued fractions, general theory.
  6. Measurement of the Circle (the Aug §4.5, climax, moves intact —
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
  stays where it belongs. (Subsequences: object in the workshop's
  splitting section, theory in the theory chapter — parallel to
  isolated values in Ch 1 vs functions in Part II.)
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
6. ~~Ch 1 split~~ — resolved (second session): split confirmed in the
   reallocated form; language material → unnumbered notation opener;
   cardinality theory → Ch 2 twist section; measurement wish
   pre-axiom. Still open: the section split of each half (next
   discussion).
7. Crossref fallout of the reshuffle (Part I now six chapters; the old
   §4.5 lands as the workshop's final section; "§3.1 union theorem"
   citations, etc.) — bookkeeping at outline-rewrite time.
