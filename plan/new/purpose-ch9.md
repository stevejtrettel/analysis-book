# Ch 9 Purpose — Differentiation (local law, global authority)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **adjudicated 2026-08-21 (third session)** — chapter shape,
the aˣ ruling (full treatment in main text), Newton as main-text
finale, and the historical opening are decided; the opens are listed
in Status. Shorthands are content labels, NOT titles.

## The sentence (draft shorthand; wording is Steve's)

> **The derivative is local, but its authority is global — and the
> Mean Value Theorem is the instrument of that authority.**

Everything after MVT is the authority exercised: sign controls shape,
bound controls tolerance, n derivatives control the function to order
n, and control means computation.

## Goals

### The part-level job

- Receive Ch 8's cliffhanger (coherence does not contain the tangent)
  and characterize the tangent anyway — paying the Functions chapter's
  second debt.
- Cash Ch 8 §2's exchange-rate question: the derivative *computes*
  tolerance transfer (MVT ⟹ Lipschitz, δ = ε/K). The quantitative
  thread's middle act, stated as such.
- Run the touchstone tour's second station: aˣ differentiable
  (Ch 8 proved it continuous; Ch 10 will integrate it).
- Close the book's oldest computational thread: the Babylonian
  iteration explained (fifth visit).

### Exports (each with its clients)

