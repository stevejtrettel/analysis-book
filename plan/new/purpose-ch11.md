# Ch 11 Purpose — The Calculus (the toolkit)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **walked and revised with Steve, 2026-08-21 (fifth/sixth
sessions)** — the story spine, the ending, and the roster below carry
his rulings; section granularity and the load question are
drafting-time. Shorthands are content labels, NOT titles.

## The story (settled in the sixth-session walk)

One story: **the chapter assembles the toolkit for working with
functions** — "the calculus" in the historical sense, a system for
computing. The other threads are parts of it, not rivals:

- Opening tension: Ch 10 ended with hard labor and two unexplained
  patterns. FTC explains both at once and replaces the labor with
  evaluation. (The meeting of the two separately-built subjects is
  the first theorem's meaning — a moment inside the story, not the
  whole story.)
- Middle: each section adds a tool-class to the kit.
- Ending (Steve: "ending on the alternating harmonic series is a nice
  one"): the assembled kit's demonstration —
  **1 − 1/2 + 1/3 − ⋯ = log 2** — a sum the reader met early (the
  rearrangement section displayed it and declined to evaluate it) and
  now can evaluate, using nearly everything the chapter built.
- Prelude: the certification frame — Newton and Leibniz built this
  kit; the eighteenth century ran on it; this chapter makes it
  theorems. Same relationship to them that Part I Ch 6 has to Euler
  (that chapter: how to compute with numbers given by processes; this
  one: the techniques for working with functions).

The chapter closes no chapter-level question and takes no new Part II
debts; it ends on a demonstration of power. It does, however, plant one
explicit Part III door at the moment of its greatest success: power
series differentiate term by term, but arbitrarily close functions do
not in general have close derivatives. Its honest limitations (that
counterexample; the refusal example; the ellipse; Liouville if placed
here) are remarks inside sections, not the ending.

## Goals

### The part-level job

- Answer Ch 10's cliffhanger immediately (FTC), and resolve both
  mysteries fully — including **identifying H as the logarithm**
  (H(aˣ) = L(a)·x by chain rule + the workhorse, so H(a) = L(a) and
  H = the inverse of eˣ — Ch 2's log, now with a fast series and a
  geometric meaning). Placement flexible per Steve: the
  identification can land in Ch 10 or here; default here, with the
  artificial-hold-back policy noted (one-line results are not
  deferred for drama).
- Own the variable endpoint (F(x) — deliberately absent from Ch 10).
- Deliver the licensed operations on power series (Ch 8 posed with
  specimens; this chapter delivers), and mark term-by-term
  differentiation as a special success rather than a general law about
  limits of functions.
- Certify the 18th-century computational repertoire (the sixth-session
  additions below).
- Create the arc functions, handing EF its trig witness.
- Pay Ch 9's two debts (the reconstruction question; the Lagrange
  remainder's inadequacy).

### Exit state

The reader can evaluate integrals by antiderivatives and knows why;
can integrate every rational function and knows the two new functions
that make that possible; can operate on power series with all three
operations, while knowing that ordinary closeness of function values
does not control derivatives; can compute log to many digits three
ways; owns two new constants' worth of technique (log 2 evaluated;
γ constructed); and
has seen the kit's honest boundary drawn from both sides (rational
functions: always elementary; the ellipse's arc, e^(−x²): provably or
famously not).

### Non-goals and borders

- No names beyond log: A and T are not called arcsin/arctan here (EF
  names them with trig); sine does not exist yet.
- No general convergence of functions (Part III); the interchange
  technique below is finite-sums-plus-tail-bounds, never a mode of
  convergence.
- No two-variable theory beyond the minimal apparatus the ★ needs
  (sequential continuity on a rectangle; no tangent planes, no double
  integrals).
- No ODE solving beyond quadrature; no techniques catalogue beyond
  the named results below.

## Story — sections

