# Decision Record — A Leaner Second Half

Status: scope ruling from the 2026-08-22 discussion. This records both the
decision and the architecture it replaces so that later reconsideration can
recover the real alternatives rather than reconstructing them from fragments.

## Governing priority

The overriding priority for Parts III and IV is a small conceptual load for
students. The later mathematics should be serious because a few ideas are
used deeply and repeatedly, not because the text assembles every standard
existence and compactness method.

The strongest working version of the space budget is that students should
have to inhabit only three kinds of world:

1. continuous-function spaces;
2. $L$-spaces, principally $L^1$ and $L^2$, understood as variations of one
   construction rather than separate conceptual worlds;
3. distribution spaces, likewise allowed to have more than one choice of
   test functions without becoming unrelated theories.

Technical classes or hypotheses may still occur, but they should not become
additional spaces whose geometry, convergence and completeness students
must keep active. In particular, the notation $L^p$ must not silently turn
one chosen space into a survey of the whole scale.

This is a budget of **kinds of space**, not a ban on subspaces defined by
conditions. Fixed endpoint values, derivative conditions, symmetry,
periodicity and similar restrictions are inexpensive when expressed in the
continuous or $L^2$ language already in use.

This priority resolves several previously open forks in favor of the lean
route.

## The previous working architecture

The previous plan contained a coherent compactness route:

1. **Arzelà–Ascoli** restored strong subsequential convergence for bounded,
   equicontinuous families in $C[a,b]$.
2. **Peano existence** used Euler polygons, uniform bounds and
   Arzelà–Ascoli to prove local ODE existence for a continuous right-hand
   side, without uniqueness.
3. **Hilbert weak subsequential compactness** restored subsequences for
   bounded sequences after weakening the notion of convergence.
4. **The direct method** used a bounded minimizing sequence, weak
   compactness and lower semicontinuity to produce a variational minimizer.
5. **The compact self-adjoint spectral theorem** used weak compactness and
   compact operators to produce nonexplicit eigenfunction bases.

Together these results illustrated the important general scheme

$$
\text{approximate}
\longrightarrow
\text{obtain a priori bounds}
\longrightarrow
\text{extract a convergent subsequence}
\longrightarrow
\text{pass to the limit}.
$$

This is a mathematically unified route even though Arzelà–Ascoli and weak
Hilbert compactness provide different forms of convergence. It remains a
legitimate alternative design for a later edition or a more advanced course.

## The ruling

The following material is removed from the core:

- the proof and use of Arzelà–Ascoli;
- Peano's existence theorem;
- weak subsequential compactness of bounded Hilbert-space sequences;
- the direct method, including general coercivity and weak lower
  semicontinuity machinery;
- the proof of the compact self-adjoint spectral theorem and the associated
  nonexplicit Sturm–Liouville route.

The replacements are deliberately problem-specific and reuse machinery that
the book already needs:

- **ODE existence:** Picard–Lindelöf by contraction, followed by Grönwall
  and continuous dependence. Numerical Euler analysis remains a possible
  application because it uses estimates rather than Arzelà–Ascoli.
- **Calculus of variations:** retain the first variation,
  Euler–Lagrange equation and one quadratic existence theorem by Riesz. Both
  this proof and the discarded direct-method proof require the same
  derivative-sensitive energy space; that need comes from the functional,
  not the proof technique. Introduce only the one zero-boundary completion
  demanded by the problem, relate it immediately to the $L^2$ world, and do
  not develop a Sobolev scale. If $u$ represents the forcing functional in
  the energy inner product, then
  $$
  J(v)=J(u)+\frac12\|v-u\|_V^2,
  $$
  giving existence and uniqueness without weak compactness or lower
  semicontinuity machinery.
- **Eigenfunction expansion:** complete the explicit Fourier case and study
  a second system whose components can be constructed by hand. The two live
  possibilities are:
  - Legendre polynomials as an extended exercise or project, with
    completeness supplied by polynomial density;
  - the quantum harmonic oscillator as a developed example, with Hermite
    completeness explicitly deferred and paid in the Fourier-transform
    chapter through Fourier uniqueness.
  The compact self-adjoint theorem is stated and situated only in a
  **Looking Forward** discussion. For differential operators, the accurate
  bridge is normally through a compact shifted inverse or Green operator,
  not by calling the differential operator itself compact.

## What is not lost

The core still contains serious functional analysis:

- complete normed spaces and completions;
- $L^1$ and $L^2$;
- Hilbert geometry, projection, orthonormal systems and Parseval;
- continuous linear functionals and Hilbert-space Riesz representation;
- an explicit comparison between norm convergence and convergence under
  selected observations, to the extent retained after the observer audit;
