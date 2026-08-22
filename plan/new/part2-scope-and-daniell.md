# Part II scope if Daniell moves

Status: **discussion ledger, not an approved outline.** Created
2026-08-20 after reopening the assumptions that the Daniell integral
belongs at the end of Part II and that the current draft must end at the
Fundamental Theorem of Calculus. Nothing in this file decides the number
or order of the post-FTC chapters, whether power series are collected or
distributed, or which final examples survive.

The governing opening of Part II remains `purpose-ch7.md`:

> **A function is an uncountable table. Analysis begins when the entries
> of that table are not independent.**

The present document asks what theory and examples should pay off that
opening, and what becomes possible if the extension of the integral is
treated as the beginning of function-space analysis rather than the end
of one-variable calculus.

## The proposal being considered

Move the Daniell extension, convergence theorems for integrals, measure,
and the construction of $L^1$ out of Part II and into the later part of
the book concerned with metric and function spaces.

This is not a proposal to omit the material. It is a proposal to change
the boundary between the parts:

- **Part II:** individual real functions and the structures that make
  their values cohere — continuity, differentiability, integrability,
  the FTC, representations, constructions and substantial examples.
- **Part III:** collections of functions, notions of distance and
  convergence between them, completion, and operations on function
  spaces. Daniell and $L^1$ would then supply a concrete reason to build
  that machinery.

The boundary is attractive but not yet proved to be the right one.

### What the move could improve

- The Daniell construction is driven by **limits of functions** and by
  preserving a positive linear functional under those limits. Those are
  function-space questions even when they are first presented on
  $C[a,b]$.
- $L^1$ is not merely a larger collection of individually integrable
  functions. It is a vector space equipped with an integral and, after
  identifying functions equal almost everywhere, a complete norm. Its
  principal later clients are functional analysis, Fourier analysis and
  differential equations.
- Part II could finish the classical one-variable theory and then spend
  real time using it. The FTC would remain a climax without being forced
  to serve as the last topic.
- The final movement of Part II could answer the function chapter's
  questions about how functions are presented, constructed, recognized,
  determined and computed.

### What the move could damage

- The direct historical and mathematical progression

  $$
  \text{continuous integral}
  \longrightarrow \text{discontinuous integrands}
  \longrightarrow \text{Lebesgue/Daniell}
  $$

  would be interrupted by the part boundary.
- Function-space chapters currently expect $L^p$ examples. Moving
  Daniell later creates an ordering problem: does a concrete $L^1$
  construction motivate metric completion, or must metric completion be
  available before the construction can be properly interpreted?
- Daniell is technically demanding. If it opens a new part before the
  reader understands why spaces of functions matter, it may feel like a
  second integration chapter rather than the motivating example for
  functional analysis.
- Part II would gain room, but room alone does not justify adding
  material. Any post-FTC chapter still needs its own question and story.

### Two possible Part III placements

Neither has been selected.

1. **Concrete problem first.** Begin with the failure of the continuous
   or Darboux integral under limits, construct the Daniell extension and
   $L^1$, discover completeness, and then abstract metric spaces and
   completion from that example.
2. **Abstract language first.** Develop metrics, Cauchy sequences and
   completion; then return to the integral and present $L^1$ as the
   completion demanded by the new language.

The first has stronger motivation; the second has cleaner technical
dependencies. A third possibility is to introduce metrics concretely,
build Daniell/$L^1$, and postpone the general completion theorem until
the reader has seen the need twice.

### Technical audit required before any move

The 2025 Daniell outline is a source of ambitions, not yet a safe proof
plan. In particular:

- A pointwise increasing limit of continuous functions is lower
  semicontinuous. The proposed class $L^\uparrow$ and its closure
  properties must be checked carefully; the naive two-stage description
  may not directly produce all Lebesgue-integrable functions or all
  almost-everywhere modifications claimed later.
- $d(f,g)=\int|f-g|$ is only a pseudometric on literal functions. It
  becomes a metric after quotienting by equality almost everywhere.
- Claims about completeness, density of continuous functions,
  differentiation almost everywhere, absolute continuity, and the full
  FTC for $L^1$ are major theorems. They should not be treated as automatic
  consequences of the initial extension.
