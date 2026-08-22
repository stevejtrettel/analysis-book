# Ch 10 Purpose — Integration (the value is forced)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **adjudicated 2026-08-21 (third session)** — the translation
framing, the continuous-only scope, the Cauchy/Riemann boundary, and
the five-section shape are decided; opens in Status. Shorthands are
content labels, NOT titles. Proof-level quarry: the Dec 2025 Ch 8 plan
(per MAP) alongside the April outline; architecture authorities:
`part2-chapters.md` findings 1, 2, 6, 7 and this session's rulings.

## The sentence (draft shorthand; wording is Steve's)

> **Area, translated into the language of functions, becomes
> computable — and the axioms force the value.** Integration is an
> independent, ancient subject: before any calculus exists it settles
> a Part I question, proves Archimedes' axiom, and integrates the
> exponential exactly.

Companion (the exit): the chapter ends on a question, not a theorem —
*why does the slope at the origin appear inside the integral?*

The arc after the construction, plainly: **check the machine against
the geometry it came from (and pay the old debt); compute with it
bare-handed (powers, a two-thousand-year-old series question, the
strange hyperbola); integrate the exponential and run head-first into
calculus without knowing it.**

Relation to Ch 4, settled (fourth session): no gap there — Ch 4's
bounds are unconditional polygon-vs-polygon arithmetic; the axiom's
load was always conceptual (**the polygons pin the number; the axiom
pins the concept**), taken openly with an IOU. This chapter pays it:
the sup-length is certified as a model of the axioms, so number and
concept close together. See the corrected note in
`axiomatic-measurement.md`.

## Goals

### The part-level job

- **The opening question (decided): how do we turn the axioms of area
  into something amenable for working with functions?** The (A)/(L)
  axioms of Ch 1–2 governed regions; Part II's objects are functions;
  area-under-a-graph is the bridge, and (I1)–(I3) are the area axioms
  read through the graph. The axiomatic method's second performance,
  staged as *translation* — same axioms, change of variable. The
  payoff of translating: area was geometry; the integral is area made
  computable, in the language (partitions, sups, limits) the book
  spent nine chapters building.
- Pay the Functions chapter's third debt for the coherent class:
  **continuity suffices for accumulation** (`purpose-ch7.md`'s border,
  verbatim, now enacted) — the first debt paying for the third.
- Demonstrate independence: integration is not applied
  differentiation. The chapter computes real things pre-FTC — the
  p-series classification Part I could not finish, classical
  geometry, the exponential exactly.
- Pay (L4) — the oldest named debt in the book.
- End on the FTC-shadow cliffhanger into The Calculus.

### Scope (decided)

