# Coverage Ledger — April Part I → New Plan

Where every section of the April outline (2026-outline, chapters 1–5)
lands in the new plan. Compiled 2026-08-18 from the April overviews.
Rule of thumb confirmed by the sweep: nothing is dropped; one section
is currently homeless (flagged), one topic is deliberately reduced.

| April section | New home | Notes |
|---|---|---|
| 1.1 logic/sets/functions | unnumbered opener | notation only |
| 1.1 cardinality theory | Ch 2 final section | with the uncountability ending; general machinery to exercises |
| 1.1 fields/order/inequality tools | Ch 1 | the "world before" |
| 1.2 incompleteness of ℚ | Ch 1 | IVT/EVT beat ruled IN (forward glance) |
| 1.3 completeness, sup mechanics, NIP | Ch 2 | axiom + tools section |
| 1.4 Archimedean, density, roots | Ch 2 | |
| 1.4 decimal expansions | Ch 3 | whole treatment there (nested intervals) |
| 1.4 uncountability | Ch 2 ending | nested-intervals proof, unchanged |
| 1.4 GE exponents/logs | Ch 2 | section vs guided exercise OPEN |
| 1.5 measurement | Ch 1 + Ch 2 | per `axiomatic-measurement.md` split |
| 2.1 sequences & series, closed forms | Ch 1 (sequence as object) + Ch 3 §1 | Ch 3 §1's survival is OPEN |
| 2.2 ε-N convergence | Ch 3 | |
| 2.3 limit laws, density, Babylonian | Ch 3 | |
| 2.4 MCT, e, nested radicals, series criterion | Ch 4 §1 | ~~e enters fresh here~~ — revised 2026-08-20: compounding is POSED in Ch 3 (bounds only), captured and named here, and the x = 1 identity finishes here too. See `exponential-thread.md`. |
| 2.5 decimals | Ch 3 | |
| 2.6 parabola | Ch 3, final section | ends with the π contrast |
| 3.1 subsequence defn, gluing/union thm | Ch 4 splitting section | promotion rule |
| 3.1 Bolzano–Weierstrass | Ch 5 | |
| 3.2 limsup/liminf | Ch 5 | + sharp ratio/root there |
| 3.3 Cauchy criterion | Ch 5 | tail-oscillation derivation preserved |
| 3.4 five faces of completeness | Ch 5 | ~~told as the converses~~ — the framing was DROPPED 2026-08-18; salvage is one remark (the Cauchy form travels to Part III) plus converses as exercises at most. See `purpose-ch5.md`. |
| 4.1 finding monotonicity (alternating, √2 CF, Wallis) | Ch 4 splitting | Wallis convergence only; value deferred to integration (Aug §4.5 ruling) |
| 4.2 comparison, ratio/root, absolute conv., products | Ch 4 comparison | BOUND forms only; sharp forms Ch 5 (double-visit, sign-off pending) |
| 4.3 contraction | Ch 4 telescoping section | survives at FULL strength: the standard proof's geometric-tail estimate IS the difference-series argument (same rates, no Cauchy needed). Full statement vs special-case-for-examples is a presentation choice, OPEN. Downstream clients verified 2026-08-18: CF tails + golden ratio (in-chapter), Newton's method (differentiation ch., real client), MVT remark, ODE remark, Part III — all call the theorem, none the proof |
| 4.4 continued fractions general theory | Ch 4 ★ section | optional |
| 4.5 Archimedes' π (Aug version) | Ch 4 final section | the climax; machinery-free, verified |
| 5.1 rearrangements | Ch 6 | |
| 5.2 iterated limits | Ch 6, folded into the grouping/double-sums section | resolved 2026-08-18: row-vs-column sums is the two-limits swap; general moral stated there; Part II re-proves its own interchange theorems |
| 5.3 double sums, Cauchy product | Ch 6 | |
| 5.4 dominated convergence, (1+x/n)ⁿ = Σxᵏ/k! | Ch 6 | the climax |

Standing observations from the sweep:

- Series are developed across Ch 3 (defined; geometric/telescoping
  summed) → Ch 4 (the real theory: criterion, comparison, absolute,
  alternating, products) → Ch 5 (sharp tests) → Ch 6 (the arithmetic:
  rearrange, group, multiply, pass limits through).
- The inversion rebuilt every workshop proof to run on MCT alone, so
  BW and Cauchy now have almost no clients inside Part I — their
  payoff is Part II. This is the standing Ch 5 question (open joint 4
  in `part1-chapters.md`): does Ch 5 want more worked material of its
  own?
- Geometric series: kept, Ch 3, load-bearing (decimals, parabola).