- distributions as continuous linear functionals on test functions;
- explicit spectral decompositions, Fourier series and Fourier transform;
- construction of solutions by contraction, Riesz representation, explicit
  eigenfunction expansion, transformation and convolution.

The principal conceptual spine becomes

$$
\text{simple calculable objects}
\longrightarrow
\text{completion in a chosen notion of closeness}
\longrightarrow
\text{access through density and continuous extension}
\longrightarrow
\text{generalized functions and solutions}.
$$

Equivalently:

> **Complete worlds remain accessible when simple objects are dense.**

This is now the governing theme of Part III, not merely one tool in the
Fourier chapter. It should be recalled explicitly from finite decimals and
$\mathbb Q\subset\mathbb R$. Every use must name the relevant notion of
closeness, and every extension from a dense subset must prove the operation
continuous in that notion of closeness. The failure of continuity is itself
a narrative event: ordinary differentiation, for example, cannot be
extended from a sup-norm dense class by density alone.

A recurring ledger should record, without forcing final chapter placement:

- the small calculable class;
- the ambient completion and its metric or norm;
- the density theorem connecting them;
- the operations that extend continuously.

## The observer-to-distributions question remains open

This ruling removes the difficult weak-compactness theorem. It does **not**
yet decide how much weak-convergence language should remain before
distributions.

The desired direction is as direct a route as possible from the $L^1/L^2$
world to distributions. Three levels remain available for discussion:

1. **Minimal observers.** Introduce continuous linear functionals and prove
   Hilbert Riesz; move almost immediately to smooth test functions and their
   duals. Do not install weak convergence as a general theory.
2. **A short weak bridge.** Define weak convergence, compare it with norm
   convergence using an orthonormal sequence, and use concentrating bumps to
   show that the limiting observations need not be represented by an $L^2$
   function. Prove no weak compactness theorem.
3. **A combined chapter.** Fold the necessary observer language into the
   construction of distributions, so every definition is motivated by the
   generalized limit it immediately creates.

No choice among these three is made here. Chapter numbering should not be
finalized until this joint is settled.

## The $L$-space family

$L^1$ and $L^2$ are both retained. At the level of this course they should
feel like instances of one construction: functions satisfying an
integrability condition, identified almost everywhere, with the exponent
selecting what size is measured. $L^1$ carries the completed integral world;
$L^2$ adds Hilbert geometry.

The one derivative-sensitive zero-boundary energy space required by the
quadratic variational problem is a real additional completion, regardless
of whether Riesz or the direct method proves existence. The lean treatment
should present it concretely as the completion of zero-boundary $C^1$
functions in the norm $\|u'\|_2$, or equivalently as the mean-zero closed
subspace of $L^2$ seen through the derivative coordinate. It is therefore
an $L^2$-type condition rather than a fourth conceptual world. Name the
broader Sobolev theory only afterward and introduce no Sobolev scale.

## Density architecture still to be settled

The completion-and-density theme is settled, but the order of its particular
theorems is not. The 2025 notes preserve two legitimate ways to pay for
completeness of the explicit systems:

- prove ordinary Weierstrass approximation earlier, by Bernstein
  polynomials, and optionally state or prove Stone–Weierstrass;
- prove Fejér first, obtain trigonometric density and Fourier completeness,
  then derive ordinary Weierstrass approximation and use it for Legendre
  completeness.

The second route matches the possible order “complete Fourier first, then
work through Legendre.” This decision record does not choose between the two
density architectures.

## What would justify reconsideration

The compactness route should return only as a package with repeated clients,
not one theorem at a time. Strong reasons would include a decision that the
book should centrally teach the approximation–bounds–compactness–limit
method through at least two of:

- Peano existence;
- the direct method for a genuinely nonquadratic variational problem;
- compact integral operators and a proved spectral theorem;
- another core existence theorem that cannot be reached naturally through
  contraction or Riesz.

Absent such repeated use, these results belong in Looking Forward notes,
projects, or a subsequent course.

## Documents superseded at this point

This ruling supersedes the active-plan passages that treated:

- the seven-chapter Part III shape as settled;
- **How Functions Escape** as a core Arzelà–Ascoli chapter;
- weak Hilbert Bolzano–Weierstrass as the climax of the observer chapter;
- Peano as a live addition to ODEs;
- Riesz and the direct method as competing core variational proofs;
- the compact spectral theorem as the preferred middle route.

The older 2025 plans remain source material for all of these discarded
routes. Nothing in this decision record calls those mathematics mistaken;
the ruling is about conceptual budget and narrative concentration.