1. **The Fundamental Theorem.** The variable endpoint: F(x), its
   continuity, MVT for integrals, FTC I and II. Spent immediately:
   the slope-in-the-integral mystery dissolves ((aˣ)′ = L(a)aˣ from
   Ch 9, so FTC II *is* Ch 10's formula); H′(x) = 1/x; the law of
   logs in one line (the workhorse); and **the identification: H is
   the logarithm** — the slope, the divisor, the area, Briggs's
   limit, all one function, and it is Ch 2's log with new access.
2. **Antidifferentiation** (Steve's name). Substitution; integration
   by parts; **reduction formulas** (repeated parts producing a
   recurrence — one worked family in text, the rest exercises);
   Taylor's theorem with integral remainder (Ch 9's mini-debt paid;
   the Lagrange c demystified). Exercise-tier techniques recorded:
   the reflection trick ∫₀^a f = ∫₀^a f(a−·); logarithmic
   differentiation.
3. **The functions integration creates.** The completeness parallel
   (Steve's framing): what the axiom did for numbers, FTC I does for
   functions — existence en masse, computation separate. The
   deliveries: **A** (the circle's arc measured by height — the
   Ch 2 ★'s λ with a derivative; A(1) = π/2 from Ch 10) and **T**
   (the rational-integrand companion, with its series to come).
   Supporting kit: **convergence tests for improper integrals**
   (comparison, absolute — needed by the Gaussian ★ and Gamma) and
   **growth rates** (eˣ beats every polynomial, from the series;
   log x ≤ 2√x by comparing areas). Two honest-boundary remarks:
   erf or Si (one specimen — the engine outruns formulas), and **the
   ellipse** (adopted, sixth session): the arc-length integral of the
   very next curve after the circle — the same kind of object that
   defines our trig — reduces to nothing in this kit; it defeated
   the century, and its story (elliptic integrals — Legendre, Abel,
   Jacobi ⚠) belongs to the 19th. Quadrature ★ (with the convex
   two-sided bound — midpoint under, trapezoid over — which Π's
   Stirling exercise needs).
4. **Every rational function (adopted, sixth session).** The
   Bernoulli program closed: partial fractions (existence by degree
   induction — GE or text), the Fundamental Theorem of Algebra
   **cited, not proved** (⚠ attribution/date), and the theorem:
   **the integral of any rational function is a rational function
   plus log-terms plus T-terms.** The engine's two functions are
   exactly what the program was missing — the kit is provably
   complete on this class. Candidate contrast remark (placement
   open): Liouville — for e^(−x²) no elementary antiderivative
   exists at all (cited, 1835 ⚠); the boundary drawn from both
   sides. ⚠ history: Leibniz/Johann Bernoulli and rational
   integration (~1702).
5. **Calculus on power series: restrict to infinite polynomials and
   everything is fine** (Steve's words; one section, all three
   operations — fifth session). Ch 8 posed the danger (the zigzag,
   moved there); the license is domination. Interior continuity
   (decided: NOT done earlier in Ch 8); term-by-term
   differentiation; coefficients are derivatives; uniqueness; the
   E′ = E check; power series are exactly their Taylor series;
   term-by-term integration with its productions — the series for
   log(1+x) (Mercator's, now legitimately named) and T's series.
   **The success is marked as exceptional, not generalized:** on
   [−1,1], the rational functions
   $f_n(x)=x/(1+nx^2)$ have entire graphs trapped within
   $1/(2\sqrt n)$ of zero, while $f_n'(0)=1$ for every $n$. Thus even
   very strong closeness of values does not control slopes. No mode of
   function convergence is defined here; the example poses the Part III
   question that will eventually culminate in a larger space where
   differentiation does commute with limits.
   Honest remark inside, not the ending: e^(−1/x²) — all derivatives
   at a point need not determine a function (planted for EF).
   **The interchange technique named honestly**: finite sum plus a
   uniform tail bound, then squeeze — the 18th-century move itself,
   demonstrated, no general theorem stated (that is Part III's).
6. **The boundary, and two showpieces.** Summation by parts; Abel's
   theorem. The ending theorem: **1 − 1/2 + 1/3 − ⋯ = log 2** (⚠
   write out: Abel + continuity of H). Riding with it:
   ★ **the sophomore's dream** (Johann Bernoulli 1697 ⚠):
   ∫₀¹ xˣ dx = 1 − 1/2² + 1/3³ − ⋯, by the exponential series, the
   tail-bound interchange, and reduction formulas. Calibration
   (Steve, 2026-08-21): a guided exercise or short cute example, not
   a fundamental beat — liked, kept small. And ★ **γ** (adopted): Hₙ − log n is
   decreasing and bounded (integral-test trapping), so it converges —
   a fourth constant, computable to any precision, **whose
   irrationality is unknown after 250 years**: the book proves √2, e,
   π irrational each with its era's tools, and here is a constant
   born of this chapter's own technique still holding its secret (Π's
   irrationality section gets the closing cross-reference). Tauber ★.

**Differentiation under the integral sign — RESOLVED OUT (Steve,
2026-08-21, after the research pass): not proved in this book.** It
survives as a cited remark only (placement at drafting — §2 or the
honest-boundary remarks): the technique named, Leibniz 1697 (⚠
primary source needed — the standard modern reference cites a forum
thread), the failure examples noted as why care is needed (Conrad's
jointly-discontinuous counterexample; cos(tx)/(1+x²) = πe^(−|t|),
not differentiable at 0), and the pointer that the honest general
theorem wants domination hypotheses belonging with Part III's
machinery — **and the destination exists**: the Dec plan for the
extending chapter (`2025-plans/chapter-10-extending-the-integral.md`)
already lists differentiation under the integral among the Daniell
construction's payoffs, with the proof (MVT bounds the difference
quotients by the dominating function; apply DCT — one line). The
remark points forward to a scheduled theorem, not a hope. Decisive
research findings: the Gaussian integral — the
technique's only candidate showpiece here — has an elementary
Wallis-integral proof that is essentially **Laplace's original 1774
argument** and lands in Π nearly free (recorded there); with it
gone, the technique has zero clients, and the book's precedent is
exact (Part I Ch 6 cut Newton's series reversion on the same
grounds). The minimal bounded-f_tt version below stays on file as a
sound declined option:
- **The minimal version needs NO two-variable machinery.** Charge
  the hypothesis one notch — f_tt bounded on the strip (equivalently
  f_t Lipschitz in t, uniformly in x) — and the proof is three
  lines: Taylor-in-t with Lagrange remainder pointwise (Ch 9),
  integrate the resulting inequality (monotonicity, Ch 10), divide
  by h; quantitative O(h) error. No joint continuity, no 2D B–W or
  Heine–Cantor; "f(x,t)" is a parametrized family of one-variable
  functions (grammar the book already uses), every hypothesis a
  plain inequality, checkable by explicit bounding in every intended
  use. What is lost is only sharpness (classically f_t continuous
  suffices) — one honest sentence defers the refinement. ~1 page
  total. (The 2D-apparatus version is on record above this revision
  in the session log; it is NOT needed.)
- Clients: none required by the current plan (Stirling's constant
  comes from Wallis; Γ(1/2) = √π needs it only if Gamma ★ lives).
  The case rests on the certification mission (Euler's parameter
  technique ⚠ centrality to verify) and the Gaussian — landing
  in-chapter in ANONYMOUS form: (∫₀^∞ e^(−x²))² = T(1), two
  nameless constants proved equal (the chapter's own ending mode);
  the √π punchline waits for Π's T(1) = π/4. Essentially the only
  in-reach route to the Gaussian.
- Recommendation: **in, as the ★, in the bounded-f_tt form** — at
  one page and zero new concepts the remaining against-column is
  only "no required client" and chapter load. Steve's call, not yet
  made.
⚠ if adopted: write out the three-line proof and the Gaussian
trick's estimates; Leibniz-rule attribution (the "Feynman trick"
name is modern).

### Load note (flagged, undecided — the Part I Ch 6 question again)

With the sixth-session additions this is the fullest chapter in
Part II. Cut menu within it: reduction formulas to exercises; the
sophomore's dream stays ★; the differentiation-under-the-integral ★
is off the semester path by default; Tauber cuttable; the Liouville
remark movable to EF. Whether the toolkit chapter gets to be the
longest is the structural question, and it decides the cuts, not the
other way around.

## Ledger

- Imports: Chs 8–10 entire; Part I's domination, series machinery,
  the rearrangement section's displayed-but-unevaluated sum.
- Cashes: both Ch 10 mysteries (fully — including the
  identification); Ch 9's reconstruction question and remainder debt;
  Ch 8's posed danger (the licensed class); Ch 10's quadrature-rate
  question; the Bernoulli program (rational integration); Part I's
  withheld value (log 2).
- Opens: A and T await their trig names (EF); the transport of the
  abstract definitions (Part III); the general interchange theory
  (Part III), with the failure of differentiation to respect ordinary
  function limits now a named instance; the ellipse and Liouville and
  γ stand as cited boundaries, not debts.
- Deliberate revisits: the Part I Ch 6 pairing (said out loud in the
  prelude); E's third service; the alternating harmonic series
  (met in Part I, evaluated here).

## Historical research brief

Barrow (the geometric FTC; the resignation story ⚠); Leibniz, *Nova
Methodus* 1684; the priority dispute (one line); Mercator 1668
(sourced); Abel 1826 ⚠; Johann Bernoulli 1697 (xˣ) ⚠; rational
integration ~1702 (Leibniz/Johann Bernoulli) ⚠; FTA citation
(Gauss) ⚠; Leibniz's rule under the integral ⚠; elliptic integrals
(Legendre/Abel/Jacobi framing) ⚠; γ (Euler 1734 ⚠; the open
irrationality as commonly stated); Liouville 1835 ⚠; Tauber ⚠;
Tannery naming (standing).

## Status

- Settled in the walk (fifth/sixth sessions): the story spine (the
  toolkit; mysteries open it; log 2 ends it); "Antidifferentiation"
  as §2's name; the completeness parallel as §3's framing; the
  zigzag moved to Ch 8; power-series continuity NOT in Ch 8; all
  three term-by-term operations in one section; their special status
  marked immediately by $x/(1+nx^2)$ (values collapse to zero while
  the slope at zero remains one), opening the differentiation-and-limits
  thread for Part III; the refusal demoted
  to an in-section remark; γ, the sophomore's dream, rational
  functions (FTA cited), the ellipse remark, improper tests, growth
  rates, the convex quadrature bound — all in; H identified as the
  logarithm in-chapter (or Ch 10; flexible).
- RESOLVED (Steve, after research): differentiation under the
  integral is OUT as a proved tool — cited remark only; the Gaussian
  moved to Π via the Wallis squeeze. Remaining OPEN: the load
  question and its
  cut menu (above); FTC-first confirmation at writing time (lean
  recorded); quadrature ★'s home (here vs Ch 10 exercises); erf vs
  Si; Liouville's placement (here vs EF); Tauber; partial-fraction
  existence as GE vs text; the example the chapter is remembered by;
  title.
- ⚠ VERIFY: everything in the research brief; the log 2 write-out;
  the xˣ write-out (tail bound + reduction); the γ write-out; the
  Gaussian parameter-trick write-out; the 2D-apparatus write-out;
  the rational-functions proof details (T after completing the
  square; the recurrence for repeated quadratic factors).
