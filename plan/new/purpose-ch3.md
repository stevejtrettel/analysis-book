# Ch 3 Purpose — known endpoints (the setup)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Skeleton — to be filled in its own discussion. Adjudicated shape:
`part1-chapters.md` (MCT removed 2026-08-18, second session).

## Goals

- Seed (decided): what convergence means + computing toward *known*
  targets: process zoo, ε-N, limit laws, density (every real is
  reached by rationals). Terminals: decimals and the parabola
  (verified MCT-free). Decimals get their FULL treatment here
  (decided 2026-08-18: no decimal section in Ch 2 — a decimal is a
  process): the one-line sup definition (axiom available), truncations
  converge by the 10⁻ⁿ estimate (known endpoint, no MCT), greedy
  algorithm, uniqueness/0.999…, periodic ⟺ rational, Liouville's
  number exists by the same definition.
- Exports / skills / strands / meta-lesson: TBD.
- Exit state (decided): you can verify convergence only toward a limit
  you can already name; e, nested radicals, Σ1/n² are out of reach.
- Border (decided): "is the limit nameable in advance?" — the
  known/unknown endpoint line is the border with Ch 4.

## Story

- **The story (decided 2026-08-18, Steve): giving "arrives" a
  meaning.** The naming doctrine extended from objects to processes:
  for two thousand years computations visibly headed somewhere, and
  "approaches" had no definition — so in the doctrine's terms,
  arrival did not exist in our mathematics. Ch 2 defined the
  destinations; Ch 3 defines the arriving. Once "arrives" means
  something exact, the old claims become provable — the redeemed
  beliefs (0.999…, the Babylonian recipe, Archimedes' parabola) are
  the evidence, not the story. The ending is the definition's honest
  price: proving arrival requires a named destination, and π
  withholds exactly that. (Alternatives considered and set aside:
  "old beliefs finally proved" as the spine — kept as the evidence
  layer; "reaching the unnameable ocean" as the spine — kept as the
  opening's tie to Ch 2.)
- **Decimals are constructed by nested intervals** (decided
  2026-08-18). "Define the decimal as a limit" was REJECTED as
  circular: the limit's existence is the whole question, and any
  existence proof secretly produces the value via completeness
  first. Construction: traps Iₙ = [Sₙ, Sₙ + 10⁻ⁿ] (upper endpoint
  motivated by the all-nines geometric tail = 10⁻ⁿ); nesting check
  reduces to exactly dₙ₊₁ ≤ 9 (put that on the page); the nested
  interval property (Ch 2) yields the unique trapped number, and
  |x − Sₙ| ≤ 10⁻ⁿ is free — completeness supplies the destination,
  ε-N certifies the arrival, the chapter's thesis in miniature.
  Closed intervals matter: the point can sit at the top of every
  trap — that IS 0.999… = 1 ([0.9,1] ∩ [0.99,1] ∩ … = {1}), and
  trailing-nines ambiguity is the same phenomenon. Reverse direction
  (every real has an expansion): greedy algorithm + squeeze — needs
  no completeness, its endpoint x is known from the start. Order
  within the chapter: geometric series before decimals (the
  construction uses it three times: the all-nines tail, 0.999… = 1,
  periodic ⟺ rational). The sup construction (x = sup Sₙ) is the
  noted alternative, one line shorter, less geometric.
- Seed (decided): ends on the limitation, unresolved on purpose —
  repeating the Ch 1 → Ch 2 pattern: a chapter ends on a limitation,
  the next opens with the answer.
- **Parabola is the last content section** (decided 2026-08-18,
  Steve: "a beautiful and ancient story"). Decimals precede it. The
  closing thought then writes itself: Archimedes' sum could be
  certified because the answer, 4T/3, was nameable in advance; for e
  there is no name to aim at.
- **The closing contrast is parabola vs π** (decided 2026-08-18,
  Steve): the chapter can certify Archimedes' parabola but not his
  circle — and it is the *same method* both times (inscribed and
  circumscribed figures, squeeze the gap). The parabola succeeds
  because the inscribed areas have a closed form (a geometric series
  with a computable sum); the circle's doubling perimeters have none,
  and π's name, unlike √2's, carries no equation to squeeze against.
  Ch 4 supplies the missing ingredient and ends at the circle — the
  question stays open across the whole of Ch 4, resolved in its final
  section. (Steve on the timing: Ch 1's question closed at the start
  of Ch 2 with no gap at all — decreeing the axiom takes no work.
  This time there IS a gap, because the answer costs work: a new
  theorem, MCT, and then a chapter of technique. Both are fine; the
  difference is the point.)
- **REVISED 2026-08-20 — compounding IS posed in Ch 3.** The earlier
  ruling ("e does not appear in Ch 3: at this point those limits are
  unmotivated examples, e has no standing yet") was made when the
  exponential thread started later. With Ch 1's four historical
  stations and Ch 2's aˣ behind them, compounding is a fully motivated
  limit. The *constant* is still not named here — Ch 4 captures and
  names it. Full design in `exponential-thread.md`; what lands here:
  - **Placement: the definition section (§2)**, completing the
    chapter's own scoreboard. Decimals converge with a name available
    (**confirmed**); Oresme's harmonic blocks diverge with no name
    needed (**refuted**); Bernoulli's compounding is computable,
    bounded, and **stuck**. Three specimens, one section — the exit
    thesis exhibited where it is stated rather than asserted there and
    illustrated later.
  - **The derivation, algebra until the last step**: rate r compounded
    n times gives (1+r/n)^(nt); the functional equation is free at
    every finite n, since (1+r/n)^(n(s+t)) = (1+r/n)^(ns)·(1+r/n)^(nt)
    exactly, no limits; so compounding is already exponential at every
    stage, with base Bₙ = (1+r/n)ⁿ and value Bₙ^t at time t.
    Subdividing finer is not new growth — it is the same shape with a
    shifting base. **Does the base settle?**
  - **How much is proved — method (b), decided 2026-08-20 (Steve):**
    boundedness only. Bernoulli's own binomial-plus-geometric argument,
    2 ≤ Bₙ < 3, plus the numbers (2, 2.25, 2.4414, 2.6130, …).
    Monotonicity is WITHHELD — finding it is Ch 4's craft, and it is
    the faithful historical split, since bounding it between 2 and 3 is
    exactly where Bernoulli stopped.
  - **Why two open questions is right**: compounding and π fail
    *differently*. Compounding is the barest possible failure —
    everything computable, nothing to aim at. π fails subtly — right
    method, algebra will not close. Ch 4 is bracketed: compounding
    resolved on its first pages, π in its final section.
  - OPEN: whether §3 (the laws) revisits compounding to note that *if*
    the base settles, the value at RATIONAL times is B^t (arithmetic
    laws + the root law); irrational t is a Part II debt. A
    double-visit inside one chapter — house style, but Ch 3 is loaded.
- **The opening motivation (decided 2026-08-18):** sequences arrive
  already known (promoted to Ch 1); Ch 2 called the sup the endpoint
  for monotone processes, informally, and left the general notion as
  a named debt. Ch 3 opens by collecting it: sup has three deficits
  as a notion of endpoint, each with its showcase —
  (1) *oscillation*: the side-and-diagonal numbers close in on √2
  from both sides; their sup is 3/2, the wrong number entirely;
  (2) *rate*: sup says where, nothing about approach — decimals are
  entirely about the guarantee |x − Sₙ| ≤ 10⁻ⁿ, unsayable in
  sup-language; (3) *computation*: sup has no algebra — summing the
  geometric series and the Pell argument are limit-laws work. The
  monotone applications showcase (2) and (3), so their monotonicity
  does not undercut the story.
- **Prelude sketch (four beats):** practice — Euclid X.1, the
  exhaustion principle ("less than any preassigned magnitude" — the
  ε-quantifier structure, twenty-two centuries early) and Archimedes'
  double-contradiction proofs running on it; deferred question —
  what IS the thing the process reaches (deferred productively
  through the 18th century's fearless computing); reckoning —
  Bolzano 1817, Cauchy 1821: Euclid X.1 made general and checkable;
  door — the ancient computations become theorems, starting
  immediately. Replaces April's crisis-first prelude.
- Still open: whether the parabola-vs-π contrast is a short closing
  section of its own or the final pages of the parabola section; the
  example the chapter is remembered by.
- ~~Still open: does section 1 survive?~~ — **RESOLVED 2026-08-20**:
  yes, with the dictionary as its job (see the section plan). It
  introduces nothing — Ch 1 supplied the objects and the notations —
  so its content is the three unifying statements plus the zoo as
  evidence. This is what makes the part's treatment of sequences,
  series and products one treatment rather than three.
- **Harmonic series lands here** (decided 2026-08-20, Steve): in the
  divergence part of the definition section, by Oresme's blocks
  argument (~1350 — medieval, ancient-practice credentials; ⚠ verify
  attribution) — needs only inequalities + convergent-implies-
  bounded. It kills the terms→0 misconception at the definition
  stage, and it sharpens the exit scoreboard: we can compute toward
  names, and we can REFUTE without names; the one thing we cannot do
  is confirm without names. Callbacks: Ch 4 comparison section cites
  it as the p-series boundary case; Ch 5 re-reads the blocks in one
  line as a failure to internally settle (Cauchy).

## Section plan (working, approved 2026-08-18)

Five sections, each running on exactly the one before it:

1. **Processes** — **SURVIVES, with a new job** (decided 2026-08-20,
   closing the open question below). It is no longer "sequences
   defined" — Ch 1 does that. Its job is **the dictionary**, and the
   zoo is the evidence.
   The three statements it exists to make:
   1. Series and products *are* sequences — partial sums, partial
      products. Not new objects, new notation.
   2. The dictionary runs both ways: **differences** turn any sequence
      into a series (this is Ch 4's telescoping principle, stated here
      as a dictionary rather than saved as a technique); **ratios** do
      the same for products. One object, three notations, and you pick
      the one that makes the structure visible.
   3. Foreshadowed, delivered in Ch 4: **every convergence test in
      Part I is MCT in a costume.**
   The zoo, displayed as ONE kind of object: sequences (Babylonian,
   side-and-diagonal, compounding), series (Zeno, decimal truncations,
   Archimedes' parabola sums, harmonic), products (Viète unresolved,
   Π(1−1/n²)). Closed forms computed as algebra — no limits yet.
2. **The definition** — what "arrives" means (the chapter's
   centerpiece under the decided story): the ε-N game, one estimation
   worked honestly, fundamental limits (1/n → 0, rⁿ → 0), uniqueness,
   convergent ⟹ bounded, divergence. **The scoreboard's three
   specimens live here** (2026-08-20): decimals (confirmed), Oresme's
   harmonic blocks (refuted), Bernoulli's compounding (stuck).
3. **The laws** — limits respect order (squeeze included) and
   arithmetic; payoffs stationed here: geometric series summed,
   Babylonian certified (Pell + square-root law), density (every real
   is a limit of rationals). **Ch 1's two closed-form processes are
   evaluated here** (2026-08-20): Zeno's sum is 1, and
   Π(1 − 1/n²) = ½ — the same objects the reader computed in Ch 1 with
   no way to finish. Double-visit rule, and it is why §1 introduces
   nothing.
4. **Decimals** — nested-interval construction (needs the geometric
   series, hence after 3), greedy algorithm, uniqueness/0.999…,
   periodic ⟺ rational.
5. **Parabola** — Archimedes' quadrature certified; ends with the
   parabola-vs-π contrast (same method, circle resists) as the
   chapter's close.

Dependency chain: examples → definition → laws → geometric series →
decimals → parabola → the π question left open for Ch 4.

## Ledger

- Seed: Babylonian second visit (Pell, known endpoint). Parabola
  cashes a Ch 1/Ch 2 measurement promise (first payoff of the
  trapping definitions after Ch 2). Details TBD.

## Status

- Shape decided 2026-08-18 (`part1-chapters.md`). Purpose discussion
  not yet held.
- 2026-08-20 (exponential-thread rewrite): the "e does not appear in
  Ch 3" ruling REVISED — compounding is posed here in §2 under method
  (b) (bounds only, monotonicity withheld for Ch 4). The chapter now
  leaves two debts, not one. Oresme's harmonic-series attribution
  (~1350, *Questiones super geometriam Euclidis*, dated by Grant) is
  now CONFIRMED — the standing ⚠ on it is cleared; see
  `sources/exponential-and-log.md`.