- Derivative definition (sequential, via Ch 8's function limits) and
  the toolkit: linearity, product, quotient, power, chain, inverse
  derivative → The Calculus reverses exactly these (substitution =
  chain, IBP = product); EF's inverse derivative (log′, arcsin′) is
  load-bearing.
- Fermat → Rolle → MVT → everything below.
- **The constancy corollary, named as the workhorse on the page**
  (f′ = 0 ⟹ constant): FTC II's uniqueness, every EF uniqueness
  argument, the log functional equation.
- Monotonicity from sign of f′ → EF (exp increasing), convexity.
- Lipschitz from bounded f′ → Ch 8's exchange rate cashed; Newton.
- **Convexity, main text** (definition by chords; midpoint + continuity
  ⟹ convex, the dyadic lemma; three-slopes; tangents below, chords
  above; f′ increasing ⟺ convex; f″ test) → its five clients: aˣ
  (immediately, in-chapter), Archimedes' inequality (Ch 10), Daners's
  sin x ≥ 2x/π (Ch 13), Stirling (Ch 13 ★), Bohr–Mollerup (EF ★ if
  adopted). Jensen → exercise.
- **(aˣ)′ = L(a)·aˣ and (eˣ)′ = eˣ** → Ch 10 (∫aˣ meets the same
  constant), EF (the reckoning cites this chapter), Napier's first
  installment.
- Finite Taylor with Lagrange remainder (generalized-Rolle route — no
  Cauchy MVT) → EF's sin/cos series on arrival; Newton's quadratic
  convergence; Ch 13's Taylor-polynomial evaluations.
- Newton's method → the computational strand's Part II peak; Ch 13's
  opening foil calls it.

### Skills

Computing derivatives from the definition and by rules; MVT
deployment (uniqueness, monotonicity, rate bounds); convexity
arguments; error-certified polynomial approximation; iteration
analysis (rates: linear vs quadratic).

### Exit state

The reader can differentiate everything built from the toolkit plus
aˣ; knows the derivative's three faces and that a bound on f′ is a
tolerance exchange rate; owns convexity as a tool; can approximate
with certified error; knows the reconstruction question is open; and
has watched the book's first algorithm be explained, not merely
certified.

### Non-goals and borders

- No power series as functions, no term-by-term (→ The Calculus).
- **No staged laws**: the equations f′ = f and y″ = −y are not posed
  as wishes here (rejected earlier the same day — produced-by-story
  test; a law alone gives a candidate series and no function; that
  distinction is EF's subject). The *converse* question for the
  chapter's own theorem is a separate open (Status).
- No exp/log/trig beyond the touchstone: log does not exist here (its
  absence is deliberate — the L(a) mystery must survive to EF).
- Smooth-oscillator specimens (x²sin(1/x)-type) genuinely cannot be
  sawtooth-ified — they need sin. The theory they illustrate stays;
  the specimens become a **deferred exercise packet marked "returns
  when sin exists"** (EF exercises inherit it). This is a known limit
  of the substitution policy, hit here first.

## Story

Five sections. Arc: four ancient tangents become one formula → the
formula's global authority (MVT) → the authority's machinery
(convexity) and its first conquest (aˣ) → reconstruction to order n
(Taylor) → computation (Newton, the Babylonian explained).

### §1 — From four tangents to one formula (decided: the intro
section is historical, leading to the definition, then the rules)

The chapter opens historically — the prelude and §1's opening fuse
here, a deliberate variation on the template. Before calculus,
"tangent" had **four working conceptions, none general** (the Ch 7
move replayed: many presentations, no definition):

1. **Apollonius — position.** Touching without cutting; synthetic
   constructions, conic by conic; the parabola subtangent result
   displayed. ⚠ propositions to verify.
2. **Archimedes — motion, once.** The spiral, defined kinematically,
   the lone ancient tangent beyond the conics; his subtangent =
   circumference of the first circle — a tangent statement whose
   answer is an arc length. What he proved and how is the standing
   research question (Ch 7 brief); claim nothing beyond sources.
   **The certification is a named IOU**: parametric differentiation
   post-EF derives his result (★ candidate in EF or Ch 13; already a
   registered candidate in the scope ledger's example list).
3. **Fermat — optimization.** Adequality run on the page: maximize
   A(B−A); adequate with (A+E)(B−A−E); cancel, divide by E, discard
   E; A = B/2. Works by discarding the thing nobody can define — the
   era's purest deferral. Berkeley 1734 names the scandal (ghosts of
   departed quantities; ⚠ wording).
4. **Descartes — algebra.** Tangency as double contact (method of
   normals); no limits anywhere; scope-limited to algebraic curves —
   which is exactly why the limit definition wins.

Then the formula: the difference quotient, its three faces (tangent /
rate / linear approximation — weighting in Steve's voice), with the
**AO 6770 callback** on the linear-approximation face: the book's
first historical station was a linear approximation — the scribe
interpolating his power table used the derivative's job description
three millennia early. (Table-interpolation is where the need lived;
the Kerala sine-difference tradition is the sophisticated end of the
same practice — candidate remark, ⚠ own sourcing.)

Then the local algebraic rules, derived. **The product rule gets its
history told at the theorem** (decided 2026-08-21):

- Leibniz's false start — d(xy) = dx·dy — recognized and corrected in
  the 1675 manuscripts; published rule, 1684, stated without proof.
  ⚠ manuscript details (Child's translation is the usual source).
- His correction discards the term dx·dy as "incomparably small" —
  the exact move Berkeley mocked.
- Newton's *Principia* Lemma II: the centered trick — moment of AB
  from (A + a/2)(B + b/2) − (A − a/2)(B − b/2) = aB + bA *exactly* —
  no discard, arguably an evasion. ⚠ verify text and the standard
  commentary.
- **The certification, on the page**: expand the difference quotient
  and display the cross term
  [f(a+h) − f(a)][g(a+h) − g(a)]/h — Leibniz's dx·dy — and kill it
  legally: both factors are O(h), the quotient → 0. "Incomparably
  small" becomes a theorem. The rules section performs
  practice → language → certification on its own most famous rule.

Also here: differentiable ⟹ continuous; |x|; the gap already vast
(Takagi in hand from Ch 8). Chain rule; inverse-function derivative
(EF's workhorse, named). GE: Carathéodory's factorization (reproves
chain and product cleanly).

### §2 — The Mean Value Theorem

Fermat's theorem — **the prelude loop closes: his method becomes a
theorem with his name on it**, and his B/2 example is redone in one
line. Rolle; MVT. Consequences: the workhorse (constancy), named;
monotonicity; **Lipschitz = the exchange rate cashed** (δ = ε/K; the
derivative is the book's rate-computer). GE: Darboux's theorem
(derivatives satisfy IVT; no jump discontinuities — theory intact,
its discontinuous-derivative specimen joins the deferred packet).
Exercises: Cauchy MVT with L'Hôpital (its only client), derivative
tests, general Leibniz rule.

### §3 — Convexity, and the touchstone (packaging OPEN: one dense
section or split in two)

The convexity machinery (contents in Exports), clients named as they
are proved. Then its first client, immediately — the section climax,
mirroring Ch 8 §4:

- **aˣ is differentiable everywhere; (aˣ)′ = L(a)·aˣ.** Chain:
  midpoint-convex by AM-GM (Ch 1) + continuous (Ch 8) ⟹ convex ⟹
  monotone difference quotients at 0 ⟹ one-sided slope; the
  functional equation kills the corner ((a⁻ʰ−1)/(−h) = a⁻ʰ·(aʰ−1)/h,
  a⁻ʰ → 1); the law propagates one slope everywhere. One number plus
  the algebraic law determines the entire derivative — the chapter
  thesis in its purest instance. ⚠ write out (monotone-quotient
  bounds; no circularity — checked: continuity came from
  monotone + dense range, nothing differential).
- **The contrast is the story** (decided: both cases in main text):
  for e, Part I Ch 6's series gives h ≤ eʰ−1 ≤ h + e·h², so the
  slope's VALUE is known — **(eˣ)′ = eˣ, exactly**. For general a,
  existence of L(a) and no name for it. Value vs existence — Ch 2's
  sting one level up; and L(a) is nameless yet computable by
  algorithm (Briggs, if D5 lands).
- **Napier's first installment** (proposed): "speed proportional to
  distance remaining" is now a well-formed, satisfiable property; the
  identification of his logarithm stays EF's.
- Forward pointer: L(a)'s tour continues — Ch 10's Riemann sums meet
  the same constant; EF unmasks every sighting at once.

### §4 — Taylor

Taylor polynomials; generalized Rolle; the Lagrange remainder. The
principle, with honest scope: **Taylor converts differential
information into series — for functions you have.**

- Certified approximation first (√1.1 to guaranteed accuracy).
- The geometric agreement: output = Part I's series, with the honest
  wrinkle (Lagrange closes only on |x| < ½; Part I proved more) — a
  named mini-debt the integral remainder pays in The Calculus.
- **The centerpiece, legal because §3 earned it**: all derivatives of
  eˣ are eˣ; remainder dead by factorials; the machine outputs
  Σxᵏ/k! — the reader's series from a third direction (compounding,
  binomial, now derivative data). Representation-agreement pattern.
- ★ The binomial agreement: Newton's interpolated coefficients from
  Part I Ch 6 are derivatives.
- Forward promise, not performance: sin, cos, log get their series
  from this machine on arrival. Laws without functions stay out.
- Exit question posed and deferred: do the derivatives reconstruct
  the function? (The Calculus: yes for the licensed class; and the
  refusal, e^(−1/x²).)

### §5 — Newton's method (main text, terminal — decided)

The algorithm; convergence by Part I Ch 4's contraction theorem (MVT
supplies |g′| < 1 near a simple root — the verified client chain);
quadratic convergence via §4. Failure modes. GE:
division-by-multiplication (how computers divide). Finale: **the
Babylonian reveal** — the book's opening iteration is Newton's method
on x² − 2, fifth visit of the thread, and quadratic convergence
explains what the reader saw in Ch 1 (1, 3/2, 17/12, 577/408 —
digits doubling). Part I certified the ancient algorithm; this
chapter explains it.

## Ledger

### Imports

Ch 8 (function limits, continuity of aˣ, monotone inverses, EVT,
Takagi); Part I (AM-GM, the law of exponents as theorem, e's series
at all real x, contraction theorem, factorials-beat-powers, the
Babylonian thread, the binomial ★ series).

### Debts cashed

- The tangent (Functions debt 2; Ch 8's cliffhanger).
- The exchange rate (Ch 8 §2) — MVT computes it.
- The Babylonian "why so fast" (implicit since Ch 1; contraction gave
  only a geometric rate).
- Napier's first installment (proposed; identification stays EF's).

### Debts opened (→ where paid)

- Reconstruction (does Pₙ → f?) → The Calculus.
- Lagrange's |x| < ½ inadequacy → integral remainder, The Calculus.
- The L(a) mystery's value → Ch 10 (second sighting), EF (unmasked).
- The spiral certification → EF/Ch 13 ★.
- The deferred smooth-oscillator packet → EF exercises.

### Deliberate revisits

Babylonian (5th visit); the Part I Ch 6 binomial (★ agreement); AM-GM
(Ch 1 → convexity); contraction (Ch 4 → Newton); AO 6770 (the book's
first station, as the first linear approximation).

## Dispositions

- GEs: Carathéodory; Darboux (theory parts); **"the parabola's
  tangent, three ways"** (Apollonius stated, Fermat run, derivative
  certifying both); Descartes' double-root criterion (tangency ⟺
  (x−a)² divides, by product rule; scope limit noted); division-by-
  multiplication.
