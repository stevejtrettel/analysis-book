# Axiomatic Elementary Functions — Proposal Under Discussion

Status: **discussion capture, nothing decided.** Records the 2026-08-18
conversation about characterizing the elementary functions by interface
(state what the function *should do*, prove uniqueness, pay existence with
a witness) rather than by construction. Context: both previous editions
axiomatized exp and trig and retreated over the early-existence problem;
this draft (April 2026) rebuilt them constructively. The question is
whether the third edition's architecture changes the answer.

Relation to other documents: this is a specimen study under the axiomatic-
method theme (see `thesis.md` §Design consequences and the planned
`mathematical-goals.md`). The general stance: constructions are demoted to
*existence witnesses* and *representation theorems*; uniqueness carries the
meaning.

## The timing principle (the lesson of editions 1–2)

The axiomatic method makes existence a debt. The previous editions'
failure mode (to be confirmed/refined by Steve — this is inference): the
debt came due too early — chapters of theorems about an object with no
witness. Proposed principle: **a wish-definition may be stated only where
its witness is cheap.** Before that point the object appears solely as
naive practice (Ch 1's sup-powers, Ch 1's chord-geometry trig), which the
eventual theorem then vindicates. The deferral is thesis-aligned: earlier
chapters quietly build the witness, so the reckoning is instant.

## Specimen 1: the exponential

Two genuinely different interfaces from two eras of the practice — they
cannot live in the same chapter, and choosing between (or keeping both) is
an open fork:

- **Algebraic interface** (the index law, the ancient wish):
  E: ℝ → (0,∞), E(x+y) = E(x)E(y), E(1) = a, plus one regularity axiom.
  Regularity choice open: *monotonicity* (most elementary, faithful to
  "bigger exponent, bigger power") vs *continuity*. With no regularity,
  uniqueness fails via choice-pathologies (a possible "new worlds" remark,
  handled carefully or not at all).
  - Uniqueness, Ch 1 tools only: the functional equation forces
    E(r) = aʳ on rationals (algebra + existence of nth roots, §1.4);
    monotonicity + density force the rest — and force E(x) to be exactly
    sup{aʳ : r < x}.
  - **Reconciliation with naive powers, resolved by the last point: the
    sup-of-powers construction is not a rival definition — it is verbatim
    the existence proof for this interface.** The current Ch 1 guided
    exercise's technical content (sup-extension satisfies the functional
    equation) *is* the existence theorem. The axioms change what the work
    means, not what the work is.
- **Analytic interface** (growth proportional to size): E′ = E, E(0) = 1.
  Unstatable before Ch 7; uniqueness trivial (MVT); witness cheap there —
  the series E(x), whose functional equation (§5.3, Cauchy product) and
  term-by-term derivative (§7.3) the draft already proves. This is the
  interface that *selects e*: only calculus-era language can say what is
  natural about the natural base.
- Technical bonus if §7.4 goes axiomatic: the hard April lemma (sup-aˣ
  differentiable at 0) evaporates. Within §7.4: interface → witness →
  positivity/monotonicity/surjectivity → **log := exp⁻¹** (monotone
  inverse theorem, §6.4) → vindication theorem aˣ = exp(x·log a)
  (functional-equation algebra on rationals + density + the sup
  definition; no differentiability of aˣ needed). Ch 1's aˣ becomes
  ancient practice vindicated by a representation theorem — parallel to
  decimals and continued fractions.

## Specimen 2: the logarithm (possibly the strongest case)

- **Interface**: L: (0,∞) → ℝ, L(xy) = L(x) + L(y), monotone, plus a
  normalization (L(base) = 1; the *natural* normalization is calculus-era).
  Uniquely among the book's functions, this interface was **stated as the
  design goal by the inventor** — Napier built logarithms explicitly to
  turn multiplication into addition. Motivation = computation, the most
  honest kind.
