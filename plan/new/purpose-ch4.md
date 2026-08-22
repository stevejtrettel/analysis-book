# Ch 4 Purpose — the workshop

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Skeleton — to be filled in its own discussion. Adjudicated shape:
`part1-chapters.md` (six sections; MCT moved in 2026-08-18, second
session).

## Goals

- **The story (decided 2026-08-18, Steve's formulation): using
  completeness to understand limits.** Ch 2 made numbers exist
  (sups); Ch 3 defined arrival — and its machinery never touched the
  axiom. The two meet for the first time in MCT, a translation
  theorem: a Ch 2 fact (this set has a sup) becomes a Ch 3 fact
  (this sequence converges — to that sup). Every technique in the
  chapter is a way of routing a sequence into position where the
  translation applies. **MCT is the star but not the only thing**
  (Steve): splitting into subsequences (the side-and-diagonal
  numbers return — two interleaved monotone halves, MCT on each) and
  contraction. On contraction (clients verified 2026-08-18): the
  theorem survives at full strength without Cauchy — the standard
  proof's geometric-tail estimate is the difference-series argument,
  same rates. Downstream users (Newton's method, MVT remark, ODE
  remark, CF tails) call the theorem, not the proof. **Working plan
  (Steve pleased, 2026-08-18): state and prove the full fixed-point
  theorem here.** The proof is a composition of the chapter's own
  tools — induction on the steps, telescoping (§4's principle),
  comparison against geometric (§3's test, MCT-powered), limit laws;
  fixed-point property and uniqueness from the contraction inequality
  alone (no continuity concept needed); rate cⁿ/(1−c) free. A natural
  capstone before the circle; Newton's Part II callback lands on the
  full theorem as April intended. The reversal flips one
  relationship, favorably: contraction was an application of Cauchy;
  it is now the motivation for it (Ch 5 names the move — invent-
  then-name rule).
- Seed (decided): *certification is creation* — and the chapter owns
  its engine (MCT opens it). Each section a technique revealing hidden
  monotone structure; every section ends with a number that now
  exists. Climax: Measurement of the Circle (the Aug §4.5, intact).
- **The toolkit** (inventoried 2026-08-18): four moves, one recurring
  pattern. (1) See the monotonicity directly — Babylonian, nested
  radicals, e via the binomial, positive-term series (criterion;
  Σ1/n², Σ1/n!; harmonic divergence lives in Ch 3 now, cited here as
  the p-series boundary). (2) Split into monotone strands —
  side-and-diagonal numbers, alternating series with two-sided error,
  Wallis's product, divergence via two strands. (3) Borrow structure
  by comparison — tests, positive parts, ratio/root in bound form,
  infinite products (Viète, Euler). (4) Shrinking steps — golden
  ratio (first genuinely non-monotone example), Newton, periodic CF
  tails, rates. Recurring pattern across the best moments: the
  PAIRED TRAP — increasing + decreasing with vanishing gap: e's
  guided exercise, alternating error bounds, the circle finale.
  Candidate addition in that pattern: Gauss's arithmetic–geometric
  mean (AM-GM from Ch 1 + MCT, nothing else) — OPEN.
- **The unifying doctrine this chapter delivers** (decided 2026-08-20,
  unification pass; foreshadowed in Ch 3 §1): **every convergence test
  in Part I is MCT in a costume.** There is no series theory and no
  product theory — there is sequence theory applied to partial sums and
  partial products.

  | test | what it really is |
  |---|---|
  | nonneg series criterion | partial sums increase — MCT |
  | comparison | bounds the partial sums — MCT |
  | ratio / root (bound form) | comparison against geometric — MCT |
  | alternating | odd sums up, even sums down, gap → 0 — MCT twice + splitting |
  | infinite products | partial products increase; the two inequalities bound them by a series — MCT |
  | telescoping / contraction | difference series with a geometric bound — MCT |

  **Products reduce to series by INEQUALITY, not by logarithm** —
  Π(1+uₙ) with uₙ ≥ 0 converges iff Σuₙ does, straight from this
  chapter's two product inequalities. That is the Part I-legal bridge,
  and it is why products need no separate theory.
  Consequence for the chapter's craft: "revealing hidden monotone
  structure" is usually **changing notation until the structure shows**
  (Ch 1's notation observation, cashed). Consequence for the border
  with Ch 5: this is the MCT chapter; Ch 5 is what you do when there is
  nothing to grip.
- **Viète is Archimedes' doubling in multiplicative notation**
  (2026-08-20). Viète's own method is a variation on the polygon
  approximation, so the products section and Measurement of the Circle
  are one computation written two ways — worth making explicit, since
  the reader met the formula in Ch 1 and watched its symbols start
  denoting in Ch 2. Fourth and final visit: it closes here at 2/π.
  ⚠ Verify how Viète himself framed the derivation before claiming he
  saw it as Archimedes' method.
- Exports / skills / strands / meta-lesson / exit state: TBD.
- Border (decided): certificates here demand *handles* (monotonicity
  found, a partner produced, a constant computed) — vs Ch 5's tools,
  which need boundedness or nothing.

## Story

- Seed (decided): Ch 3 ends unable to certify π — Archimedes' circle
  by the same method that worked for his parabola. This chapter
  carries that open question the whole way and answers it in its
  final section (Measurement of the Circle). MCT opens the chapter
  and resolves the easier cases immediately. Ch 3 now leaves TWO
  debts, so the chapter is bracketed: compounding on the first pages,
  π in the final section.
- **e's treatment — RESOLVED 2026-08-20** (reopened and closed the same
  day; full design in `exponential-thread.md`). The constant is
  **named here, at capture**, with its historical origins. The
  anonymity plan is dropped, and nothing is lost by dropping it:
  Euler's *Introductio* §122 shows the ceremony was never about the
  name — "since we are free to choose the base a … we now choose a in
  such a way that k = 1" — and k, from §114, is lim (a^h − 1)/h, the
  derivative at zero. Historically the NAME came in 1690 (Leibniz's b)
  and the SELECTION in 1748: two separate events, and the book can have
  both. Part II's §7.4 therefore **explains** e rather than defining
  it.
  - **Route: the binomial expansion** (as the toolkit already
    specifies), because it does three jobs at once —
    (1+1/n)ⁿ = Σ_{k≤n} (1/k!)(1−1/n)(1−2/n)···(1−(k−1)/n).
    *Monotone*: each factor increases with n, and there are more terms.
    *Bounded*: every product of factors is ≤ 1, so the sum is
    ≤ Σ1/k! ≤ 1+1+½+¼+⋯ = 3 — which recovers Ch 3's Bernoulli bound as
    a CONSEQUENCE OF STRUCTURE rather than a lucky estimate. MCT closes
    it. (AM-GM on n copies of (1+1/n) and one copy of 1 gives
    monotonicity alone in three lines — cheaper if only the hypothesis
    is wanted; the binomial earns its length by producing the bound and
    the series too.)
  - **The expansion is Euler's §116 done legally**: he wrote
    (j−1)/j = 1 for infinite j; here (1−1/n) stays finite and is
    watched climbing. Ch 6 licenses his version.
  - **Ch 4 finishes the x = 1 identity, e = Σ1/k!** (decided). The
    reverse inequality is in reach: fix m ≤ n, keep the first m+1
    terms, let n → ∞ by the limit laws on a FINITE sum, get
    e ≥ Σ_{k≤m} 1/k! for every m; order survives limits (Ch 3).
    Nothing exceeds Ch 3's laws plus MCT, so deferring it would be an
    artificial hold-back — against the policy that border rules
    organize rather than stifle.
  - **Two reasons it belongs here.** The section rule: a number
    computable to one digit barely "now exists," and the chapter's
    other constant arrives computable (223/71 < π < 22/7). And the RATE
    CONTRAST: the paired trap ((1+1/n)ⁿ below, (1+1/n)^(n+1) above) has
    gap ≈ e/n, so three digits needs n ≈ 1000, while the series gives
    eighteen digits in twenty terms — same number, two processes,
    wildly different rates, and "sup says where, not how fast" is the
    deficit Ch 3 opened with.
  - **Invent-then-name fires here**: the reverse inequality lets n → ∞
    with m fixed, then m → ∞ — a two-limits swap performed under
    concrete pressure with no name for it. Ch 6 names it.
  - Consequence: **Ch 6's scope is forced to general x** (D3).
- Opening question, order of the story, the example the chapter is
  remembered by, prelude assignment: TBD.

## Ledger

- Seed: Babylonian third visit (MCT, no closed form needed); e enters;
  nested radicals double-visit *within* the chapter (convergence in
  the MCT section, rate in the contraction section — deliberate);
  ratio/root in BOUND form (limsup upgrade is Ch 5's — deliberate
  double-visit, needs sign-off, open joint 2). Proof-route rules for
  the no-Cauchy inversion are in `part1-chapters.md`. Details TBD.

## Status

- Shape decided 2026-08-18 (`part1-chapters.md`). Purpose discussion
  not yet held.
- 2026-08-20 (unification pass): the every-test-is-MCT table adopted as
  the chapter's unifying doctrine; products-reduce-to-series-by-
  inequality recorded; Viète's fourth visit tied to the finale.
- 2026-08-20 (exponential-thread rewrite): e named at capture; binomial
  route fixed; the x = 1 identity finished in this chapter; D3 forced
  downstream. See `exponential-thread.md`.
- OPEN (D5): **Briggs's form.** 2ⁿ(a^(1/2ⁿ) − 1) is decreasing (the
  claim reduces to (s−1)² ≥ 0) and bounded below, so MCT gives L(a),
  with additivity from the limit laws — a complete existence proof for
  the logarithm whose algorithm is literally Briggs 1624 (fifty-four
  successive square roots of 10). Guided exercise or main text? This is
  a load question: Ch 4 is the fullest chapter in the book. Design note
  if it is in: Bernoulli (growth) and Briggs (table) are two MCT
  arguments two centuries apart, on problems the reader has no reason
  to connect — their unification is Part II's reveal, not a
  redundancy.
