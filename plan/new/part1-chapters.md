# Part I Chapter Structure — Working Decisions

Status: capture of the 2026-08-18 restructuring discussion. Chapter
shapes adjudicated; section plans still to be written. **The chapter
names used below ("the workshop", "practice without terminology", etc.)
are internal shorthands for content — NOT title candidates. Titles are
Steve's, written in his voice at drafting time.** Builds on `part1-philosophy.md`; the inversion decision below
supersedes the April Ch 3/Ch 4 ordering (their *content* survives nearly
intact, reallocated).

## The Part I narrative (Steve's words, 2026-08-18)

1. What numbers are for, and trying to pin that down.
2. The completeness axiom; ℝ as the foundation for numbers and
   geometry; uncountability.
3. Working with infinite processes.
4. Using structural facts to show when infinite processes converge
   in ℝ.
5. Understanding a general theory of infinite processes over ℝ.
6. The arithmetic of infinite processes: how do we compute when we
   can't grasp the numbers.

## The decided shape

Finer-grained purpose material (goals, story, ledger, status per
chapter) now lives in the `purpose-chN.md` files — this doc stays the
shape-level authority.

Part I is **six numbered chapters plus an unnumbered notation opener.**
Numbering below was corrected 2026-08-20; **this file and the
`purpose-chN.md` files now use one scheme throughout plan/new/**:
Ch 1 practice / Ch 2 axiom / Ch 3 known endpoints / Ch 4 workshop /
Ch 5 theory / Ch 6 arithmetic. (Citations to the *April* outline —
"§1.5", "§4.5", "§3.1" — refer to that document's own numbering and are
deliberately left alone.)

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
  approaches).
  **Infinite processes get their own section, second-to-last** (decided
  2026-08-20), in Steve's order: informal processes with examples →
  "sequence" defined as the formalization → notation for the special
  cases. Four families: recursive (Babylonian, side-and-diagonal),
  additive (**Zeno's dichotomy**, partial sums 1 − 2⁻ⁿ in closed form),
  multiplicative (**Π(1 − 1/n²)**, partial products (N+1)/2N by
  telescoping), continued fraction (free — the side-and-diagonal ratios
  ARE √2's convergents). Formalism budget: the definition and the four
  notations, nothing else. It feeds the closer directly: each process
  hands over a bounded set of partial values with no least upper bound,
  computed by the reader.
  **Viète's product (1593) enters here too** — the first formula in
  European mathematics to represent an infinite process, placed at or
  just after the traps close on nothing: a formula for the circle's
  measure in which not one symbol denotes. Top rung of the chapter's
  **ladder of namelessness** (diagonal: number missing, operation fine →
  Zeno: value obvious, operation undefined → Viète: neither).
  Section test: every section ends with something
  *nameless*. Ends with a diagnosis: our mathematics is
  smaller than our practice.
- **Ch 2 — the axiom creates the terminology.** Completeness makes an
  entire vocabulary well-defined at a stroke: sup-expressions denote.
  A sequence of definition sections: √2, roots, aˣ and log (algebraic
  track — the law of exponents proved here as a *theorem* about the
  construction, stated as a classification of the MONOTONE solutions;
  the wish itself waits for Part II's reversal, see
  `exponential-thread.md`),
  length, area, trig values (geometric track — the axiomatic-
  measurement design *closes* here; the forcing theorem needs
  sup-existence, so it lands on this side of the boundary). The
  axiomatic method as plot: saying what numbers *should be* is the act
  that brings them into existence. Section test: every section defines
  something from Ch 1's nameless list. Twist ending: uncountability — and the twist section
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
- **Ch 3 — the setup: known endpoints** (MCT removed — decided
  2026-08-18, second session). What convergence means + computing
  toward *known* targets: process zoo, ε-N, limit laws, density
  (every real — even Ch 2's unnameable ones — is reached by
  rationals), terminals: decimals and parabola, **both verified to
  survive without MCT**. Parabola needs only the §1.5 sandwich +
  geometric series (checked: MCT appears nowhere in the April file).
  Decimals live **entirely in this chapter** (decided 2026-08-18,
  revising the earlier split: a decimal is a *process*, so its home
  is the convergence chapter — Ch 2 has no decimal section). The
  decimal section opens with the one-line sup definition (the axiom
  is available since Ch 2), then |x − Sₙ| ≤ 10⁻ⁿ by direct estimate —
  known-endpoint convergence, no MCT — then greedy algorithm,
  uniqueness/0.999…, periodic ⟺ rational. (The same sup definition
  gives the Liouville number its existence.)
  **Compounding is posed here** (decided 2026-08-20, revising the
  earlier "e does not appear in Ch 3" ruling — see `purpose-ch3.md`):
  in the definition section, as the third specimen of the chapter's
  scoreboard (decimals *confirmed*, Oresme's harmonic blocks *refuted*,
  Bernoulli's compounding *stuck*). Bounds only — 2 ≤ Bₙ < 3 by
  Bernoulli's own binomial argument; monotonicity is WITHHELD, because
  finding it is the workshop's craft. The constant is not named here.
  Exit state = cliffhanger: you can verify convergence only toward a
  limit you can already name; e, nested radicals, Σ1/n² are out of
  reach. **The repeated pattern**: this chapter ends in a limitation as Ch 1
  ended in a diagnosis, and the next chapter opens with the answer —
  Part I performs deferral-and-reckoning twice, once for numbers,
  once for processes. It now leaves **two** debts, not one, and they
  bracket the workshop: compounding answered on its first pages, π in
  its final section.
- **Ch 4 — the workshop.** *Thesis: certification is creation.* Now
  **introduces MCT** — the chapter owns its engine. Lots of
  interesting examples; each section a technique revealing hidden
  monotone structure; every section ends with a number that now exists.
  1. MCT + direct certifications (visible monotone structure): MCT
     from the ε-characterization of sup; Babylonian re-proved without
     the Pell closed form — the lesson: this generalizes when no name
     is available; **e — main text, named at capture** (decided
     2026-08-20; the anonymity plan is dropped, see
     `exponential-thread.md`): the binomial expansion yields
     monotonicity, boundedness and the series in one stroke, MCT
     closes it, and the section finishes the x = 1 identity
     e = Σ1/k!; nested radicals, first visit
     (revisited for *rate* in the contraction section — deliberate
     progress-marker, per the double-visit rule); nonneg series
     criterion, Σ1/n². (Harmonic divergence moved to the
     known-endpoints chapter, decided 2026-08-20 — cited here as the
     p-series boundary case.)
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
- **Ch 5 — the theory with no handles.** *Thesis: the assumption-free
  calculus — what can be said about a sequence you know nothing about.
  Ch 4's certificates demand handles (monotonicity found, a partner
  produced, a constant computed); Ch 5's tools need boundedness or
  nothing.*
  1. BW and the set of subsequential limits (opening question: Ch 4
     used subsequences you *chose*; what is an arbitrary bounded
     sequence *forced* to contain?).
  2. limsup/liminf: total operations + their calculus; convergence ⟺
     shadows meet; ratio/root upgraded to the sharp limsup dichotomy
     (the result that best captures the chapter: a luckily-verified
     condition becomes an always-computable quantity); Cauchy–Hadamard
     radius formula (placement RESOLVED 2026-08-20 — joint 3; it lands
     here as one of the chapter's two big named results, alongside the
     Cauchy criterion).
  3. Cauchy: tail-oscillation derivation (centerpiece, preserved);
     the intrinsic criterion; implicitly defined sequences.
  4. ~~Five faces, told as the converses~~ — DROPPED as a framing
     (2026-08-18, second session; see `purpose-ch5.md`). Salvage: a
     remark that the Cauchy form mentions only distance and is the
     one that travels to Part III; converses as exercises at most.
     The chapter's back half is instead: more examples — things only
     the general theory can do (see `purpose-ch5.md`).
  The exponential thread passes through in a single paragraph: the
  series Euler manipulated freely in 1748 was first *proved* convergent
  by Cauchy in 1821. Light by design; no example hunt on its account.
- **Ch 6 — The Arithmetic of the Infinite** (decided). Rearrangement =
  commutativity; double sums = associativity/grouping; Cauchy product =
  distributivity; dominated convergence = limits through the
  operations. Euler as master calculator; climax (1+x/n)ⁿ = Σxᵏ/k!,
  **at general x** (scope resolved 2026-08-20 — forced, since Ch 4 now
  finishes the x = 1 case; staged as Euler's *Introductio* §§115–116
  with its one illegal step licensed by dominated convergence).
  A number chapter, not a hinge.

## Design rules established in this discussion

- **Promotion rule** (Steve, 2026-08-18): a concept may be promoted to
  where the current mathematics naturally invites it; its *theory*
  stays where it belongs. (Subsequences: object in the workshop's
  splitting section, theory in the theory chapter — parallel to
  isolated values in Ch 1 vs functions in Part II.)
- **One object, three notations** (decided 2026-08-20; the unification
  pass). Part I has no separate chapter of summation tests, so the
  treatment of sequences, series and products must be ONE treatment,
  stated early and cashed late. Three statements: (1) series and
  products *are* sequences — partial sums, partial products, notation
  not new objects; (2) the dictionary runs both ways — differences read
  a sequence as a series, ratios read it as a product, so **converting
  between notations is a technique**, and each notation makes a
  different feature visible (recursion → the step, series → the
  increments, product → the ratios, decimal → the error); (3) **every
  convergence test in Part I is MCT in a costume** — products reduce to
  series by INEQUALITY, not by logarithm. Ch 1 introduces the objects
  and notations, Ch 3 §1 states the dictionary, Ch 4 delivers the
  doctrine, Ch 5 is what happens when there is nothing to grip.
- **Invent-then-name**: the workshop invents techniques under concrete
  pressure (positive parts, difference-series, two-sided trapping);
  later chapters name and generalize them (a± in Ch 6's rearrangement,
  bounded variation later, limsup as the automatic trap, completeness-
  via-series in Part III). Practice → theory is the thesis order.
- Ch 4 proof-route changes required by the inversion (all verified):
  absolute convergence via Σ(aₙ+|aₙ|) (MCT, not Cauchy); contraction
  via the difference series (not Cauchy); products via |Pₙ−Pₙ₋₁| ≤
  B|uₙ| + the inequalities Π(1+xᵢ) ≤ 1/(1−Σxᵢ), Π(1−xᵢ) ≥ 1−Σxᵢ.

## Open joints

1. ~~Gluing lemma's home~~ — resolved by the promotion rule.
2. Double-visit of ratio/root (bound form Ch 4, limsup form Ch 5):
   proposed as deliberate motivation engine; needs sign-off.
3. ~~Radius of convergence~~ — resolved 2026-08-20: Cauchy–Hadamard
   moves into the theory chapter as one of its big results (see
   `purpose-ch5.md` for the recorded reasons and what stays in
   Part II).
4. Ch 5's in-chapter concreteness: are divergence certificates + sharp
   tests + radius + Cauchy error analysis enough, or does it want one
   more worked set-piece? (Its biggest clients — EVT-style extractions
   — are Part II's.) **Eased 2026-08-20**, not closed: the Ch 5 story
   refinement has the chapter earning its place by its two big theorems
   and by making Ch 6 possible, so examples serve the theory rather
   than justify the chapter (`purpose-ch5.md`).
5. Chapter titles: to Steve's voice; theses above are the test.
6. ~~Ch 1 split~~ — resolved (second session): split confirmed in the
   reallocated form; language material → unnumbered notation opener;
   cardinality theory → Ch 2 twist section; measurement wish
   pre-axiom. Still open: the section split of each half (next
   discussion).
7. Crossref fallout of the reshuffle. **Internal numbering fixed
   2026-08-20** — this file and the `purpose-chN.md` files now agree.
   What remains are citations pointing at the APRIL outline's own
   numbering ("§1.5", "§4.5", "§3.1 union theorem", "§5.2"), which
   appear here and in `axiomatic-measurement.md`,
   `coverage-april-to-new.md` and the purpose files. Those reference a
   different document and are correct as such; converting them is
   bookkeeping at outline-rewrite time.
8. **Briggs's form in the workshop** (D5, `exponential-thread.md`):
   2ⁿ(a^(1/2ⁿ) − 1) as a guided exercise or main text? A load question —
   Ch 4 is the fullest chapter in the book. See `purpose-ch4.md`.