- **Current state of the text**: log appears in the Ch 1 guided exercise
  (sup definition; parts (g)–(h) prove a^{log y} = y and additivity), then
  nowhere until §7.4 (log = exp⁻¹) and §9.2 (integral; "Integration
  Discovers the Logarithm" GE). **The Dec 2025 plans had a numerical
  thread — Briggs's method — in Ch 2 and Ch 9; the April campaign dropped
  it. Lost, not decided.**
- **The Briggs recovery (candidate Ch 2 guided exercise)**: xₙ =
  2ⁿ(a^{1/2ⁿ} − 1) is decreasing — the claim reduces to (s−1)² ≥ 0 — and
  bounded below, so MCT gives a limit L(a); additivity follows from limit
  laws via (ab)^h − 1 = (a^h − 1)b^h + (b^h − 1). A complete Ch 2-level
  existence proof for the log interface, whose algorithm is literally
  Briggs 1617 (successive square roots). Open proof obligations for the
  full exercise: positivity of L(a) for a > 1; relation L = log_a⁻¹-style
  normalization bookkeeping.
- **Thesis moment**: Briggs's stabilizing ratio is lim (a^h − 1)/h — the
  derivative of the exponential at 0, observed numerically decades before
  calculus. §7.4's normalization a′(0) = 1 *names* his constant. Practice
  → deferred question → reckoning.
- Three witnesses across the book (sup, exp⁻¹, ∫dt/t) + agreement
  theorems: the representation-theorem pattern again.

## Specimen 3: sine and cosine

- **The wish** (statable in Ch 1 language; §1.5 already lives here
  informally): sine and cosine are the coordinates of the point at
  arc-distance t along the unit circle, counterclockwise from (1,0).
- **The interface** (the wish translated exactly): s′ = c, c′ = −s,
  s(0) = 0, c(0) = 1 (equivalently y″ = −y with initial data, c = s′).
  - System ⟹ wish, pure theorem: (c² + s²)′ = 0 so the point stays on
    the circle; speed ≡ 1 so the parameter *is* arc length (§8.3);
    starts at (1,0), initially upward.
  - Wish ⟹ system *presupposes the moving point exists and is C¹* —
    that presupposition is the existence debt, which is why the ODE form
    is the definition and the geometric parametrization's existence is
    the theorem.
- **Uniqueness**: the energy argument (already in April §9.4).
- **Witness**: the arcsin-integral construction, unchanged from April —
  chosen over the series because it is *geometric*: ∫₀ˣ dt/√(1−t²) is,
  by §8.3, arc length along the circle, so the witness manufactures
  "coordinate as function of arc length" and "the analytic sine is the
  circle's sine" comes free. Timing is already right: §6.4, §8.1, §8.3
  all precede §9.4. The change from April is presentational: open with
  wish + uniqueness, present the construction as existence — or keep
  April's build-first order with the characterization as capstone.
  **Open fork.**
- Specimen payoff: addition formulas in three lines from uniqueness
  (compare s(a+t) with s(a)c(t) + c(a)s(t)); §1.5's chord proof becomes
  the ancient shadow.
- Noted gap: the orthogonality step wants §1.5 to carry a dot product or
  Pythagorean formulation of perpendicularity (currently distance only).
- Third interface noted for completeness: the Ptolemaic one (addition
  formula as axiom — what chord tables ran on); uniqueness theory
  genuinely harder; remark-level at most.

## Current first mentions (April draft) — what the proposal would change

- Exponentials: Ch 1 §1.4 **guided exercise** (sup powers + logs —
  demoted by April from Dec main text); e in §2.4 GE; mystery series
  E(x) §5.3–5.4; reckoning §7.4.
- Trig: Ch 1 §1.5 **main text** (arc-length angle, chord identities),
  load-bearing for §4.5; reckoning §9.4.
- The draft already gives both threads the two-stage shape (naive object
  early, reckoning late) but weights them oppositely (trig main-text,
  exp optional). Under the proposal, placements likely stand; what
  changes is the *status* of the early objects (practice/witness vs
  definition) and whether the late sections open with the wish.

## Open forks (all undecided)

1. One interface or two for exp — algebraic in Ch 1, analytic in Ch 7,
   or both with a joining theorem. If algebraic: which regularity axiom.
2. Naive sup-powers: main text or guided exercise; and is the sup-
   wrangling *good practice* for Ch 1 students or a slog? (Steve's
   teaching experience is the evidence; explicitly unknown.)
3. Trig §9.4: wish-first ceremony vs build-first with characterization
   capstone.
4. Restore the Briggs thread as a Ch 2 guided exercise (and does the Ch 9
   repeated-square-roots exercise return alongside the integral log)?
5. Whether Ch 1 states any interface explicitly (exp's algebraic, trig's
   wish) or stays pure practice until the reckonings.
6. What actually broke in editions 1–2 — Steve to articulate; the timing
   principle above is inference until then.