- Recovering measure from the integral requires a precise account of
  which characteristic functions belong to the domain and how countable
  additivity is established.

The move should therefore be evaluated together with a rebuilt Daniell
chapter, not by relocating the old section list unchanged.

## Provisional Part II spine

The following is the common core under discussion, not a numbered
outline:

$$
\text{functions}
\longrightarrow \text{continuity}
\longrightarrow \text{differentiation}
\longrightarrow \text{integration of continuous functions}
\longrightarrow \text{FTC}
\longrightarrow \text{OPEN post-FTC work}.
$$

The order through FTC follows the mathematics of the proposed integral:
the integral is characterized axiomatically, constructed for continuous
functions, and only then related to differentiation. In particular,
integration cannot precede continuity in this design.

What follows is a coverage ledger. It intentionally distinguishes
theory the course should probably own from examples that might make the
theory memorable.

## Theory ledger

### 1. Functions as whole objects

Owned by `purpose-ch7.md`.

- Domain, codomain, equality, image, preimage and restriction.
- Composition, inversion, pointwise arithmetic and order.
- Tables, formulas, graphs, algorithms, implicit and parametric
  descriptions, and infinite representations as presentations rather
  than definitions.
- Rational functions as the function analogue of the rationals: a
  generated, computable and structured class that is nevertheless too
  small.
- Monotonicity, boundedness, extrema, level sets, symmetry, convexity
  and functional laws as candidate structures.
- The three main debts: coherent variation, tangent/rate, and
  area/accumulation.

### 2. Continuity: coherent variation

Core candidates:

- Pointwise and sequential definitions of continuity and limits of
  functions; one-sided limits where they do real work.
- Sequential characterization.
- Algebra of continuous functions and composition.
- Intermediate Value Theorem.
- Boundedness and Extreme Value Theorem on closed bounded intervals.
- Continuous monotone inverses.
- Uniform continuity and the Heine--Cantor theorem.
- Quantitative control sufficient for later integration.

Questions of emphasis:

- Whether classification of discontinuities is useful theory or chiefly
  exercise material.
- How many counterexamples are needed to separate continuity from
  boundedness, extrema, uniform continuity and differentiability.
- Whether a special theorem about continuous functional equations — in
  particular the exponential law — belongs here as a major application.
- Whether continuity of power-series sums is proved here or postponed
  to a collected power-series chapter.

### 3. Differentiability: local linear law

Core candidates:

- Derivative as tangent/rate and, where useful, as local linear
  approximation.
- Differentiability implies continuity.
- Sum, product, quotient, chain and inverse-function rules.
- Fermat's theorem, Rolle's theorem and the Mean Value Theorem.
- Monotonicity, constancy, extrema and error estimates from the MVT.
- Darboux's theorem for derivatives.
- Convexity and its relation to slopes, if Gamma or optimization needs
  it downstream.
- Finite Taylor polynomials with a rigorous remainder theorem.
- Newton's method and a convergence theorem, if computation remains a
  principal strand.

Questions of emphasis:

- L'Hopital's rule is standard and useful but not structurally central;
  it is an available cut before MVT, Taylor or the chain rule.
- Finite Taylor's theorem belongs naturally here even if infinite Taylor
  series are collected later.
- Term-by-term differentiation and analytic functions depend on the
  unresolved power-series architecture.
- Elementary uniqueness for equations such as $y'=cy$ and $y''=-y$
  may belong here; general ODE existence belongs with function spaces.

### 4. Integration: totals forced by local measurements

The present proposal permits this chapter to focus on continuous
functions on closed bounded intervals.

Core candidates:

- Axioms expressing normalization/length, additivity, order and
  trapping.
- Uniqueness of the integral from local bounds.
- Darboux construction and proof that every continuous function is
  integrable.
- Linearity, monotonicity, interval additivity and absolute bounds.
- Riemann sums as finite measurement and approximation, whether as the
  construction or as a consequence of the axioms.
- Area and selected geometric applications: arc length, volume, and the
  relation between the circle's area and perimeter constants.
- Improper integrals if required by the construction of arcsine, Gamma,
  or another selected example.

Questions of emphasis:

- How much geometry belongs in the main line rather than exercises.
- Whether monotone and piecewise-continuous integrands are admitted here
  without opening the full question of Darboux integrability.
