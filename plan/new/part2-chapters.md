# Part II Chapter Structure — Working Decisions

Status: capture of the 2026-08-21 architecture discussion. **The chapter
shape is adjudicated; section plans are sketches, not approved lists.**
Operating premise (standing, from `part2-scope-and-daniell.md`): the
Daniell integral, measure, and L¹ move to Part III. This document
answers that ledger's architecture questions 2 and 3 and partially 5;
`purpose-ch7.md` still governs the Functions chapter. **Chapter names
below ("The Calculus", "Elementary Functions", etc.) are internal
shorthands for content — NOT title candidates. Titles are Steve's, in
his voice, at drafting time.**

## The decisions of 2026-08-21

1. **Part II is seven chapters:** Functions / Continuity /
   Differentiation / Integration / The Calculus / Elementary Functions /
   Pi. (Under Part I's six-chapter scheme these are Ch 7–13.)
2. **No merges. Continuity, Differentiation, and Integration each stand
   alone** (Steve: keep the three topics separate). An
   Integration-plus-FTC merge was considered and **rejected**, for a
   structural reason worth recording: the book's claim that integrals
   are NOT defined by the FTC — that integration is an independent,
   ancient subject — is performed by the chapter boundary itself. The
   Integration chapter ends on a mystery (see below) and the next
   chapter opens with FTC as the answer: the Part I cliffhanger rhythm
   (Ch 1→2, Ch 3→4) repeated. Merging would delete one of the book's
   signature beats. A Continuity+Differentiation merge was also
   considered and rejected; audit showed nothing depended on it.
3. **The extraction.** The four homeless bodies of material — power
   series, trigonometry, functional equations, π and its identities —
   are collected OUT of the property chapters into the back of the
   part. The property chapters are the April chapters' residues after
   extraction (see the coverage table): lean, classical, honest.
4. **The Calculus chapter adopted, with this identity** (Steve endorsed
   the formulation): **the operating layer — where the three structural
   theories become rules for computing with functions.** "The calculus"
   as the set of techniques developed for working with functions. FTC
   is the deepest such rule, **not the membership criterion** —
   continuity of power series (domination) and term-by-term
   differentiation (Tannery) are pre-FTC members. Power series are
   collected here. This resolves the standing distributed-vs-collected
   question: **collected, as calculus** — the trilogy is not parked
   after FTC, it is the demonstration of what the layer buys.
   ⚠ The period term "the calculus" meant exactly a system of
   computational rules; the chapter concept and the historical name
   coincide (naming principle, thesis consequence 4). Source-check the
   term's history before using this in print.
   **The license is explicitly local, not a false general promise:**
   immediately after term-by-term differentiation, a Part II-native
   rational example shows that functions whose values become uniformly
   tiny can retain a fixed slope. The chapter names the failure and
   hands the general relation between function limits and derivatives
   to Part III.
5. **Integral test: concept and proof in Integration; applications in
   The Calculus and Pi** (Steve's proposal, audited, adopted). The
   proof is the trapping theorem run with integer partitions — no FTC.
   See audit finding 6 for the p-series consequence.
6. **Quadrature split by rate** (Steve's push, adopted): the methods
   and the crude error bound (U−L; for monotone f, error ≤
   (b−a)|f(b)−f(a)|/n) are Integration-native; the O(1/n²) analysis of
   midpoint/trapezoid needs the Taylor integral remainder and is a
   Calculus ★ at most. "Integration knows where; Calculus knows how
   fast" — Part I's rate language one level up.
7. **The Pi chapter's components** (Steve): series that compute π;
   the other π processes that have come up in the book; a proof of
   irrationality. Basel: Steve is willing to try to fit it;
   recommendation on record (finding 8) is that it fits as the climax
   at roughly one section's marginal cost.
8. **Calculus internal order: NOT decided.** Working lean (Steve):
   FTC-first — open by answering Integration's cliffhanger, then
   techniques, then the power-series block. The alternative on file:
   operations-progression (sum is continuous → sum differentiates
   term-by-term → FTC arrives when integration's turn comes → PS-III
   and techniques), which makes the trilogy the spine at the cost of
   delaying the cliffhanger's answer. A story call, not a dependency
   call. Do not silently choose.

## The Part II narrative (five acts)

1. **Functions** — the diagnosis; the uncountable table; three debts
   (`purpose-ch7.md`, unchanged and restored — see Consequences).
2. **Continuity / Differentiation / Integration** — the three debts
   paid, each as a characterization, each chapter sovereign.
3. **The Calculus** — the additional layer: the theories joined into a
   computational engine.
4. **Elementary Functions** — the reunion: the named functions
   reconstructed, characterized, and explained; the functional-equation
   reversal.
5. **Pi** — the celebration; the ancient program completed and
   exceeded; the part's bookend.

**The twin symmetry** (noted for the thesis, not yet load-bearing):
each part now contains practice/objects → language/theory → a
*licenses* chapter where computing with infinite objects becomes legal.
Part I Ch 6 and The Calculus are twins one level apart — arithmetic of
infinite processes for numbers, calculus of them for functions — with
Euler presiding over the first and Newton/Leibniz over the second, and
in both the book certifies the heroes' techniques and corrects nothing.

**The differentiation thread carried forward:** Part II first makes
term-by-term differentiation feel miraculous for power series, then
immediately refuses to universalize it. On [−1,1],
$f_n(x)=x/(1+nx^2)$ lies within $1/(2\sqrt n)$ of zero everywhere, yet
$f_n'(0)=1$ for every $n$. Part II states the problem without acquiring
function-space grammar; Part III discovers how badly differentiation
behaves for familiar notions of closeness and ultimately constructs a
larger setting in which differentiation and limits commute.

## The decided shape

- **Functions** — as `purpose-ch7.md` (governing story approved
  2026-08-20). Nothing changed by this session except restoration of
  its three-debts promise (see Consequences).
- **Continuity** — REVISED in the second session of 2026-08-21 (see
  the Addendum): **sequential definition primary** ("respects
  arrival"), ε-δ as the **tolerance-transfer** characterization, and
  uniform continuity kept in-chapter under the tables-vs-points border
  rule. Five lean sections:
  1. *Respects arrival* — sequential definition, the library falling
     out of limit laws, Dirichlet.
  2. *Tolerance transfer* — the quantitative question (output within
     ε: how accurate must the input be?), ε-δ proved equivalent
     (⚠ choice footnote), δ varies with the point, uniform continuity
     with trig-free non-examples, Lipschitz remark; extension theorem
     as the GE.
  3. *What the interval forces* — IVT (Bolzano and Ch 1's
     forward-glance cashed), EVT, image theorem, and **Heine–Cantor
     as the third upgrade** — values, extrema, tolerance: one
     phenomenon; forward pointer named (the third theorem is the one
     Integration runs on).
  4. *Monotone functions and inverses* — closing on the touchstone:
     **aˣ is continuous** (monotone + dense range, density from
     a^(1/n) → 1).
  5. *Monsters* — Takagi built from the sawtooth (its continuity is
     Tannery-sequential — the chapter's own definition plus Part I's
     own theorem), Weierstrass 1872 mentioned; coherence does not
     contain the tangent; cliffhanger into Differentiation.
  Power-series continuity is NOT here (The Calculus); the correlation
  question — limits of correlated tables — is posed, licensed for
  power series only, and deferred (Addendum). Core/optional
  dispositions in the Addendum. **Purpose file: `purpose-ch8.md`**
  (2026-08-21).
- **Differentiation** — REVISED in the third session of 2026-08-21;
  full design in **`purpose-ch9.md`**. Five sections: §1 historical
  opening (four ancient tangent conceptions — Apollonius, the spiral,
  Fermat's adequality, Descartes' double contact) leading to the
  definition, then the rules with the product rule's history told at
  the theorem (Leibniz's dx·dy displayed and killed legally); §2 MVT
  (workhorse constancy named; Lipschitz = Ch 8's exchange rate
  cashed); §3 convexity promoted + **the touchstone: (aˣ)′ = L(a)·aˣ
  in full, both cases in main text** — (eˣ)′ = eˣ exactly (Part I
  series bound) vs existence-without-name for general a (AM-GM
  convexity + the functional equation); §4 finite Taylor
  (generalized-Rolle route; certified error; the eˣ series re-derived
  from derivative data — legal now; ★ binomial agreement;
  reconstruction posed and deferred); §5 **Newton's method, main-text
  terminal finale — the Babylonian reveal** (fifth visit; quadratic
  convergence explains Ch 1's doubling digits). L'Hôpital + Cauchy
  MVT to exercises; smooth-oscillator specimens deferred to a
  "returns when sin exists" packet (the sawtooth policy's known
  limit, hit here first).
- **Integration** — REVISED in the third session of 2026-08-21; full
  design in **`purpose-ch10.md`**. Opening question (decided): *how do
  we turn the axioms of area into something amenable for working with
  functions?* — the reprise staged as translation, with §3 as the
  round-trip verification. **Scope (decided): continuous functions
  only, from the get-go; no integrability predicate ever defined** —
  the chapter's integral is essentially Cauchy's (1823 ⚠); "which
  functions?" is Riemann's question (1854), the door with a date,
  deferred to Part III's extending chapter, which opens with the
  problem and moves quickly to Lebesgue (adopted with eyes open: the
  book may never characterize the Riemann class). Dirichlet appears
  once, at the door (end of the construction section): L = 0, U = 1,
  the gap never closes — the axioms don't trap everything. Door-GE
  candidate (OPEN): the traps close for Thomae, predicate-free.
  Five sections: translation/axioms → traps close + integral exists
  (+ the door; record explicitly the comparison/rectangle corollary
  $|\int f|\leq\int|f|\leq(b-a)\|f\|_\infty$, exported to Part III) →
  geometry (Archimedes' axiom becomes a theorem —
  **(L4) paid**; two-π agreement) → powers/integral test/p-series
  closed/the p = −1 exception → the exponential and the mystery
  (∫eˣ exact; L(a) recognized from Ch 9; cliffhanger: *why does the
  slope at the origin appear inside the integral?*).
- **The Calculus** — FTC I/II with bridge lemmas (MVT for integrals,
  average value); the reversed rules (substitution, parts); Taylor's
  theorem with integral remainder (the layer's poster child — a
  differentiation theorem re-proved by integration, the mystery c
  demystified); antiderivative existence and integral-defined
  functions with ONE specimen (erf or Si, not April's catalogue); the
  power-series calculus — interior continuity via domination,
  term-by-term differentiation, coefficient uniqueness, term-by-term
  integration, Abel at the boundary; immediately after the
  differentiation success, $x/(1+nx^2)$ gives the counterexample and
  named Part III door (values can collapse while slopes do not); smooth
  ≠ analytic (e^(−1/x²)) as
  the closer showing the licensed class is special. Produces the
  anonymous series specimens x − x²/2 + x³/3 − ⋯ and
  x − x³/3 + x⁵/5 − ⋯ (Mercator's and Madhava's, deliberately
  unnamed — EF names the first, Pi cashes the second). Applies the
  integral test with evaluation power. ★ candidates: quadrature rate
  analysis (decision 6); Tauber.
  **What deliberately does not collect here despite qualifying**: ODE
  solving beyond quadrature (EF's drama is "a law plus data determines
  a function"; The Calculus hands over tools and does not preempt);
  the techniques catalogue (exercises); differentiation under the
  integral sign (a named door at most).
- **Elementary Functions** — the reunion, identity: **what determines
  a function** (answers ledger question 4). The E′ = E reckoning
  opening on the observation The Calculus cannot help making
  (term-by-term, the series is its own derivative); uniqueness by MVT;
  Euler's §122 ceremony (k = 1 selects e — `exponential-thread.md`);
  Napier's debt paid (dy/dt = −ky); Briggs's constant and
  Saint-Vincent's hyperbola area revealed as log (closing
  Integration's two mysteries); aˣ = exp(x log a) vindication. The
  functional-equation reversal (pass 2): the classification with the
  choice-free dense-graph branch; Cauchy 1821 → Darboux 1875 → Hamel
  1905. log's witnesses and agreement theorems (exp⁻¹, ∫dt/t with the
  "Integration Discovers the Logarithm" GE, Briggs). sin and cos: the
  arc-length wish, the arcsin-integral witness (needs Integration's
  improper integrals and arcsin(1) = π/2 from Integration's geometry),
  energy uniqueness, addition formulas as the same law (one-parameter
  group of rotations — trig walks into the reversal, as planned),
  periodicity, Taylor series. ★ candidate: Gamma / Bohr–Mollerup — the
  purest regularity-turns-law-into-uniqueness story, bookending the
  Functions chapter's interpolation set-piece; needs the length and
  prerequisite audit before adoption (improper integrals ✓ available;
  convexity ✓ promoted).
- **Pi** — the celebration; a progression, not a tour (rate is the
  through-line). Working arc:
  1. the circle's constants agree — area = perimeter constant via
     calculus (April §9.4's Archimedes theorem moves here), on top of
     Integration's polygon-agreement theorem;
  2. series — arctan as integral, Gregory–Leibniz with Abel at the
     boundary, **Madhava placed at last** (the thesis's best single
     witness: Archimedes' project continued by entirely different
     means), Machin as the rate payoff; Newton's-method-on-cos as
     opener or ★ (the "computationally circular" foil);
  3. the processes that have come up — **Wallis's value at last**
     (convergence was Part I §4.1; the deferred value pays here via
     the reduction formula), Viète cited as closed in Part I, Stirling
     ★ riding on Wallis;
  4. **Basel as the climax** (recommendation on record, Steve open to
     it): Daners's proof runs on the same cosine-power integrals the
     chapter computes for Wallis — marginal cost ≈ one section — and
     it cashes Part I Ch 6's planted mystery (ζ(2) two ways, no trace
     of π, the third expression missing). Source in
     `part2-scope-and-daniell.md` (Daners, Math. Mag. 85 (2012));
  5. **π is irrational** — the bookend. Niven's argument, audited
     legal: the polynomial xⁿ(a−bx)ⁿ/n! and integer-value lemma,
     sin's ODE and values at 0 and π (EF), one explicit antiderivative
     checked by FTC II, n! beats cⁿ (Part I). Lambert 1761 first, by
     continued fractions — the remark Part I's ★ CF section makes
     available, exactly parallel to Euler's CF proof for e. Part I
     opened with √2 (crisis), Part I closed with e (triumph), Part II
     closes with π: three constants, three eras, each proof in its own
     era's tools.
  Terminal and starrable throughout — the semester's trimmable tail.
  **Purpose file: `purpose-ch13.md`** (2026-08-21) — refines this arc
  into four acts (one number → the hunt → the escape → the number
  itself) with castings, cuts, and the verification queue; the arc
  there supersedes the sketch above once adjudicated.

## Coverage: April Part II → new plan

| April section | New home | Notes |
|---|---|---|
| 6.1 definition, sequential, Dirichlet, function limits | Continuity | Dirichlet may debut in Functions (open there) |
| 6.2 algebra, composition, gluing | Continuity | candidate fold into 6.1 |
| 6.3 radius material | Part I Ch 5 | already decided (Cauchy–Hadamard) |
| 6.3 continuity of power series, zigzag, boundary, Abel, summation by parts | The Calculus | Continuity names the debt instead |
| 6.4 IVT, EVT, image, inverses | Continuity | |
| 6.5 uniform continuity, extension | Continuity | sole Part II client is Integration |
| 7.1 rules | Differentiation | |
| 7.2 MVT, Darboux, Lipschitz, L'Hôpital | Differentiation | convexity → main text; L'Hôpital → exercise/cut |
| 7.3 term-by-term differentiation | The Calculus | |
| 7.3 finite Taylor, Lagrange remainder | Differentiation | generalized-Rolle route, no series needed |
| 7.3 Takagi GE | Continuity or Differentiation | placement OPEN (see finding 5) |
| 7.4 exp/log | Elementary Functions | much already dissolved: e-irrationality and x=1 identity → Part I; aˣ-differentiable lemma evaporates (D4); e^(−1/x²) → The Calculus; CF-for-e → Part I remark |
| 7.5 Newton's method | Differentiation ★ terminal | rich examples arrive as EF/Pi exercises (April anticipated this) |
| 8.1 axioms, trapping, improper | Integration | |
| 8.2 Darboux | Integration | |
| 8.3 geometry incl. circle, Archimedes' inequality, (L4) | Integration | **pinned** (finding 1), not a choice |
| 8.4 direct computation | Integration | upgraded: Fermat p-series, integral test, Briggs constant |
| 9.1 FTC | The Calculus | |
| 9.2 techniques, integral remainder | The Calculus | Power Series III also here; log-GE → EF |
| 9.3 ODEs | dismembered | quadrature + one integral-defined specimen → The Calculus; elementary uniqueness → EF; cookbook → exercises/cut |
| 9.4 trig | Elementary Functions | minus area=perimeter theorem → Pi; Weierstrass product stays deferred (Part III) |
| 9.5 calculating π | Pi | Basel placeholder resolved by Daners |

Homeless: the n-ball GE (MAP's known orphan; its target Ch 10 left
Part II) — park as Pi ★ or Part III.

Cut outright (all previously ledger-flagged; extraction just makes
them executable): L'Hôpital beyond an exercise; discontinuity taxonomy
beyond its GE; the §9.3 cookbook; the special-functions catalogue
beyond one specimen; surface area of revolution beyond one example;
Weierstrass sine product (Part III).

## Audit findings (2026-08-21)

1. **The circle is pinned to Integration by dependency, not taste.**
   EF's trig opens with arcsin(1) = π/2, proved by circle arc length
   (improper integral) + Archimedes' inequality + squeeze against
   Part I's polygons. So the agreement theorem must precede EF, i.e.
   live in Integration — where it also pays the (L4) debt exactly as
   `axiomatic-measurement.md` promised ("arc-length integral +
   convexity"; the doc says "Ch 9" — update reference at rewrite
   time). Chain: Differentiation (convexity) → Integration (L4 +
   agreement) → EF (arcsin) → Pi.
2. **April §8.4's exponential integral has a timing bug that becomes a
   feature.** ∫aˣ by geometric series needs lim (a^h − 1)/h —
   Euler's k, which doesn't exist until EF. But that limit is
   **Briggs's constant L(a)** from Part I Ch 4 (D5). The direct
   integral computes to (a^b − a^c)/L(a) with L(a) a named mystery;
   FTC explains the endpoint pattern, EF reveals L(a) = log a. A new
   argument for resolving D5 as *yes*. ~~⚠ dyadic vs full-sequence
   reconciliation~~ — MOOT (third session): Ch 9's convexity argument
   proves the genuine two-sided limit (aʰ−1)/h → L(a); Briggs's
   dyadic form is then one special sequence, nothing to reconcile.
   **Upgrade (2026-08-21, third session): the base-e case is exact,
   in Integration.** Part I Ch 6's climax gives e^h = Σhᵏ/k! at every
   real h, whence h ≤ e^h − 1 ≤ h + e·h² and L(e) = 1 by Part I
   estimates alone (⚠ write out). So Integration proves
   **∫ eˣ = e^b − e^c by Riemann sums** — April's "the integral knows
   the endpoint values" cliffhanger restored at full strength,
   pre-FTC, and the derivative concept appears nowhere (only Ch 2's
   law of exponents, Ch 8's continuity of aˣ, and Briggs's limit).
   ~~Candidate beat: "Integration selects the natural base"~~ —
   **SUPERSEDED (third session)** by the Ch 9 decision to prove
   (aˣ)′ = L(a)·aˣ and (eˣ)′ = eˣ in Differentiation: the base is
   selected there, by the derivative, and L(e) = 1 arrives in Ch 10
   already known. The surviving — stronger — Ch 10 beat: **the slope
   constant reappears as the integral's divisor**, so the cliffhanger
   is no longer "what is L(a)?" but *why does the slope at the origin
   appear inside the integral?* — FTC's shadow on the page.
   (Historical resonance, light touch, sourcing queued: the
   exponential met integration before differentiation — Saint-Vincent
   1647 precedes the calculus.)
3. **The trig vacuum, and the fix.** April's Ch 6–7 lean on sin(1/x),
   x sin(1/x), |cos| ≤ 1 with "students may use calculus" — worse
   under the new plan (trig arrives in EF). Systematic substitution:
   the sawtooth s(x) = dist(x, ℤ) — Takagi's own building block,
   Part-I-legal — does every job (s(1/x): no limit at 0; x·s(1/x):
   squeeze; non-uniform-continuity examples). One deliberate policy,
   applied in a pass.
4. **Convexity must be promoted from exercises to main text**
   (Differentiation, with MVT). Four clients: Archimedes' inequality
   (Integration), Daners's sin x ≥ 2x/π (Pi), Stirling's concavity
   comparison (Pi ★), Bohr–Mollerup (EF ★ if adopted). MAP already
   flags April's exercises-only treatment as a weak point.
5. **Takagi is Part-I-legal where it matters.** Its continuity is an
   interchange of limit and sum under a uniform dominating series —
   Tannery/dominated convergence from Part I Ch 6, no
   uniform-convergence theory. So the monster can sit in Continuity's
   ending or Differentiation's opening without borrowing Part III
   machinery. Placement OPEN. ⚠ Write the Tannery argument out before
   committing.
6. **The p-series gap closes inside Integration.** As planned, Part I
   never settles Σ1/n^p for 1 < p < 2 (blocks give p ≤ 1;
   telescoping-comparison gives p ≥ 2; ratio/root inconclusive). Three
   candidate fixes were on the table — condensation in Part I's
   workshop, integral test in The Calculus, integral test in
   Integration — and the third dominates: the test's proof is the
   trapping theorem with integer partitions, and **Fermat's
   geometric-partition method (already in the chapter's history
   prelude) evaluates ∫₁^A x^(−p) directly, no FTC** — so integration
   alone, as an independent subject, answers a question all of Part
   I's series machinery could not. The strongest possible enactment of
   the chapter's thesis. Working resolution; ⚠ write out Fermat for
   negative exponents on [1, A] and the A → ∞ step.
7. **The one power Fermat cannot do is the logarithm.** p = −1 is
   exactly where the geometric-partition evaluation fails — and
   (decided 2026-08-21, fourth session) **the failure is upgraded to
   a theorem**: the geometric partition gives equal-area strips, and
   a scaling argument proves H(xy) = H(x) + H(y) by Riemann sums
   alone — Saint-Vincent's (1647) additive property, proved
   pre-FTC. Integration's second mystery (with finding 2's L(a));
   the two are the same unnamed function. ⚠ scaling-partition
   write-out queued; Saint-Vincent is currently one unsourced
   timeline line in `sources/exponential-and-log.md` — needs a real
   source pass.
8. **Basel is cheaper than it looks.** Daners's Aₙ = ∫cos²ⁿ are the
   Wallis integrals the Pi chapter computes anyway; shared reduction
   formula; marginal cost ≈ one section (telescoping identity — Part I
   technique — plus the concavity bound). And it cashes Part I Ch 6's
   planted ζ(2) mystery. Recommendation: Basel is the Pi chapter's
   climax, not a stretch goal.

## Addendum (2026-08-21, second session) — Continuity and the Part II/III border

### The border rule (Steve's, named for reuse)

> **Part II owns the grammar of a single function — functions as
> tables. Part III begins when a function becomes a *point*: when
> distance between functions, or a mode of convergence as an object,
> enters the grammar.**

Verdicts, for future border disputes:

- Daniell / L¹ → Part III (about the *space* of integrable functions —
  the escape that motivated the rule).
- Uniform convergence → Part III (the sup-distance in disguise;
  already there).
- **Uniform continuity → Part II** (one function, one domain — fails
  the escape test; this reverses the earlier lean toward parking it in
  Integration or deferring theory to Part III).
- Extension theorem → Part II GE (extends ONE uniformly continuous
  function; Part III *applies* it to dense subspaces as a revisit).
- Equicontinuity → Part III (a family).
- **Pointwise limits of function sequences → legal Part II material**
  (Steve, this session): a stack of tables, columns converging by
  Part I grammar; no function-space concept involved. Part II's use is
  deliberately minimal — **pose** the correlation question (if the
  tables are correlated, is the limit? zigzag/xⁿ: not automatically),
  **license** one class (power series, dominated convergence run
  column-wise), **defer** the general answer as a named door: the
  hypothesis rescuing Cauchy's 1821 theorem requires measuring
  distance between functions — Part III's opening question. Takagi
  doubles as the first correlation-loss specimen (partial sums
  differentiable a.e., limit nowhere).

### Continuity chapter decisions

- **A1 — Sequential definition primary** (resolving a standing
  flip-flop; adopted together with the tolerance framing, which is
  what settled it). Audit on record: every Part II theorem is
  sequential-native — the library (limit laws), IVT via bisection
  (nested intervals; the sup proof becomes the historical GE, Bolzano
  1817), EVT and Heine–Cantor (subsequences), inverse continuity
  (April's proof already sequential), aˣ (squeeze), Takagi (Tannery).
  The lone genuinely ε-δ need in Part II is the mesh argument in
  Integration's forcing proof — supplied by Heine–Cantor, proved here.
- **A2 — ε-δ as tolerance transfer.** The quantitative question
  (output within ε: how accurate must the input be?) motivates the
  characterization; it is the computational strand's question
  (⚠ the table-maker's-problem framing needs a sources pass before
  any historical claim). The quantitative thread runs forward:
  Continuity §2 poses the exchange rate → Differentiation computes it
  (MVT ⟹ Lipschitz, δ = ε/K) → Integration spends it (mesh).
- **A3 — Uniform continuity stays, placed early-not-last**: defined in
  §2 as "one exchange rate honored across the domain"; its theorem
  joins IVT and EVT in §3 as the third [a,b] upgrade (values, extrema,
  tolerance — one phenomenon). The chapter ends on monsters, per
  Steve's ruling ("uniform has got to go earlier or move entirely" —
  it goes earlier).
- **A4 — Core vs optional** (the streamlining audit):
  - *Core*: sequential definition + bridge; function limits (lean —
    definition, sequential version, continuity = limit equals value);
    algebra + composition; IVT, EVT, image; monotone inverse theorem;
    the monotone lemma exactly as far as aˣ needs (monotone + dense
    range ⟹ continuous); Heine–Cantor.
  - *Guided exercises*: discontinuity taxonomy; Thomae (its
    integrability callback → Ch 10's door-GE candidate, predicate-free
    "traps close" form, adoption open — else Part III); the gluing GE
    **upgraded to manufacture the sawtooth** s(x) = dist(x, ℤ) —
    powering the chapter's non-examples and Takagi; bisection (with
    the ℚ-callback: in ℚ, bisection converges to nothing); extension
    theorem; sequential characterization of uniform continuity.
  - *Exercises*: one-sided-limit apparatus; max/min/|f| continuity;
    monotone structure theory (one-sided limits, jumps-only,
    countability, the ★ constructions); continuous injective ⟹
    monotone.
  - *Demoted to a remark*: nth roots via IVT — a REPROOF (Ch 2 built
    roots by sups); the honest new applications are odd-degree
    polynomials and fixed points.

  **Part III dependency protection:** max/min/$|f|$ continuity remains
  exercise-tier, but remains proved rather than optional. Daniell later
  uses these lattice operations; this is a client for the result, not a
  reason to enlarge the Continuity chapter.

### Consequences

- Integration reverts to April's dependency: it imports Heine–Cantor;
  no quantitative opening section.
- Open joint 2 (Takagi's placement) is RESOLVED: it ends Continuity.

### Trig trace (2026-08-21, third session)

The sin/cos storyline through the book, audited and adjudicated:

- **They exist from Ch 2** — confirmed against
  `axiomatic-measurement.md`: constructible-angle values in main text
  (hexagon + bisection), every value via the ★ sup construction
  (house pattern: main text defers, homework proves the tools
  suffice). The state is exactly "exist, dense computable entries,
  can't compute the rest" — the geometric twin of aˣ (rationals ↔
  constructibles, sup gaps in both). Ch 2's two tracks each produce a
  function-in-waiting.
- **The Lipschitz theorem** |sin θ − sin φ| ≤ |θ − φ|: proved in
  Part I's ★ series as a pure measurement inequality — three steps,
  one axiom each (height ≤ distance = chord, by Pythagoras/L1;
  chord ≤ arc, by straight-is-shortest (L3) verbatim; arc = θ − φ, by
  additivity (L2) + the definition of P). (L4) is needed only for the
  companion bound arc ≤ |Δx| + |Δy| that the construction itself
  uses. **Ch 8 §2 re-reads the same inequality as a continuity
  statement** — exchange rate exactly 1 — the Part I/II boundary
  performed on one line; the ★ ends by noting the constant is sharp,
  and sharpness is the sin h/h limit: the derivative question, named
  and deferred.
- **The law-limited-tour rule**: a function tours the property
  chapters only as far as its algebraic law carries it. aˣ tours
  everything (law of exponents is a Ch 2 theorem); trig's law is the
  addition formula, unavailable until EF's ODE uniqueness — so its
  tour stops after continuity, and EF's trig section is *the arrival
  of the law*. The aˣ/trig asymmetry is principled, not scheduling.
- **Density route noted and declined** (law at constructible pairs +
  density + Lipschitz + agree-on-dense-set would give the general
  addition law in Ch 8 — the aˣ classification engine replayed).
  Declined with reasons: the constructible-pair law is bespoke
  Ptolemaic synthetic geometry, and the ODE route delivers every law
  at once *with its explanation*. The wait is the narrative.
- **REJECTED (Steve, 2026-08-21): the rotation-map path.** Defining
  R_α algebraically from the constructed values and proving the full
  addition law via isometries-preserve-arc-length was proposed and
  rejected. Do not define the rotation map early; do not re-propose.
- Trig-via-integrals (arcsin witness in EF) reaffirmed as the main
  line. Ptolemy chord-addition remains an unadjudicated *historical*
  GE candidate (serves Ch 7's table history and the Ptolemy research
  question), independent of any proof duty.
- The π-as-input observation (Steve) → folded into `purpose-ch13.md`
  Act II: the inverse-selection beat.
- ⚠ standing: MAP's flagged ★ "Trigonometric Identities" placeholder
  (the half-angle engine §4.5 needs) still requires writing; the
  near-the-poles estimate in the ★ construction already carries its
  own flag.

## Addendum (2026-08-21, fourth session) — the Integration deep-dive

Outcomes, all recorded in `purpose-ch10.md` unless noted:

- **The trap philosophy** (Steve): estimate with the axioms until the
  two families of estimates collide — double payout: the axioms fully
  determine the value (theoretical); anything between the traps
  converges (computational — Riemann sums as the license §§4–5
  spend). The paired trap promoted from Part I technique to
  definition.
- **The law of logs DECIDED**: H(xy) = H(x) + H(y) proved in Ch 10 by
  the scaling/geometric-partition argument (finding 7 updated).
- **The (L4) payment completed and reframed**: the tent lemma
  (chord-above-graph on √(1+t²)); "the candidate is admissible"; the
  integral used as representation, never evaluated; general
  Archimedes inequality demoted (no remaining client).
- **Ch 4 audited — no gap**: its bounds are polygon-vs-polygon
  arithmetic (the polygonal instance is elementary via the cutting
  argument); the axiom's load is conceptual — *the polygons pin the
  number; the axiom pins the concept*. `axiomatic-measurement.md`
  corrected (its "not provable with Ch 1 tools" was overstated); TRAP
  added: never print "unprovable without calculus." Part I ★
  cutting-lemma homework: OPEN.
- **The brisk-rerun writing rule** (Steve: "a brisker trap"): §§1–2
  cite Part I's moves, never re-teach; the growth said out loud — one
  theorem closes every trap that Part I closed one bespoke trick at a
  time.
- New §2 theorems: Riemann sums converge (construction-or-consequence
  resolved: consequence) + linearity (needed by §3, not an axiom
  consequence).
- The integral function F(x) deliberately absent — the variable
  endpoint is The Calculus's opening move.
- Supersessions recorded: the "Integration selects the natural base"
  beat (→ Ch 9); the dyadic-reconciliation ⚠ (moot).

## Consequences for other documents

- `purpose-ch7.md`: the three-debts promise ("each paid by a chapter
  of Part II") is **restored exactly** by keeping Continuity /
  Differentiation / Integration separate. No retcon needed after all.
  Its Status note that the FTC-endpoint question is reopened is now
  answered: FTC is The Calculus's opening, and Part II ends at Pi.
- `part2-scope-and-daniell.md`: architecture questions 2 (post-FTC
  shape) and 3 (power series distributed vs collected) are answered
  here; question 5 (ending examples) is answered as the Pi arc with
  Gamma still open as an EF ★; questions 1 and 6 (Daniell's Part III
  placement; how much trig) remain that document's. Its theory and
  example ledgers remain the reference for section-level planning.
- `exponential-thread.md`: unchanged; the Part II stations now have
  addresses (reckoning + reversal in EF; the thread gains Integration's
  two-mysteries beat and the Briggs-constant integral).
- `axiomatic-measurement.md`: (L4) payment reference ("Ch 9") now
  means the Integration chapter; update at outline-rewrite time.
- `purpose-ch4.md` / D5 (Briggs): finding 2 is a new argument for
  main-text-or-GE *yes*; the form question remains Steve's.
- `part1-chapters.md` open joint on Ch 4 content: unaffected; the
  p-series resolution (finding 6) means condensation is NOT added to
  the workshop.
- April outline (2026-outline/06–09): now a quarry, per the coverage
  table. Its section files remain the proof-level source for
  everything relocated.

## Open joints

1. The Calculus internal order: FTC-first (lean) vs
   operations-progression. Steve's call at purpose/section time.
2. ~~Takagi's placement~~ — RESOLVED (Addendum): ends Continuity.
3. Gamma / Bohr–Mollerup as EF ★: needs the length + prerequisite
   audit (`part2-scope-and-daniell.md` already demands it).
4. Small: quadrature-rate ★ in or out; erf vs Si as the one
   integral-defined specimen; the n-ball orphan's parking spot.
5. Whether Dirichlet's function debuts in Functions or Continuity
   (already open in `purpose-ch7.md`).
6. Chapter titles: Steve's voice; the shorthands above are content
   labels only.
7. Purpose files for the six new chapters (Continuity through Pi) are
   not yet written; the goals-first workflow applies to each before
   its section list is fixed.

## ⚠ Verification queue (before anything here is load-bearing)

- Fermat's geometric partitions for ∫₁^A x^(−p), p > 0, p ≠ 1, and
  the limit A → ∞ (finding 6) — write out.
- Saint-Vincent 1647, hyperbola quadrature and the additive property
  (finding 7) — full source pass; currently one timeline line.
- Briggs dyadic vs full-sequence limit reconciliation (finding 2) —
  write out.
- aˣ continuous via monotone + dense range, density from a^(1/n) → 1
  (Continuity's touchstone) — write out.
- Takagi continuity via Tannery (finding 5) — write out.
- Niven's proof against the exact Part II toolkit; Niven 1947 and
  Lambert 1761 attributions/dates — write out and source.
- "The calculus" as the period term for the technique-set (decision
  4) — source before print.
- The sawtooth substitution pass (finding 3) — systematic sweep of
  April Ch 6–7 examples and exercises at section-planning time.
- ~~Sequential ⟹ ε-δ choice footnote policy~~ — RESOLVED (Steve,
  2026-08-21): **no countable-choice footnote in the book.** The
  standard proof is used without remark; the observation lives in this
  planning record only.
- The table-maker's-problem motivation for tolerance transfer —
  source before any historical claim.
- Hermite's "lamentable plague" line (April Ch 6 history file) —
  verify wording and source.
- Heine–Cantor attribution (Heine 1872?) and the Weierstrass-school
  uniformity history — do NOT overclaim: the famous ε-δ-for-uniformity
  story concerns uniform *convergence*; check before tying it to
  uniform continuity.
- Takagi 1901 attribution and the standard construction details.
- Daners route: already sourced in `part2-scope-and-daniell.md`;
  Madhava: already sourced in `sources/series-products-and-primes.md`.
