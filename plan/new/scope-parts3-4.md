# Scope and Difficulty Charter for Parts III and IV

Status: working scope ruling from the 2026-08-21 discussion, revised by the
2026-08-22 lean-core decision in `decision-lean-second-half.md`. This document
does not replace the chapter architectures in part3-spaces.md and
part4-solutions.md. It records how difficult their material is intended to
be, which special cases should carry the theory, and how optional
generalizations can remain visible without distracting from the main book.

The intended audience is advanced undergraduates or beginning master's
students. Parts III and IV should be distinctly more mature than Parts I
and II, but they should not become a compressed graduate survey of measure
theory, functional analysis, harmonic analysis and PDE.

---

## The intended ramp

Parts I and II form a first rigorous encounter with analysis through numbers
and individual functions. Parts III and IV move roughly one course level
further:

- Part III studies spaces whose points are functions or generalized
  functions.
- Part IV uses those spaces to construct solutions.

The increase in difficulty should come from deeper uses of a small number of
ideas, not from a succession of unrelated abstractions.

The later parts will necessarily ask students to coordinate several kinds
of convergence, to accept points defined by completion or equivalence, and
to reason about functions through their coordinates or their action on test
functions. That is the desired increase in maturity.

The undesired increase is technical breadth: general Banach-space theory,
general measure theory, general Sobolev theory, general operator theory and
general distribution theory all appearing because they are standard in
later courses.

The working difficulty judgment is:

- the ordinary metric, basis and ODE material is a manageable
  continuation of the first half;
- Daniell integration, the observer-to-distributions transition, Fourier
  inversion and tempered distributions are the genuine load points;
- the maximal lists of applications in the planning documents cannot all
  become core;
- the restricted routes below are appropriate for the intended audience.

---

## The abstraction budget

The second half should feel as though it repeatedly uses four fundamental
ideas:

1. **Completion and density:** completion supplies missing limits; a dense
   calculable core keeps the resulting world accessible and lets continuous
   operations extend uniquely.
2. **Hilbert geometry:** orthogonality, projection and coordinates turn
   approximation and equations into scalar calculations.
3. **Stable observation:** continuous linear functionals reveal information
   that norm convergence can miss and motivate test-function duals.
4. **Distributions:** an object can be defined by its action on sufficiently
   smooth tests, making differentiation continuous and admitting point
   sources.

Part IV should mostly spend these ideas. Matrix exponentials, Green
operators, Fourier transforms, sinc bases and fundamental solutions are
constructions motivated by equations; they need not each open a new
abstract theory.

The recurring slogan is:

> **Complete worlds remain accessible when simple objects are dense.**

The model is $\mathbb Q\subset\mathbb R$, together with finite decimals as
an even more visibly calculable dense subset. Later appearances must always
specify the topology or norm and verify that the operation being extended is
continuous there. This pairing of completion with density is the principal
narrative guide for Part III.

### The principal concrete spaces

The working core should remain concentrated in:

- \(\mathbb R\), \(\mathbb C\) and finite-dimensional \(\mathbb R^n\);
- \(C[a,b]\) with the sup norm and selected integral or
  derivative-sensitive distances;
- \(L^1\) and \(L^2\), with \(L^\infty\) used only where naturally needed;
- \(L^2(\mathbb T)\) and the trigonometric basis;
- \(C^\infty(\mathbb T)\) and periodic distributions;
- one zero-boundary energy space for a one-dimensional variational
  problem;