**The integral of continuous functions on closed bounded intervals,
from the get-go.** No integrability predicate is ever defined: no
Darboux class, no Riemann-integrability theory, no measure.
Finitely-many-discontinuities extends trivially by subdivision — one
remark, placed where narratively convenient. The domain-of-the-
integral question is deferred *with its historical episode*: the
chapter's integral is essentially **Cauchy's (1823, continuous
integrands — ⚠ verify)**; "which functions?" is **Riemann's question
(1854)** — the door with a date — and Part III's extending chapter
opens with that problem and moves quickly to Lebesgue/Daniell
(Steve: "the real book layout might skip Darboux integrability
mostly"). Adopted with eyes open: the book may never characterize the
Riemann class (Lebesgue's a.e. criterion at most a Part III remark).
Border-rule note: this is *declining a question*, not outsourcing
needed grammar — audited: nothing in Part II integrates a
discontinuous function.

### Exports (each with its clients)

- The integral on C[a,b] with (I1)–(I3), bounds, trapping → The
  Calculus (FTC and everything after), EF, Π.
- **Absolute/order estimate, explicit export to Part III:**
  $|\int_a^b f|\leq\int_a^b|f|\leq(b-a)\|f\|_\infty$. This is no new
  theorem load: $-|f|\leq f\leq|f|$ plus comparison gives the first
  inequality, and $|f|\leq\|f\|_\infty$ plus the rectangle normalization
  gives the second. Clients: integral distance, the starting Daniell
  functional and the embedding $C[a,b]\to L^1$.
- Heine–Cantor **spent** here (the mesh argument — Part II's one
  genuinely quantitative step; Ch 8's third upgrade cashed).
- Improper integrals (defined at need) → EF's arcsin; ★Gamma.
- Geometry validated: arc length = ∫√(1+f′²) (via Ch 9's MVT), area
  = the §1.5 area; **the two definitions of π agree** → EF's
  arcsin(1) = π/2 stands on this.
- **Archimedes' inequality proved** (Ch 9 convexity) — (L4) paid.
- ∫x^p for all p ≠ −1 by Fermat's partitions; the **integral test**;
  the **p-series classification complete** → cited by Part I's
  boundary-case remarks; Stirling's sum–integral comparison (Π ★).
- ∫aˣ = (a^b − a^c)/L(a), ∫eˣ = e^b − e^c exact → The Calculus
  explains the shape (FTC), EF unmasks the constant.
- Volume by slicing (Cavalieri rigorous).
- NOT exported: signed integrals (∫ with reversed limits) — The
  Calculus's opening bookkeeping, as in April §9.1.

### Skills

Partition estimation (sup/inf work on subintervals); mesh arguments;
geometric-partition computation; sum-vs-integral trapping; improper
limits.

### Exit state

The reader owns *the* integral of continuous functions; has verified
it against the geometry it translated; has computed powers,
p-integrals, and exponentials with no antiderivative in sight; has
closed a Part I question and paid a Ch 1 debt; and holds two
mysteries plus one unexplained pattern, all pointing at the next
chapter.

### Non-goals and borders

- No FTC, no antiderivatives, no substitution (→ The Calculus). The
  chapter boundary IS the claim that integrals are not defined by
  FTC.
- No integrability predicate, no measure (scope, above).
- No monotone-integrability theorem, no discontinuity-set theory
  (→ Part III with Riemann's question).
- Quadrature: methods and the crude bound only; the O(1/n²) rate is
  The Calculus's ★ (decision 6).

## Story

Five sections. Arc: translate → construct → verify the translation →
exploit (powers and series) → exploit (exponentials) and hit the
mystery.

### §1 — From area to the integral

The translation: (A)/(L) axioms recalled; area under a graph as the
bridge object; the dictionary displayed — rectangles ↔ normalization
+ congruence, f ≤ g ↔ region containment, interval-splitting ↔
dissection. Bounds theorem from the axioms alone. The scope declared
plainly, citing the Functions border: we build the integral for the
coherent class. (No pathology up front — the monster waits for the
door.) Record the one-line absolute estimate
$|\int f|\leq\int|f|\leq(b-a)\|f\|_\infty$ here as the sharp form of what
comparison with rectangles already says.

### §2 — The traps close, and the integral exists

**The section's philosophy (Steve, 2026-08-21): we just try to get
better and better estimates of the value using the axioms — and then
realize the two families of estimates become equal.** Double payout:
*theoretical* — the axioms fully determine the value; *computational*
— any computation between the traps converges to the right answer.

- The axioms are estimation tools, each with a job: (I1)+(I2) give
  the one-rectangle trap (bounds theorem); (I3) refines it to many
  rectangles (the trapping theorem is the bounds theorem done locally
  and summed). Open by estimating — squeeze ∫₀¹x² with 2, 4, 10
  rectangles, numbers on the page — then state what the practice
  suggests.
- **The paired trap culminates**: under refinement, lower sums
  increase and upper sums decrease, gap dying — Part I's signature
  pattern ("one-sided certifies; two-sided computes"), now promoted
  from technique to *definition*. Make the callback explicit. (The
  trapping spine's last station: Ch 1 traps → Ch 2 forcing → Ch 3
  decimals/parabola → Ch 4 circle → Ch 8 bisection → here.)
- Payout 1: for continuous f the traps collide (Heine–Cantor supplies
  the mesh — **the ε-δ investment's main dividend**); any assignment
  satisfying the axioms has no freedom — Ch 2's forcing language one
  level up. Then the wish/witness beat: determined is not yet
  existing — define ∫f as the cornered number, refinement lemma,
  axioms verified. **The integral exists.**
- Payout 2, **the license**: any tagged sum sits between L and U, so
  ANY sampling rule converges once the mesh shrinks — you cannot get
  it wrong. Operationalized as the direct-method lemma (Dec plan): to
  compute ∫f it suffices to produce any partitions with U − L → 0.
  §§4–5 spend exactly this license (Fermat samples geometrically; the
  exponential's series is a lower sum), and it retroactively
  certifies the 17th century: **Cavalieri and Fermat were computing
  between the traps all along** — thesis beat, one line.
- Linearity as the license's corollary (Riemann sums are linear;
  needed by §3, not derivable from the axioms alone).
- The subdivision remark (finitely many discontinuities patch by
  additivity) lands here if anywhere.
**The door (decided placement — end of this section, as counterpoint
to the triumph):** Dirichlet's one-line computation — every lower sum
0, every upper sum 1 (density); the gap stays exactly 1 forever. *The
axioms don't trap everything.* Which functions they can pin down is
**Riemann's question, 1854** — named, dated, deferred to Part III.
(Dirichlet's third visit, fulfilling `purpose-ch7.md`'s promised
revisit in remark form: the monster fails every characterization —
that is its job.)
**Door-GE candidate (OPEN — Steve: "could also leave it"):** the
traps close for Thomae — predicate-free (sup L = inf U = 0, by the
finitely-many-small-denominators argument from Ch 8's GE) — dense
discontinuities, yet trapped. With Dirichlet it makes the door
two-sided: something far beyond continuity works, something fails
utterly, and the boundary between them is Part III's question.
(Monotone-traps-close is the one-line fallback glimpse if Thomae is
too much.)

### §3 — Geometry: the round trip

The translation verified against the original: inscribed polygon
lengths are Riemann sums (MVT), so arc length = ∫√(1+f′²); area under
the curve = the §1.5 inner/outer area. **The crown: the tent lemma
pays (L4)** — **the axiom Ch 1 adopted from Archimedes because he
could not prove it either becomes a theorem**: representing length as
an integral makes his postulate provable by Ch 9's chord-above-graph,
with no integral ever evaluated. The translation thesis paying the
book's oldest debt — announce it loudly (working ruling). Reframed
precisely: Part I forced every *admissible* length to π; this section
certifies the candidate — the sup-length is admissible — and Ch 4's
forcing theorem does the rest: **the two definitions of π agree**, by
polygon squeeze. Volume by slicing, Cavalieri rigorous;
surface-of-revolution one example or cut (OPEN, standing cut list).

### §4 — The powers, the series, and the exception

The labor section does real work:

- Powers by uniform partitions (sum formulas), then **Fermat's
  geometric partitions** — the prelude's method executed: ∫x^p on
  [0,1] and [1,A] for all p ≠ −1, no antiderivatives. ⚠ negative-p
  write-out queued.
- **The integral test** — trapping with integer partitions — and with
  Fermat's values, **the p-series classification closes, including
  Part I's open gap 1 < p < 2.** Integration alone answers what all
  of Part I's series machinery could not: independence, enacted.
- **The exception — and the law of logs, proved (decided
  2026-08-21, Steve)**: Fermat's method fails at exactly p = −1 — and
  the failure is the discovery. On the strip [rᵏ, rᵏ⁺¹] the lower
  contribution to ∫dx/x is (r−1)/r, independent of k: geometric
  partition means *equal-area strips*. The scaling argument (the
  partition of [A, AB] by A·rᵏ has identical sums to [1, B]'s) then
  proves, by Riemann sums alone:
  **H(xy) = H(x) + H(y).**
  Saint-Vincent's theorem, proved by Fermat's machinery at the exact
  point it degenerates: an unnamed logarithm, witnessed by an area —
  Napier's wish-interface satisfied, the function unnamed. First
  mystery, now a proved theorem. ⚠ write out the scaling-partition
  argument; Saint-Vincent sourcing pending.

### §5 — The exponential, and the mystery

∫aˣ by geometric series: the law of exponents collapses the sum; the
limit produces a constant the reader *recognizes* — **L(a), the slope
from Ch 9.** So ∫aˣ = (a^b − a^c)/L(a), and **∫eˣ = e^b − e^c
exactly** (L(e) = 1, Ch 9). April's endpoint observation restored at
full strength, and sharpened into the cliffhanger:

> Why does the slope at the origin appear inside the integral?

The derivative's constant dividing the Riemann sum's limit; the
integral of eˣ knowing the endpoint values exactly — FTC's shadow on
the page, unexplained. Second mystery joined to the first (both,
secretly, the logarithm). Chapter ends here; The Calculus opens with
the answer. Quadrature GE (trapezoid/midpoint + the crude bound; for
monotone continuous f the telescoping estimate) attached here or to
§4's exercises (OPEN).

### Prelude brief (four beats)

Practice — two millennia of computed areas, and the reader has
already done ancient integration (the parabola, certified in Ch 3);
Cavalieri's slices; Fermat's partitions (now *used*, not just
narrated). Deferred question — what IS area under a curve, and which
totals exist? Reckoning — the translation: the area axioms rewritten
for functions. Certification and door — the ancients' values become
forced; Riemann's question named with its date. April's
`08-integration/00-history.md` + the Dec plan prelude are the raw
material.

## Writing rule (decided 2026-08-21, fourth session): the brisk rerun

The construction is a performance the reader has already seen — the
reprise is the *subject*, so the familiarity is the feature, not
padding. **§§1–2 are written brisk: cite Part I's moves, never
re-teach them; let them be the shortest sections in the chapter, and
spend the pages on §§3–5, which are genuinely new.** The growth to
say out loud: Part I closed traps one shape at a time, each needing
its own trick (geometric series for the parabola, the ratio trick for
the circle); here one theorem closes every trap at once. Litmus per
section: something new must be learned in each (§1 the translation;
§2 the all-at-once closure and the license; §§3–5 all new) — only
the *form* rhymes.

## Section plan (working, 2026-08-21 — inventory with provenance)

[Apr] = April outline §8.x · [Dec] = Dec 2025 Ch 8 plan · [new] =
this campaign.

1. **From area to the integral**: (A)/(L) axioms recalled; region
   under a graph; the dictionary table [new]; integral = assignment
   on continuous functions satisfying (I1)–(I3); signed-values remark
   [new]; bounds theorem [Apr/Dec]; scope declaration. *Deliberately
   absent: the integral function F(x)* — the variable endpoint is The
   Calculus's opening move; this chapter never lets the endpoint move
   [new border ruling].
2. **The traps close, and the integral exists**: as the Story §2 —
   estimation opening; partitions/mesh (inf/sup attained, EVT);
   refinement lemma; trapping theorem; forced-value theorem
   (Heine–Cantor); definition + verification; **Riemann sums converge
   + linearity** [new — resolves the scope ledger's
   construction-or-consequence question: consequence]; direct-method
   lemma [Dec]; subdivision remark; **the door** (Dirichlet L = 0,
   U = 1; Riemann 1854; Part III); door-GE Thomae [candidate, OPEN].
3. **Geometry: the round trip**: area theorem (region area = ∫f)
   [Apr]; area between curves (linearity) [Apr]; arc length = ∫√(1+f′²)
   via MVT-tagged sums, sup = limit by refinement-monotonicity
   [Apr/Dec]. **The (L4) payment, reframed (2026-08-21): the
   candidate is admissible.** Part I forced every ADMISSIBLE length
   to π but could not certify the sup-length admissible — that was
   the debt. Certified here via **the tent lemma** (a C¹ convex arc
   is no longer than its endpoint-tangent tent): represent length as
   ∫√(1+f′²); √(1+t²) is convex, so its chord over [f′(a), f′(b)]
   lies above it (Ch 9); integrating the chord gives a linear
   expression in the fixed total rise ∫f′ — exactly the tent's
   length. **The integral is used as a representation, never
   evaluated** — the translation thesis pays the book's oldest debt.
   [Completion of the Dec plan's "step 4 TBD" — new; ⚠ write out.]
   Then **two-π agreement by squeeze**: pₙ ≤ sup-length (free) ≤ Pₙ
   (tent lemma + (L2) over subdivisions); Ch 4's limits close it.
   The GENERAL Archimedes inequality (f ≤ g ⟹ shorter) has no
   remaining Part II client — GE/remark; the Dec 7-step GE rebuilt
   around the tent route. Separate identification remark for EF:
   sup-length(semicircle) = improper ∫₋₁¹ dx/√(1−x²), by δ→0 +
   additivity, endpoint arcs killed by near-vertical tents (the
   |√a − √b| ≤ √|a−b| trick) — ⚠ endpoint write-out. Straight-
   shortest free from the definition. Volume by slicing, Cavalieri,
   pyramid/cone/sphere [Dec]; one revolution example; surface area →
   exercises [OPEN, lean cut].
4. **The powers, the series, and the exception**: ∫₀¹xⁿ uniform
   [Apr/Dec]; **Fermat's geometric partitions**, real p > 0 and
   ∫₁^A x^(−p) [new ⚠]; improper on [1,∞) defined at need;
   ∫₁^∞ x^(−p) for p > 1; divergence p ≤ 1 via the test against the
   harmonic [new]; **the integral test** (unit partitions = trapping)
   [new]; **p-series closed** [new]; **the law of logs — DECIDED
   (Steve, 2026-08-21)**: at p = −1 the geometric partition gives
   equal-area strips — each contributes (r−1)/r — and the scaling
   argument (the partition of [A, AB] by A·rᵏ has identical sums to
   [1, B]'s) proves **H(xy) = H(x) + H(y) by Riemann sums alone**:
   Saint-Vincent's theorem via Fermat's machinery at the exact point
   it degenerates; Napier's wish-interface witnessed by an area, the
   function unnamed. ⚠ write out the scaling-partition argument.
5. **The exponential, and the mystery**: ∫aˣ uniform partition →
   geometric series → (a^b − a^c)/L(a) via Ch 9's two-sided limit
   [Apr + finding 2] — **the old dyadic-reconciliation ⚠ is MOOT**
   (Ch 9's convexity argument gives the full limit); U = a^mesh·L
   trick [Apr]; ∫eˣ = e^b − e^c exact; the two mysteries side by
   side; the cliffhanger question; quadrature GE here or §4 [OPEN].

Exercise quarry [Dec, adapted]: x³/x⁴ forced values; cf and f+g via
Riemann sums; arc length of x^{3/2}; the leaning cylinder; cone with
arbitrary base; rotate √x; ∫₁² dx/x by Riemann sums (now connects to
§4's H); candidate mini-thread [new]: ∫₀¹ dx/(1+x²) exists and its
value is *nameless* — the chapter accumulates nameless areas (the
hyperbola's, this one) as Ch 1 accumulated nameless numbers; named in
EF and Π.

## Ledger

### Imports

Ch 8 (Heine–Cantor, continuity of aˣ, EVT); Ch 9 (MVT for arc
length, convexity for Archimedes' inequality, L(a) exists,
L(e) = 1); Part I (the measurement axioms and §1.5 definitions, sup
machinery, geometric series, law of exponents, density, Ch 4's
polygon π, the p ≤ 1 and p ≥ 2 series verdicts).

### Debts cashed

- **(L4)** — Ch 1's named debt, the oldest in the book, paid in §3.
- The measurement-reprise promise (`axiomatic-measurement.md`
  downstream consequences; Jordan ↔ Darboux parallel now realized as
  the translation dictionary instead).
- Part I's p-series gap (1 < p < 2).
- The two-π agreement (EF's foundation).
- Functions debt 3, for the coherent class.
- Dirichlet's promised third visit (remark form).

### Debts opened (→ where paid)

- The two mysteries (L(a) in the integral; the hyperbola's additive
  area) → The Calculus explains the pattern, EF unmasks the constant.
- The endpoint observation → FTC, next chapter's opening.
- Quadrature rate → The Calculus ★.
- **Riemann's question** → Part III's extending chapter, which opens
  with the problem and moves quickly to Lebesgue.
- Improper-integral machinery → EF (arcsin), ★Gamma.

### Deliberate revisits

The trapping spine (culmination); Archimedes (parabola Ch 3, circle
Ch 4, his axiom proved here — third major appearance); Fermat
(prelude → practice); L(a) (second sighting); Dirichlet (third).
Heroes: Archimedes, Cavalieri, Fermat, Saint-Vincent — the
pre-calculus tradition; no Euler here, correctly.

## Dispositions

- GEs: the Archimedes-inequality guided sequence (Dec plan's 7-step);
  quadrature (methods + crude bound); door-GE Thomae (candidate,
  OPEN).
- Cut/deferred: the Darboux class and integrability predicate;
  monotone-integrability as a theorem; Riemann-class theory;
  Lebesgue's criterion (all → Part III with Riemann's question);
  surface area beyond one example (OPEN); signed notation (→ The
  Calculus); the n-ball GE stays parked (Π ★ or Part III).
- Exercises: quarry the Dec plan (it has full proofs and the
  exercise sets April left TBD).

## Historical research brief

1. Cauchy, *Résumé* 1823 — the continuous-integrand integral as
   limit of sums; confirm the chapter's integral is historically his.
2. Riemann, Habilitation 1854 — the which-functions question as its
   actual content; his integrable-with-dense-discontinuities example
   (raw material for the Part III prelude more than for this
   chapter).
3. Saint-Vincent 1647 — the standing campaign (finding 7).
4. Fermat's quadrature of powers — including the negative exponents
   and the p = −1 failure; how he treated it. ⚠
5. Cavalieri — indivisibles, the principle's original form.
6. Archimedes, *On the Sphere and Cylinder* — the postulates behind
   (L3)/(L4) (partially covered by Part I's trail; verify at source).
7. Exhaustion/Eudoxus for the prelude (Part I sources partially
   cover).

## Status

- 2026-08-21 (third session), decided: the translation opening; the
  continuous-only scope with no integrability predicate; the
  Cauchy/Riemann historical boundary and the bold position (skip
  Darboux-integrability theory; Part III opens with the problem and
  moves quickly to Lebesgue); Dirichlet once, at the door, end of
  §2; five sections; (L4) announced loudly; the L(a)/FTC-shadow
  cliffhanger ending.
- OPEN (Steve): the door-GE — Thomae in, monotone fallback, or no
  glimpse.
- OPEN: §2 as one section (forced + exists) vs two; quadrature GE
  placement (§4 vs §5); surface-of-revolution one example vs cut;
  prelude length.
- OPEN (Steve): the example the chapter is remembered by —
  candidates: Archimedes' axiom become a theorem; the p-series closed
  pre-calculus; ∫eˣ exact by Riemann sums. Title.
- ⚠ VERIFY: Cauchy 1823; Riemann 1854; Fermat negative-p write-out
  (standing); Saint-Vincent (standing); the L(e) = 1 bound write-out
  (shared with Ch 9); the (L4)-payment write-out (arc-length
  integral + convexity — the argument the Dec plan sketches).