- Exercises: Cauchy MVT + L'Hôpital; derivative tests; Jensen;
  general Leibniz rule; modified Newton for multiple roots.
- Deferred packet (marked "returns when sin exists"): x²sin(1/x) as
  differentiable-with-discontinuous-derivative; the
  f′(0) > 0-but-not-increasing ★.
- Declined: al-Ṭūsī's alleged derivative (contested scholarship —
  omit or heavily hedge; sources pass decides); Roberval beyond a
  sentence; Barrow (belongs to The Calculus's prelude).

## Historical research brief

By practice, not biography; nothing prints before verification:

1. Apollonius' tangent constructions — which propositions, exact
   statements (Conics Bk I).
2. Archimedes, *On Spirals* — the subtangent result and its actual
   proof method; the kinematic reading's scholarly status
   (cross-reference: the standing Ch 7 research question).
3. Fermat — the adequality texts; the E; *adaequalitas* /
   Diophantus' παρισότης lineage via Bachet; the B/2 example's
   source; the tangent-of-parabola application.
4. Descartes — the method of normals in *La Géométrie*; the
   Fermat–Descartes dispute (use with care, no anecdote-mongering).
5. Berkeley 1734 — exact wording of "ghosts of departed quantities."
6. Leibniz — the 1675 manuscript sequence (d(xy) = dx·dy considered
   and rejected; the corrected rule), *Nova Methodus* 1684.
7. Newton — *Principia* Bk II Lemma II, the centered-moment argument
   and its standard commentary.
8. The interpolation tradition — AO 6770 (already sourced); Kerala
   school sine-table differences (needs its own campaign).
9. al-Ṭūsī on maxima of cubics — the Rashed reading vs its critics;
   decide omit vs hedge from the sources, not from secondary lore.

## Status

- 2026-08-21 (third session), decided: five-section shape; §1 opens
  historically, leading to the formula, then the rules (prelude and
  §1 fused — deliberate template variation); product-rule history
  told at the theorem, with the cross-term certification; aˣ full
  treatment in main text (both cases; the value-vs-existence
  contrast); Newton main-text terminal finale with the Babylonian
  reveal; convexity promoted with clients named.
- OPEN (Steve): the converse/classification question — prove
  "f′ = cf ⟹ f = f(0)eᶜˣ" here (one line of the workhorse; produced
  by the chapter's own theorem) or pose and defer to EF. Border-of-EF
  call.
- OPEN: §3 packaging (one dense section vs convexity + touchstone as
  two).
- OPEN (Steve): Napier's first-installment beat — adopt as proposed?
- OPEN (Steve): the example the chapter is remembered by — the
  Babylonian reveal, (eˣ)′ = eˣ, or the value/existence contrast;
  title; the three-faces weighting in §1.
- ⚠ VERIFY: everything in the research brief; the aˣ write-out (§3);
  the eˣ two-sided bound write-out (shared with the Ch 10 upgrade);
  the |x| < ½ Lagrange-on-geometric detail.