- Whether numerical quadrature is a genuine computation strand or only
  a collection of exercises.
- The broader question "what else is integrable?" should be named but
  need not be answered before Part III if Daniell moves.

### 5. The Fundamental Theorem and immediate calculus

Core candidates:

- Signed integrals and the variable-upper-limit function
  $F(x)=\int_a^x f$.
- Continuity of the integral function and the mean value theorem for
  integrals.
- Both forms of the FTC.
- Existence and uniqueness of antiderivatives for continuous functions.
- Substitution and integration by parts.
- Taylor's theorem with integral remainder, if it earns a second proof.
- Integral constructions of important functions such as logarithm or
  inverse trigonometric functions.

Questions of emphasis:

- Term-by-term integration depends on the power-series decision.
- A catalogue of integration techniques is not automatically part of
  the analysis story.
- Elementary separable and linear ODEs are available applications, but
  a general ODE cookbook would compete with the final examples.
- FTC is a mathematical climax whether or not it is the end of Part II.
  No later chapter should weaken its ending by treating it merely as a
  prerequisite.

### 6. Power series: architecture OPEN

Part I already owns the numerical foundations:

- radius of convergence and Cauchy--Hadamard;
- absolute convergence;
- arithmetic and Cauchy products;
- dominated convergence for numerical series;
- the equality of the constructed exponential, binomial limit and
  exponential series.

Part II must still decide where to establish:

- continuity inside the radius;
- behavior at boundary points and possibly Abel's theorem;
- term-by-term differentiation and integration;
- preservation of the radius under those operations;
- uniqueness of coefficients;
- Taylor series versus finite Taylor approximation;
- analytic functions versus smooth non-analytic functions;
- applications to exponential, logarithmic and trigonometric functions;
- optional applications such as generating functions.

Two clean architectures remain live:

1. **Distributed:** continuity in the continuity chapter;
   differentiation, coefficient uniqueness and Taylor questions in the
   differentiation chapter; integration and boundary evaluations after
   FTC. Benefit: each theorem is used when its governing property is
   learned. Cost: the single class and its controlling estimates are
   repeatedly reopened.
2. **Collected after FTC:** finite Taylor theory remains in
   differentiation, while the general theory of power-series functions
   is developed together once continuity, differentiation and
   integration are all available. Benefit: a coherent study of functions
   determined by local coefficient data. Cost: the property chapters
   lose a natural family of examples, and the collected chapter must
   have more identity than three term-by-term theorems.

The possibility of continuing beyond FTC reopens this decision; it does
not decide it. Avoid an accidental hybrid in which the full theory is
substantially developed three times and then summarized again.

### 7. Other ways functions are determined

These are mathematically important but should not automatically become
one miscellaneous chapter.

- **Functional equations:** distant values tied by laws such as
  $f(x+y)=f(x)f(y)$. Regularity can turn a law into uniqueness.
- **Differential equations and initial data:** a local law propagated
  through the domain. Elementary uniqueness is Part II material;
  Picard iteration and general existence naturally use complete
  function spaces.
- **Integral constructions:** accumulation defines functions even when
  no elementary formula is available.
- **Inverse functions:** a known monotone relationship determines a new
  function; logarithm and inverse trigonometric functions are central
  examples.
- **Algorithms:** bisection and Newton determine values together with
  error control.
- **Infinite products and continued fractions:** legitimate
  presentations, but they need a downstream client to justify theory in
  Part II.
- **Generating functions:** a useful application of coefficient
  uniqueness, probably an example or project rather than another theory
  strand.

The final organization must decide which of these are resolved in the
property chapters and which meet in later case studies.

## Example ledger

An example earns its place by doing identifiable work. The lists below
are candidates, not a promise to include a zoo.

### Recurring touchstones