- Schwartz space \(\mathcal S(\mathbb R)\) and tempered distributions
  \(\mathcal S'(\mathbb R)\).

Conceptually, students should experience these as only three families:
continuous functions, $L$-spaces, and distribution spaces. The one
zero-boundary energy space is a problem-specific $L^2$-based completion,
isometric through $u\mapsto u'$ to the mean-zero subspace of $L^2$, not the
beginning of a Sobolev catalogue. Conditions defining subspaces are not new
conceptual worlds. Additional kinds of space should require a named problem
that cannot be handled inside these families.

### What is not part of the core abstraction budget

- general point-set topology;
- a catalogue of Banach spaces;
- general \(L^p\) duality;
- Hahn–Banach, Banach–Alaoglu and reflexivity in their general forms;
- a general theory of locally convex spaces;
- a scale of Sobolev spaces;
- general bounded-operator or unbounded-operator spectral theory;
- singular Sturm–Liouville theory;
- general products and convolutions of distributions;
- a general theory of semigroups;
- a general PDE existence or regularity theory.

These subjects may be named when the special case points directly toward
them, but their terminology should not invade the proof unless it is used
again.

---

## A chapter-level difficulty budget

Each later chapter should normally contain:

1. one concrete problem that opens the chapter;
2. one substantial new construction or viewpoint;
3. one principal difficult theorem;
4. one or two complete payoffs;
5. a clear exit question.

A chapter should not contain several independent abstract theories merely
because they share a conventional subject label.

In particular:

- a short chapter with one abstraction is preferable to a compressed
  chapter with three;
- reducing the number of chapters is not itself a reduction in difficulty;
- examples and calculations are part of the mathematical argument, not
  decorative relief after the theory;
- a major theorem should be used before the chapter ends;
- an idea that appears only once is a candidate for removal or for an
  end-of-chapter note.

The chapter budget is a diagnostic, not an inflexible template. Some
chapters may prove two closely linked results or spend an earlier theorem
without adding a new abstraction.

---

## Part III: restricted routes

### Chapter 14 — Functions Become Points

Core setting:

- \(C[a,b]\) with the sup and integral distances;
- selected examples in \(\mathbb R^n\), \(\ell^2\) or sequence spaces only
  when they clarify the definitions;
- convergence, Cauchy sequences, completeness and continuous maps.

Main theorem:

- completeness of \(C[a,b]\) in the sup norm.

Principal failure:

- incompleteness of continuous functions in integral distance.

Keep out:

- a general topology course;
- general equivalence of finite-dimensional norms;
- the theory of Banach algebras and bounded operators.

### Chapters 15–16 — The Integral and the World It Creates

Core setting:

- begin with the positive integral on continuous functions already built in
  Part II;
- carry out the Daniell enlargement on a compact interval or circle;
- prove the monotone and dominated convergence results actually needed;
- construct the relevant \(L^1\) and \(L^2\) spaces;
- explain a.e. equality and completeness.

The main new ideas are the extension of the integral and the completed
spaces it creates. The notation \(L^p\) should not force a systematic survey
over all \(p\).

Keep out unless a later proof requires it:

- general sigma-finite measure spaces;
- Radon–Nikodym;
- signed and complex measures;
- abstract product measure;
- a catalogue of \(L^p\) inequalities.

One unresolved technical client is Fubini–Tonelli for the Fourier transform.
Enough product integration must be proved either here or locally in Part
IV, but it should be sized to the actual convolution and transform
arguments.

Keeping the operation and the completed world in two chapters may improve
pacing even if their total content could be compressed. The question is
abstraction density, not chapter count.

### Removed route — How Functions Escape

Keep one concrete bounded sequence with no strongly convergent subsequence
as a diagnostic of infinite-dimensional behavior. Do not develop
equicontinuity, Arzelà–Ascoli or a separate compactness chapter. Peano and
the compact-operator clients have also left the core.

### Chapter 18 — Choosing the Right Coordinates

Core setting:

- finite-dimensional projection and Gram–Schmidt;
- orthonormal systems in \(L^2\);
- Bessel, Parseval and completeness;
- a small collection of bases selected by tasks;
- trigonometric completeness and \(L^2\) Fourier convergence;
- Gaussian quadrature as a major computational payoff.

Keep the gallery functional:

- monomials for differentiation and integration;
- Lagrange functions for sampling and quadrature;
- Legendre polynomials for orthogonal approximation and Gaussian
  quadrature;
- trigonometric functions for periodicity and differentiation;
- perhaps one local basis such as Haar.

Chebyshev, Bernstein and further systems should remain only if each performs
a distinct job. Avoid general Schauder-basis theory, unconditional bases and
operator-selected bases before an equation demands them.

### Observer bridge — chapter status open

Core setting:

- separable Hilbert spaces;
- continuous linear functionals;
- Hilbert-space Riesz representation;
- only the amount of weak-convergence language that materially shortens the
  route to distributions.

There is no weak compactness theorem. The live choices are: omit a general
weak-convergence definition, give one definition and one orthonormal
example, or fold the observer material directly into distributions.

Keep out:

- general Banach-space duality;
- Hahn–Banach;
- Banach–Alaoglu;
- reflexive-space theory;
- a survey of weak-star convergence.

The Uniform Boundedness Principle and Fourier divergence lie beyond the
lean core.

### Chapter 20 — Beyond Functions

Core setting:

- \(C^\infty(\mathbb T)\);
- convergence given concretely by uniform convergence of every derivative;
- periodic distributions as continuous linear functionals on those tests;
- regular distributions, delta and concentrating approximate identities;
- distributional derivatives and their continuity;
- compatibility of \(T'=S\) on the circle.

This is one construction of distributions, not an introduction to every
distribution space. Avoid a general discussion of locally convex topology.
Continuity may be phrased through the concrete finite-derivative estimates
actually used.

Defer:

- \(\mathcal D'(\mathbb R)\);
- Schwartz space and tempered distributions;
- Fourier transforms of distributions;
- general distribution convolution;
- fundamental solutions.

These return in Part IV when equations on the line require them.

---

## Part IV: restricted routes

### Chapter 21 — Ordinary Differential Equations

Core setting:

- finite-dimensional matrix spaces;
- \(C(I,\mathbb R^n)\) with the sup norm;
- continuous right-hand sides that are locally Lipschitz in the state
  variable.

Core mathematics:

- matrix exponentials and linear systems;
- the integral form of a nonlinear initial-value problem;
- Picard–Lindelöf;
- Grönwall and continuous dependence.

A rigorous Euler-method error analysis and short stability comparison remain
possible because they reuse Grönwall. Peano existence is removed with the
Arzelà–Ascoli route.

Keep out:

- general flows on Banach spaces;
- semigroup theory;
- a catalogue of numerical methods;
- qualitative dynamical-systems theory unrelated to the chapter's
  existence and stability questions.

### Chapter 22 — Variational Problems

Core setting:

- classical one-dimensional functionals;
- one zero-boundary energy space obtained by completion;
- one quadratic functional.

Core mathematics:

- the first variation and Euler–Lagrange equation;
- one or two classical problems;
- Poincaré's inequality;
- existence and uniqueness for the quadratic energy through Riesz;
- identification of the weak and classical solution in one dimension;
- the isoperimetric inequality through Fourier/Wirtinger.

The quadratic Riesz route is the core existence proof. The direct method is
not shown as a second proof: both methods require the same energy space, but
the direct method additionally requires weak compactness and lower
semicontinuity machinery.

Keep out:

- a general Sobolev-space chapter;
- general weak derivatives in several dimensions;
- the general direct method;
- general lower-semicontinuity and coercivity theory;
- nonlinear regularity.

The text may identify the energy space as \(H_0^1(0,1)\) after students have
used it. Before that, define it concretely as the completion of zero-boundary
$C^1$ functions in $\|u'\|_2$ and identify it through the derivative with
$\{g\in L^2:\int_0^1g=0\}$. The name should situate the example, not
initiate a survey.

### Chapter 23 — Eigenfunction Expansion

#### Core lecture route

The chapter is complete at the conceptual level through the Fourier case:

1. expand the uniform string in the already established Fourier basis;
2. solve the independent coefficient ODEs;
3. justify convergence and the appropriate energy statement;
4. show that the basis works because its elements are eigenfunctions of the
   spatial operator;
5. change to a variable-coefficient problem and show that the explicit
   Fourier modes disappear.

This route gives the chapter's central idea even if the general theorem is
omitted in lecture.

The Fourier-series theorem for periodic distributions and the calculation

\[
P(in)\widehat u(n)=\widehat f(n)
\]

may form a short immediate payoff. They do not constitute a separate
Fourier chapter.

#### Second explicit system and Looking Forward

After completing Fourier, develop or assign a second system whose pieces can
be constructed explicitly:

- Legendre polynomials as an extended exercise or project, with polynomial
  density proving completeness; or
- the quantum harmonic oscillator, with ladder operators producing Hermite
  functions and completeness paid later by Fourier uniqueness.

The compact self-adjoint spectral theorem is stated only in a Looking
Forward section. Explain accurately that differential problems are usually
connected to it through a compact shifted inverse or Green operator. Do not
develop compact operators, the theorem's proof, or a nonexplicit regular
boundary problem.

Keep out:

- full regular Sturm–Liouville theory;
- singular endpoints;
- Prüfer transformations and oscillation theory;
- general Fredholm theory;
- the spectral theorem for unbounded operators;
- the claim that all classical orthogonal polynomials follow from the
  regular compact-interval case.

### Chapter 24 — Fourier Transform

Core setting:

- Schwartz functions as the class on which all calculations are safe;
- \(L^1\) for the classical integral transform and convolution where
  needed;
- \(L^2\) for Plancherel and sampling.

Core mathematics:

- translation, modulation, dilation and differentiation;
- convolution;
- one proof of inversion;
- one proof of Plancherel;
- the Gaussian transform;
- Poisson summation and the theta transformation;
- exact sinc sampling as the leading applied payoff if it fits.

Sampling should be proved through the Hilbert basis of
\(L^2[-\Omega,\Omega]\), not introduced as a formal multiplication by a
Dirac comb. The comb may return after the proof to explain aliasing.

Uncertainty is a natural companion because its proof uses only integration
by parts, Cauchy–Schwarz and Plancherel. Time-frequency concentration is an
optional second use of compact spectral theory.

Keep out:

- a general \(L^p\) Fourier theory;
- interpolation;
- a multiplier-theorem survey;
- maximal functions and pointwise convergence theory;
- a catalogue of signal-processing applications.

The Gaussian, theta identity and sampling are current core candidates.
Weyl equidistribution, the central-limit result, classical sinc integrals
and the Borwein integrals should be selected as exercises or guided
explorations rather than accumulated automatically.

### Chapter 25 — Generalized and Fundamental Solutions

Core setting:

- \(\mathcal S(\mathbb R)\) and \(\mathcal S'(\mathbb R)\);
- constant-coefficient differential operators;
- only those products and convolutions of distributions whose definitions
  are needed and justified.

Core mathematics:

- tempered distributions as the same observer construction already learned
  on the circle, now with a Fourier-invariant test space;
- Fourier transformation by duality;
- transforms of delta, constants, exponentials and derivatives;
- \(LG=\delta\);
- convolution with \(G\) to solve \(Lu=f\);
- one full heat-kernel solution, with wave propagation as a possible
  contrast.

Keep out:

- general distribution products;
- a maximal convolution theory;
- the Malgrange–Ehrenpreis theorem;
- general variable-coefficient PDE;
- Sobolev regularity theory;
- unbounded-operator semigroups.

The notation \(e^{tD^2}\) may appear after the heat solution has been
constructed. It should summarize the solution rather than substitute for
it.

Chapters 24 and 25 are provisionally two chapters. They may become three if
inversion, Plancherel, sampling, tempered distributions and fundamental
solutions cannot be proved without crowding. Expansion is preferable to
technical compression.

---

## Two legitimate lecture routes

### Core route

The core route omits the proof of the compact spectral theorem and replaces
the nonexplicit spectral problem by explicit examples.

Students still receive:

- the full Fourier eigenfunction expansion of a uniform problem;
- the conceptual reason eigenfunctions decouple an equation;
- a second explicit system, with Legendre and the harmonic oscillator the
  recorded possibilities;
- Fourier transformation on the line;
- sampling, if retained in the core;
- distributions and fundamental solutions.

This is a complete narrative, not a damaged version of the book.

### Looking Forward route

The end of the eigenfunction discussion states the compact self-adjoint
theorem, explains the compact-inverse bridge, and identifies the questions
the explicit examples do not answer. It introduces no proof machinery and
has no later core dependencies.

Other substantial optional results should follow the same rule: an
instructor may omit the proof without breaking the later core.

---

## How to acknowledge the larger theory

The book should identify natural generalizations without scattering
advanced terminology through the narrative.

A short section near the end of selected chapters can explain:

1. which hypotheses made the chapter's case simple;
2. what remains true in a broader setting;
3. what new difficulty requires additional theory.

The name of this section is deliberately unsettled. Current candidates
include:

- **How Far This Goes**;
- **The Wider Theory**;
- **Beyond the Case at Hand**;
- **In a Broader Setting**.

Avoid the title **Extensions and Limits**, whose words already have
technical meanings in an analysis course.

These sections should normally be one or two pages and introduce no
machinery required later. They are different from starred sections:

- a starred section contains mathematics that can actually be studied and
  proved as an optional route;
- the short concluding section situates the proved case inside a larger
  subject.

A useful paragraph states the special case first and names the general
theorem second. For example:

> We proved the result for a positive integral operator with a continuous
> symmetric kernel. The same spectral conclusion holds for every compact
> self-adjoint operator on a Hilbert space. Treating the differential
> operator directly requires attention to its domain, and on noncompact
> spaces the spectrum need not remain discrete.

This gives an accurate map without beginning a lesson on domains,
resolvents or spectral measures.

Do not add such a section mechanically to every chapter. It belongs only
where the restricted case hides an important and intelligible boundary.

---

## Reuse should replace proliferation

The same ideas and examples should return in different roles:

- completeness builds \(L^1/L^2\), proves Picard and supports series of
  functions;
- Hilbert Riesz describes stable observers and proves the one quadratic
  variational existence theorem;
- the Fourier basis gives approximation in Spaces, solves a string in
  Solutions and becomes the model for the Fourier transform;
- distributions repair differentiation on the circle and later admit point
  sources on the line;
- the Gaussian is a Fourier eigenfunction, the heat kernel, the optimizer
  in uncertainty, the stable law under convolution and the source of the
  theta identity.

This recurrence is the principal defense against abstraction fatigue.
Students should increasingly recognize old ideas inside new problems.

---

## Classical payoffs are part of the scope control

Concrete results are not extras to be added after the theory. They justify
the chosen level of theory and let the later book look back at simpler
questions.

The strongest current allocations are:

- **Variations:** the isoperimetric inequality;
- **Eigenfunction Expansion:** the periodic Green-function identity
  \[
  \sum_{n\in\mathbb Z}\frac1{n^2+a^2}
  =\frac{\pi}{a}\coth(\pi a),
  \]
  with Basel as a limiting return;
- **Fourier Transform:** the Gaussian transform, Poisson summation and the
  theta identity;
- **Fourier applications:** exact sampling and uncertainty;
- **Fundamental Solutions:** the Gaussian heat kernel and its convergence
  to delta.

Secondary computations such as sinc integrals, Borwein products,
equidistribution and a carefully stated central-limit result belong in
exercises or guided explorations unless one displaces a current core
payoff.

At this level, solving the heat equation can play the role that computing
\(\pi\) played earlier: the result is not elementary arithmetic, but it is
a complete and visible accomplishment made possible by the new theory.

---

## Warning signs that the scope has broken

Reconsider a chapter if:

- it introduces more than one genuinely new kind of space;
- it contains several major theorems with unrelated proof engines;
- a named theory appears only once and has no later client;
- the motivating problem disappears for most of the chapter;
- the principal theorem is not used before the chapter ends;
- an optional theorem becomes an undeclared prerequisite later;
- examples are presented only after a long abstract development;
- phrases such as “under appropriate conditions” replace a theorem whose
  hypotheses the book cannot prove;
- the chapter needs a large taxonomy of cases before reaching its first
  result;
- the application list grows while no application receives a complete
  proof;
- a shorter chapter is merged merely to reduce the chapter count.

### Order of cuts when a chapter is too large

1. Remove the application catalogue.
2. Move broad generalizations to the short concluding section.
3. Restrict the main theorem to the cases actually used.
4. Move a difficult theorem and its dependent applications to a starred
   route.
5. Split the chapter if the remaining core still contains two distinct
   mathematical climaxes.

Do not begin by cutting the motivating example, the proof of the main
theorem, or the first substantial payoff. Those are the chapter.

---

## Drafting audit for every later chapter

Before a section list is approved, answer:

1. What is the opening problem?
2. Which previously established idea nearly solves it?
3. What exactly fails?
4. What is the one new construction?
5. What is the principal theorem, with its actual hypotheses?
6. Which proof engine does it use?
7. What problem is solved immediately afterward?
8. Which later chapter uses the result again?
9. Which material is optional in lecture?
10. Can that optional material be skipped without breaking the core route?
11. Which broader theorem should be mentioned but not developed?
12. What named topic can be removed without changing the story?

The answer to Question 12 should rarely be “nothing.” A healthy planning
document normally contains more possibilities than the finished chapter.

---

## Current ruling

The scope is manageable if the book follows the restricted routes in this
document.

In particular:

- drop the Arzelà–Ascoli chapter and Peano existence;
- drop weak subsequential compactness and decide how little weak-convergence
  language is needed before distributions;
- construct distributions carefully only on the circle before adapting the
  idea to Schwartz tests;
- prove one quadratic variational existence result rather than the general
  direct method;
- make the Fourier eigenfunction solution the complete core of Chapter 23;
- follow Fourier with a second explicit system: Legendre as a project or the
  harmonic oscillator, with Hermite completeness paid in Fourier;
- state the compact spectral theorem only in Looking Forward;
- plan Fourier transform and fundamental solutions as two chapters while
  allowing them to expand into three;
- use short end-of-chapter discussions to identify larger theories without
  importing their machinery.

This is the target: the mathematics becomes deeper because the same ideas
are being used at a higher level, not because the reader is asked to learn
every abstraction that a specialist knows.