| Example | Work it can do | Likely home(s) |
|---|---|---|
| Finite tabulated data and polynomial interpolation | Shows that data do not determine a formula without a structural restriction | Functions |
| Rational functions | Baseline generated class; domains, poles, algebra and local regularity | Functions through differentiation |
| $x\mapsto a^x$ | Carries Part I's constructed values into a whole function; connects dense data, functional equations, continuity, derivatives and computation | Functions, continuity, differentiation, later synthesis |
| Absolute value, roots and branch choices | Separates formulas, domains, inverses, continuity and differentiability | Functions through differentiation |
| Dirichlet's function | Shows the unrestricted definition has admitted functions with no nearby coherence | Functions or continuity; later integrability callback |
| Thomae's ruler function | Dense discontinuities without total disorder; tests sequential continuity and later integrability | Continuity; optional later callback |
| A continuous nowhere-differentiable function | Proves continuity does not secretly contain tangents | Boundary between continuity and differentiation |
| $e^{-1/x^2}$ extended by $0$ | Shows that all derivatives at one point need not determine a smooth function | Taylor/power series |
| Bisection and Newton | Contrasts reliability from continuity with speed from differentiability | Continuity and differentiation |
| The integral function $x\mapsto\int_a^x f$ | Converts accumulation into a new function and carries the FTC | Integration and FTC |

Only one example should normally carry each pathology. Dirichlet,
Thomae, Takagi/Weierstrass and the flat smooth function do different
jobs; they should appear where those jobs arise rather than all in the
opening function chapter.

### Construction and recognition examples

| Example | Possible story | Required machinery |
|---|---|---|
| Exponential | Reconcile real-power construction, infinite series, functional equation, derivative law, inverse and integral descriptions | Part I series; continuity; differentiation; inverse/FTC for log |
| Logarithm | A function arising as inverse, solution of a law, and accumulated reciprocal | Continuity, inverse functions, FTC |
| Sine and cosine | Reconcile circle/arc, inverse integral, ODE with initial data, addition laws, periodicity and power series | Geometry, continuity, differentiation, integration, FTC; power-series placement affects order |
| Error function, sine integral or Fresnel integral | Demonstrate that an integral can define and expose a meaningful function without an elementary formula | FTC; possibly improper integrals |
| Elementary ODE solutions | Show a differential law and initial value determining a function; expose finite-time blowup or failure of elementary formulas | Differentiation, FTC, inverse functions |
| Fibonacci generating function | Show a power series encoding a discrete table and coefficient uniqueness recovering it | Power-series algebra and uniqueness |

The special integral functions should not become a catalogue. At most
one should receive enough attention to make the construction method
memorable.

### Major payoff candidates

#### The circle, trigonometry and $\pi$

Possible components:

- rigorous construction of sine and cosine;
- addition formulas and periodicity from ODE uniqueness;
- Taylor series and reconciliation of representations;
- Gregory--Leibniz and a Machin-type acceleration;
- Wallis integrals and product;
- a rigorous Part-II proof of the Basel sum.

The full list is too much merely because every item concerns $\pi$.
A final arc must select a progression rather than tour unrelated methods.

The strongest Basel route found so far is Daniel Daners's one-variable
calculus proof. With

$$
A_n=\int_0^{\pi/2}\cos^{2n}x\,dx,
\qquad
B_n=\int_0^{\pi/2}x^2\cos^{2n}x\,dx,
$$

integration by parts produces a telescoping identity

$$
\sum_{k=1}^n\frac1{k^2}
=\frac{\pi^2}{6}-\frac{2B_n}{A_n},
$$

and the concavity bound $\sin x\ge 2x/\pi$ forces the error to zero.
This uses Part I limits and telescoping together with Part II
trigonometry, concavity and integration. Source: Daniel Daners, “A Short
Elementary Proof of $\sum 1/k^2=\pi^2/6$,” *Mathematics Magazine* 85
(2012), 361--364,
<https://doi.org/10.4169/math.mag.85.5.361>.

An alternative uses a finite cosine-sum identity, integration by parts
and the mean value theorem for integrals: Samuel G. Moreno, “A
One-Sentence and Truly Elementary Proof of the Basel Problem,”
<https://arxiv.org/abs/1502.07667>.

Euler's coefficient comparison from the infinite product for sine
should not be presented as a rigorous proof unless the sine product is
itself proved. Fourier/Parseval remains a later-book proof if Fourier
analysis retains its current home.

#### Gamma and the factorial table

Possible components:

- The values $n!$ do not determine a function between the integers.
- The recurrence $F(x+1)=xF(x)$ still does not determine a unique
  interpolation without an additional regularity condition.
- Euler's improper integral constructs $\Gamma(x)$.
- Integration by parts proves the recurrence.
- Log-convexity and the Bohr--Mollerup theorem characterize Gamma.
- $\Gamma(1/2)=\sqrt\pi$, Wallis, and Stirling create possible links to
  the circle and computation strands.

This is a particularly strong bookend to the opening interpolation
example: the initial table is insufficient, and a behavioral property
supplies uniqueness. It is not yet approved. A serious technical and
historical audit is required, and the chapter would need improper
integrals and convexity.

#### Exponential as the longest-running example

The exponential already has a detailed thread in
`exponential-thread.md`. Its Part II work may include:

- continuity from its construction or functional law;
- differentiability and the special normalization defining $e$;
- uniqueness under a functional equation plus regularity;
- agreement of real powers, compounding limits, power series,
  differential equations and inverse/integral logarithms.

This may be a recurring thread rather than a final example. Repetition
is justified only when each appearance resolves a different problem.

#### Further candidates, presently secondary

- A sharply chosen separable or linear differential equation, especially
  one with finite-time blowup.
- Arc length or tangent to Archimedes' spiral, if the historical source
  and mathematics genuinely connect to the chapter's question.
- Stirling's formula, either from Wallis and sum--integral comparison or
  as the computational conclusion of Gamma.
- A generating-function derivation whose purpose is not merely to
  reprove an easy recurrence.
- A special integral-defined function with a striking qualitative or
  computational consequence.

## Material that can move later or be cut

Postponing Daniell does not create an obligation to fill every available
page. Likely later-part material includes:

- general convergence of functions and the general theory of uniform
  convergence;
- completeness and completion of function spaces;
- general ODE existence by contraction/Picard iteration;
- Fourier series, Parseval and the function-space explanation of
  trigonometric expansions;
- general integration of discontinuous functions, MCT/DCT for functions,
  measure and almost-everywhere equivalence;
- differentiation under the integral sign — cut from Ch 11 as a proved
  tool (2026-08-21, after research; cited remark only there) and
  already scheduled in the Dec extending-chapter plan as a one-line
  DCT corollary; the cut and the landing spot agree;
- the Weierstrass factorization theorem and the rigorous infinite
  product for sine.

Available cuts if Part II becomes too large:

- a full taxonomy of discontinuities;
- L'Hopital's rule;
- a large numerical-quadrature unit;
- surface area and higher-dimensional volume beyond one decisive
  example;
- a catalogue of elementary integration techniques;
- a survey of special functions;
- a full elementary ODE cookbook;
- multiple methods for computing $\pi$ that do not form one argument;
- continued-fraction functions without a downstream use.

These are not judgments that the material is unimportant. They are
claims that standardness or availability alone does not give a topic a
place in this narrative.

## Live architecture questions

No question below is decided by this document.

1. Does Daniell open Part III as the motivating concrete problem, or
   follow a first chapter on metrics and completion?
2. Does Part II stop at FTC, continue through one synthesis chapter, or
   contain both a representation chapter and a final case-study chapter?
3. Are power series distributed across the property chapters or
   collected after FTC?
4. Is there a genuine late-Part-II chapter-level question such as “what
   determines a function?”, or is that better answered through examples
   placed in their natural property chapters?
5. Which two examples are strong enough to end the one-semester course?
   The current leading candidates are the circle--Wallis--Basel arc and
   Gamma--Bohr--Mollerup--Stirling, but neither pairing nor order is
   approved.
6. How much of trigonometry must be constructed inside the book before
   those examples are honest?
7. Which standard topics are genuinely required preparation for later
   parts, and which survive only from the previous edition's chapter
   structure?

## Next planning work

Before approving a Part II chapter list:

1. Build a dependency graph for the core theorems and the leading final
   examples.
2. Write two concrete power-series paths — fully distributed and fully
   collected — at section-level resolution, without recommending either
   in advance.
3. Audit the Gamma/Bohr--Mollerup route for length and prerequisites.
4. Audit the Daniell construction mathematically and compare the two
   possible Part III placements.
5. Choose the desired course-ending experiences before deciding how
   much optional theory can fit before them.

The purpose of those audits is not to maximize coverage. It is to find
the smallest body of theory that tells the function story fully and
earns a genuinely memorable ending.
