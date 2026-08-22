# Part IV — Solutions: Working Architecture

Status: working agreement from the 2026-08-21 narrative discussion, revised
by the 2026-08-22 lean-core ruling in `decision-lean-second-half.md`. Part IV
currently has five mathematical movements, though final chapter numbers wait
on the compressed Part III shape. Peano, the direct method, weak compactness
and the proof of the compact self-adjoint spectral theorem are no longer
core. The last two movements jointly contain Fourier transform, sampling,
tempered distributions and fundamental solutions and may still divide when
the proofs are drafted.

Eigenfunction expansion now proceeds through systems whose pieces can be
written down: the complete Fourier case followed by either Legendre as an
extended project or the quantum harmonic oscillator as a developed second
example. The general theorem belongs only in Looking Forward.

Working chapter names below are mathematical content labels, not title
candidates.

Sources consulted:

- ../2025-plans/overview-part3.md
- ../2025-plans/part3-ideas/part_iii_outline.md
- ../2025-plans/part3-ideas/part-iii-functional-analysis-outline-v1.md
- ../2025-chapters/12-function-space/03-optimization.md
- ../2025-chapters/12-function-space/04-regularization.md
- ../2025-chapters/13-fourier/
- ../2025-chapters/14-diffeq/
- ../2025-chapters/15-distributions/
- ../../claude-notes.md
- ../MAP.md

---

## The job of Part IV

Parts I–III move from numbers, to functions, to spaces of functions and
generalized functions. Part IV asks what equations those spaces allow us to
solve.

Its principal methods are:

1. iteration;
2. minimization;
3. eigenfunction expansion;
4. Fourier transformation;
5. convolution with a fundamental solution.

These are not five items in a survey. Each enters because a concrete problem
cannot be solved by the methods available before it.

The standard for inclusion is:

- What exact theorem will students prove?
- Which earlier results does the proof use?
- What new problem becomes solvable afterward?
- Is that payoff worth the definitions and technical work?
- Does the result return later, or is it an isolated monument?

Part IV is written for advanced undergraduates or beginning master's
students. A proof may be difficult, but its hypotheses and purpose must
remain visible. The part should prefer one complete theorem with several
uses to a catalogue of theories.

The final application in the book need not be presented as the pinnacle of
analysis. A good ending solves a serious problem completely, then makes
visible the questions the present theory still cannot answer.

---

## What Part III hands forward

Part III is expected to provide:

- complete metric and normed spaces;
- the contraction principle, at least in a form that can be recalled;
- the integral, dominated and monotone convergence, and the required
  \(L^1\) and \(L^2\) spaces;
- Hilbert-space geometry, projection, orthonormal systems and Parseval;
- completeness of the trigonometric system in \(L^2(\mathbb T)\);
- only the stable-observer or weak-convergence language retained by the
  final observer-to-distributions audit;
- Hilbert-space Riesz representation;
- periodic distributions and continuous distributional differentiation.

Part IV introduces only when a problem demands them:

- matrix exponentials;
- one derivative-sensitive Hilbert space for a variational problem;
- one explicit non-Fourier eigenfunction system, if retained;
- the Fourier transform on \(\mathbb R\);
- Schwartz functions and tempered distributions;
- bandlimited spaces and sinc coordinates;
- fundamental solutions.

One technical dependency is not yet assigned. A rigorous Fourier-transform
development needs enough Fubini–Tonelli theory for absolutely integrable
functions on product spaces. This can be supplied near the end of the
integral construction in Part III or proved locally when convolution and
Fourier inversion demand it. It does not require backfilling Parts I–II.

---

## Working five-chapter shape

With Part III ending at Chapter 20, the working shape is:

| Ch. | Mathematical identity | Short narrative | Main result or experience |
|---|---|---|---|
| 21 | **Ordinary Differential Equations** | An instantaneous law becomes a trajectory by exponentiation or iteration. Completeness proves that the nonlinear iteration arrives, while Grönwall controls how errors propagate. | Matrix exponentials; Picard–Lindelöf; continuous dependence. |
| 22 | **Variational Problems** | Some solutions are not generated forward in time but selected by minimizing length, time or energy. Necessary equations are only half the problem; analysis must also explain why a minimizing function exists. | Euler–Lagrange plus one honest existence theorem; isoperimetric inequality as a major classical payoff. |
| 23 | **Eigenfunction Expansion** | Fourier modes solve a uniform problem completely. A second explicit system then shows that the method is not peculiar to trigonometric functions before Looking Forward states the general theorem. | Complete Fourier solution; Legendre project or quantum harmonic oscillator. |
| 24 | **Fourier Transform** | On the whole line the discrete eigenvalues of a compact boundary problem give way to continuously indexed frequencies. Fourier inversion and Plancherel make that continuous decomposition rigorous. | Fourier inversion, Plancherel, the Gaussian, Poisson summation, and exact sampling as a substantial application. |
| 25 | **Generalized and Fundamental Solutions** | Transforming an equation may require division by a singular multiplier, and point forcing is not a function. Tempered distributions and fundamental solutions allow \(LG=\delta\), after which convolution solves \(Lu=f\). | Fundamental solutions; heat kernel; distributional initial data; smoothing and propagation. |

This is a five-chapter planning structure, not a promise that Chapters 24
and 25 will remain only two chapters. If Fourier inversion, Plancherel,
sampling, tempered distributions and fundamental solutions cannot be given
adequate room, this final pair may become three chapters. The plan should
expand rather than compress proofs into a survey.

---

## Chapter 21 — Ordinary Differential Equations

### Mathematical story

Calculus states a local law such as

\[
x'(t)=Ax(t)
\qquad\text{or}\qquad
y'(t)=f(t,y(t)).
\]

The chapter asks how such a law determines an entire trajectory. The linear
case turns a transformation into motion through the exponential. The
nonlinear case turns the equation into a fixed-point problem on a complete
space of functions.

This is the proper motivation for the arithmetic of transformations and for
matrix exponentials. They should not be introduced earlier as formal power
series without a problem to solve.

### Core route

1. **Linear scalar evolution.** Revisit \(x'=ax\) and interpret the
   exponential as accumulated local change.
2. **Matrix evolution.** Define
   \[
   e^{tA}=\sum_{k=0}^{\infty}\frac{t^kA^k}{k!}
   \]
   in the finite-dimensional matrix algebra and prove convergence,
   differentiability and the group law.
3. **Modes of a matrix.** Diagonalizable matrices give independent
   exponential modes. Nilpotence gives polynomial factors; imaginary
   eigenvalues give rotations and oscillations. Full Jordan theory is not
   required unless it earns its space.
4. **Variation of constants.** Solve
   \[
   x'=Ax+g(t)
   \]
   and expose the first convolution-like formula.
5. **Nonlinear equations.** Rewrite an initial-value problem as
   \[
   y(t)=y_0+\int_{t_0}^{t}f(s,y(s))\,ds.
   \]
6. **Picard–Lindelöf.** Apply the contraction principle on a closed ball in
   \(C(I)\), with the interval and invariance estimates stated correctly.
7. **Grönwall.** Prove uniqueness, continuous dependence on initial data
   and parameters, and quantitative error propagation.

### Possible computational ending

Euler's method is a natural use of the same estimates:

- local truncation error;
- discrete Grönwall;
- a rigorous global \(O(h)\) error bound;
- explicit versus backward Euler on a stiff decay equation.

This material should remain only if it strengthens the chapter's central
claim that analysis controls approximation, rather than opening a short
survey of numerical analysis.

### Scope ruling: no Peano route

Peano existence and its Euler-polygon/Arzelà–Ascoli proof are removed from
the core. The chapter uses one existence engine: contraction under a
Lipschitz condition, followed by Grönwall. A Looking Forward note may explain
that continuity alone still gives existence by a different compactness
method, but it should introduce no machinery required later.

### Examples worth choosing among

- harmonic and damped oscillators;
- a two-component coupled system;
- finite-time blowup for \(y'=y^2\);
- a continuous non-Lipschitz equation with nonunique solutions;
- one stiff scalar equation.

The chapter should not become a catalogue of dynamical systems.

---

## Chapter 22 — Variational Problems

### Mathematical story

A differential equation may describe motion, but many equilibrium laws are
better understood by saying that a function minimizes an integral. The
classical first variation finds a necessary differential equation. The
infinite-dimensional question is prior: why should the minimizing function
exist?

### Classical entry

- functionals
  \[
  J[y]=\int_a^b L(x,y,y')\,dx;
  \]
- admissible variations;
- the fundamental lemma;
- the Euler–Lagrange equation;
- constrained variation in one carefully chosen problem.

One or two classical examples should be developed, not a list. Candidates
include the catenary, brachistochrone, Fermat–Snell, and geodesics. The
choice should depend on proof length and on what later sections reuse.

### The existence problem

The chapter should go beyond necessary conditions. A minimal honest route
is one quadratic energy such as

\[
J(u)=\frac12\int_0^1 |u'|^2-\int_0^1 fu,
\qquad u(0)=u(1)=0.
\]

The required mathematics is:

- begin with zero-boundary $C^1$ functions and complete them in
  $\|u'\|_2$;
- identify the resulting Hilbert space through $u\mapsto u'$ with
  $\{g\in L^2(0,1):\int_0^1g=0\}$, so it remains visibly an $L^2$-type
  construction rather than the start of a Sobolev scale;
- prove Poincaré's inequality;
- prove existence and uniqueness of the minimizer by Riesz in the energy
  inner product and the identity
  $J(v)=J(u)+\frac12\|v-u\|_V^2$;
- identify the minimizer through
  \[
  \int_0^1 u'v'=\int_0^1 fv;
  \]
- recover a classical solution in one dimension under suitable
  hypotheses on \(f\).

This is not an occasion for a general Sobolev-space survey, weak compactness,
lower semicontinuity or a general direct-method theorem. Both Riesz and the
direct method would require the same energy space; Riesz is chosen because
it adds no second existence machine.

### Classical climax: the isoperimetric inequality

For a closed plane curve of length \(L\) enclosing area \(A\), prove

\[
4\pi A\leq L^2,
\]

with equality only for a circle.

A clean route uses constant-speed parametrization, the area formula,
Cauchy–Schwarz and the Fourier/Wirtinger inequality. This connects the
variational problem to the Fourier geometry already built in Spaces and
delivers a major theorem of classical geometry.

### Open choices

- which classical Euler–Lagrange example earns full treatment;
- whether a one-dimensional Noether theorem adds enough to justify its
  technical load;
- whether regularization of noisy data is a short modern application or
  belongs later with inverse problems.

---

## Chapter 23 — Eigenfunction Expansion

### The governing narrative

This chapter begins with a success whose hard work was completed in Spaces.
The Fourier basis is already known to be complete. Applying it to a uniform
string turns a partial differential equation into independent ordinary
differential equations, so the solution appears almost immediately.

The chapter then changes the physical or mathematical problem. Variable
density, tension or potential destroys the explicit Fourier modes. The
question becomes:

> Can analysis prove that a complete system of modes still exists when we
> cannot write those modes down?

On the middle route, the compact self-adjoint spectral theorem answers yes.
The theorem is motivated by the failed explicit method and is spent on the
same problem before the chapter ends.

### Opening Fourier success

Use the known trigonometric basis to solve one uniform problem completely.
The wave equation is the leading candidate because it motivates strings and
leaves the heat kernel available for the final chapter:

\[
u_{tt}=c^2u_{xx}
\]

with fixed or periodic boundary conditions.

The chapter should prove the required convergence and energy statements,
not merely write a formal separated series. Heat may appear briefly as the
contrasting rule in which high modes decay instead of oscillate.

A short periodic-distribution section may also:

- prove that periodic distributions correspond to Fourier coefficients of
  polynomial growth;
- conclude that every periodic distribution has a Fourier series
  converging distributionally;
- solve \(P(D)u=f\) by
  \[
  P(in)\widehat u(n)=\widehat f(n);
  \]
- identify resonance and compatibility from the zeros of \(P(in)\).

This is not a separate Fourier-series chapter. It is an immediate payoff
from the basis and distribution chapters in Spaces.

### The variable problem

A regular model is

\[
-(pu')'+qu=\lambda wu
\]

on a compact interval with separated self-adjoint boundary conditions and
with \(p,w>0\). The natural Hilbert space is \(L^2(w\,dx)\).

The scope should remain regular. Singular endpoints, general oscillation
theory, Prüfer transformations, and the full classical Sturm–Liouville
theory are not part of the working plan. Legendre, Hermite, Laguerre and
Bessel systems should not be claimed as automatic consequences of this
regular compact-interval theorem.

### Middle route: one compact spectral theorem

The accessible theorem is:

> A compact self-adjoint operator on a Hilbert space has real nonzero
> eigenvalues of finite multiplicity, with no nonzero accumulation point,
> and its eigenvectors span the closure of its range orthogonally to its
> kernel.

The proof can use the Part III machinery directly:

1. maximize a quadratic form on the unit sphere;
2. take a weakly convergent maximizing subsequence;
3. use compactness to obtain strong convergence of its image;
4. prove that the maximizer is an eigenvector;
5. repeat on orthogonal complements;
6. prove that the eigenvalues tend to zero and that no part of the range is
   missed.

It may be pedagogically cleaner to prove the positive case first, since the
main Green and covariance operators are positive.

### Application through a Green operator

Choose a positive invertible realization of one regular boundary operator,
or shift it by a positive constant so that its inverse exists. Construct
that inverse as

\[
(Gf)(x)=\int_a^b G(x,y)f(y)\,dy.
\]

Prove that the kernel is continuous and symmetric, that \(G\) is compact
and self-adjoint, and that its eigenfunctions are the eigenfunctions of the
differential operator with reciprocal eigenvalues. Return to the motivating
evolution problem and expand the initial data in these modes.

This is the climax: the Fourier method has been recovered without an
explicit Fourier basis.

### Applications that may justify the difficult theorem

These are a menu, not one chapter's contents.

1. **Fredholm alternative.** For \(f-\alpha Kf=g\), the eigenfunction
   expansion gives the exact compatibility condition at resonance.
2. **Inverse instability.** If \(Ke_n=\lambda_ne_n\) with
   \(\lambda_n\to0\), inversion divides noisy coefficients by
   \(\lambda_n\). Compact smoothing therefore produces an unstable inverse.
3. **Time-frequency concentration.** After the Fourier transform is
   available, the compact sinc-kernel operator constructs optimally
   concentrated bandlimited functions. This is the strongest possible
   later return to the theorem.
4. **Covariance operators.** A continuous positive covariance kernel gives
   a compact positive operator and a Karhunen–Loève expansion. This is
   genuinely infinite-dimensional, whereas finite-sample PCA alone is only
   finite-dimensional linear algebra. Include it only if the required
   probability is treated honestly.

The theorem should be retained if it has at least two serious uses, most
likely the variable boundary problem and either inverse instability or
time-frequency concentration. If it has only one client, the short route
may be better.

### Classical computation: a periodic Green function

Solve

\[
(-D^2+a^2)G=\delta_0
\]

on the circle. Fourier expansion gives

\[
G(x)=\frac1{2\pi}
\sum_{n\in\mathbb Z}\frac{e^{inx}}{n^2+a^2},
\]

while solving the ODE away from the source and imposing the derivative jump
gives

\[
G(x)=
\frac{\cosh(a(\pi-|x|))}
     {2a\sinh(\pi a)}
\qquad (-\pi\leq x\leq\pi).
\]

At \(x=0\),

\[
\boxed{
\sum_{n\in\mathbb Z}\frac1{n^2+a^2}
=\frac{\pi}{a}\coth(\pi a)
}.
\]

Removing the \(n=0\) term and letting \(a\to0\) recovers the Basel sum. The
point is not to solve Basel yet again for its own sake. A problem with a
delta source produces a stronger parameterized identity and lets the book
look back at an old result from a genuinely new level.

### Short route

If compact spectral theory is cut, retain the precise Fourier solution and
the periodic Green-function calculation, then merge this material into the
opening of the Fourier-transform chapter or another neighboring chapter.
It should not be inflated into a separate periodic Fourier chapter.

---

## Chapter 24 — Fourier Transform

### Mathematical story

The preceding chapter concerns operators on a compact interval or circle.
Their relevant spectra are discrete, and solutions are countable
eigenfunction sums. On \(\mathbb R\), the formal eigenfunctions

\[
e^{i\xi x}
\]

are continuously indexed and do not belong to \(L^2(\mathbb R)\). The
compact spectral theorem no longer supplies a countable eigenbasis. The
Fourier transform makes the continuous decomposition rigorous.

### Core theory

1. Define the transform on \(L^1(\mathbb R)\) and prove boundedness,
   continuity and the Riemann–Lebesgue lemma if the proof route is
   economical.
2. Prove the translation, modulation, dilation and differentiation
   identities.
3. Define convolution and prove the convolution theorem, with Fubini
   hypotheses explicit.
4. Introduce Schwartz space because it is preserved by differentiation,
   multiplication and Fourier transformation.
5. Prove Fourier inversion on a precise class.
6. Prove Plancherel and extend the transform unitarily to \(L^2(\mathbb R)\).

The proof route for inversion and Plancherel must be selected before the
chapter shape is final. Gaussian regularization is particularly attractive
because it makes the Gaussian a working object rather than a decorative
example.

### The Gaussian

With the convention

\[
\widehat f(\xi)=\int_{\mathbb R}f(x)e^{-ix\xi}\,dx,
\]

prove

\[
\widehat{e^{-x^2/2}}(\xi)
=\sqrt{2\pi}\,e^{-\xi^2/2}.
\]

The equation \(f'=-xf\) transforms into the same differential equation for
\(\widehat f\); the Gaussian integral already established earlier fixes the
constant. This calculation begins a thread that continues through heat
flow, uncertainty, convolution and the theta function.

### Poisson summation and the theta identity

For a suitable Schwartz function, periodize it, compute the Fourier
coefficients of the periodic sum, and obtain Poisson summation. Applied to
the Gaussian, this gives

\[
\boxed{
\sum_{n\in\mathbb Z}e^{-\pi t n^2}
=
\frac1{\sqrt t}
\sum_{n\in\mathbb Z}e^{-\pi n^2/t}
}.
\]

This is an important pure-mathematics payoff and a precise bridge between
the Fourier series of Spaces and the Fourier transform on the line.

### Sampling as a substantial application

Sampling remains in the book, but it is not presently a separate final
chapter and is not presented as the pinnacle of analysis.

Define

\[
PW_\Omega
=
\{f\in L^2(\mathbb R):
\operatorname{supp}\widehat f\subseteq[-\Omega,\Omega]\}.
\]

The transform identifies this space with \(L^2[-\Omega,\Omega]\). The
exponential basis on the frequency interval becomes a shifted sinc basis in
physical space. A clean Hilbert-space proof should establish:

- bandlimited \(L^2\) functions have continuous representatives and point
  evaluation is bounded;
- shifted sinc functions form an orthogonal basis;
- the sample values are the basis coefficients;
- Shannon reconstruction holds with precisely stated convergence;
- Parseval relates \(L^2\) energy to the squared samples;
- undersampling produces aliasing.

The Dirac-comb argument may explain spectral replication after the rigorous
proof, but it should not carry the first proof formally.

### Uncertainty and concentration

After centering in position and frequency, the uncertainty principle takes
the form

\[
\|(x-x_0)f\|_2
\|f'-i\xi_0f\|_2
\geq
\frac12\|f\|_2^2,
\]

with equality precisely for translated, modulated and rescaled Gaussians.

If the compact spectral theorem remains, the time-frequency concentration
operator on \([-T,T]\),

\[
(Kf)(x)
=
\int_{-T}^{T}
\frac{\sin\Omega(x-y)}{\pi(x-y)}f(y)\,dy,
\]

is compact, positive and self-adjoint. Its leading eigenfunction maximizes
the fraction of energy lying in the chosen frequency band. This constructs
the optimal functions without elementary formulas and gives the spectral
theorem a second, mathematically different client.

### Classical computations and guided explorations

- Plancherel applied to an interval indicator gives
  \[
  \int_0^\infty\left(\frac{\sin x}{x}\right)^2\,dx
  =\frac{\pi}{2}.
  \]
- Fourier inversion with honest regularization gives
  \[
  \int_0^\infty\frac{\sin x}{x}\,dx
  =\frac{\pi}{2}.
  \]
- Products of sinc functions become convolutions of interval indicators
  and explain the Borwein integrals, including the eventual failure of the
  apparent pattern.
- Weyl's Fourier criterion plus a geometric sum proves equidistribution of
  \(n\alpha\pmod1\) for irrational \(\alpha\). This is a low-cost,
  high-value pure-mathematics exploration, though it may fit as well in
  Spaces.
- For a probability density \(f\) with mean zero and variance one, a
  central-limit theorem for its normalized convolution powers may be
  proved against Schwartz tests:
  \[
  \widehat f(\xi/\sqrt n)^n\longrightarrow e^{-\xi^2/2}.
  \]
  Boundedness of characteristic functions and dominated convergence then
  give distributional convergence. Do not repeat the old notes' unsupported
  claim of pointwise or \(L^1\) convergence of densities.

This list is not a commitment to include every application. The Gaussian,
theta identity and sampling are the strongest current core candidates.

### Expansion warning

Fourier inversion, Plancherel, Poisson summation, sampling, uncertainty and
time-frequency concentration may not fit honestly in one chapter. If this
material divides, the new chapter should be organized around a mathematical
problem such as localization and reconstruction, not presented as a final
catalogue of applications.

---

## Chapter 25 — Generalized and Fundamental Solutions

### Mathematical story

Fourier transformation turns a constant-coefficient equation into

\[
P(i\xi)\widehat u(\xi)=\widehat f(\xi).
\]

Division by \(P(i\xi)\) may be singular, and a point source is already the
distribution \(\delta\). The chapter enlarges the transform to the precise
generalized objects required by the equation.

The governing construction is:

\[
LG=\delta.
\]

Such a \(G\) is a fundamental solution. Whenever the relevant convolution
is defined,

\[
u=G*f
\]

solves \(Lu=f\).

### Core route

1. Introduce tempered distributions as continuous linear functionals on
   Schwartz space.
2. Extend the Fourier transform by duality.
3. Compute the transforms of \(\delta\), constants, exponentials and
   derivatives.
4. State carefully when products and convolutions involving distributions
   are defined.
5. Find fundamental solutions for a small number of
   constant-coefficient operators.
6. Use convolution to pass from a point source to general forcing.
7. Ask separately about existence, uniqueness, regularity and stability;
   constructing one distributional solution does not settle all four.

The chapter should not claim a general theory of PDEs or invoke the full
spectral theory of unbounded operators.

### Primary evolution: the heat equation

The heat equation on \(\mathbb R\),

\[
u_t=u_{xx},
\]

gives

\[
\widehat u(\xi,t)
=
e^{-t\xi^2}\widehat f(\xi).
\]

Inverting the Gaussian multiplier produces

\[
K_t(x)
=
\frac1{\sqrt{4\pi t}}e^{-x^2/(4t)},
\qquad
u(\cdot,t)=K_t*f.
\]

The chapter can prove:

- \(K_s*K_t=K_{s+t}\);
- \(K_t\to\delta\) as \(t\downarrow0\);
- recovery of the initial data in the appropriate topology;
- immediate smoothing for \(t>0\);
- continuous dependence and uniqueness in the selected solution class.

This closes a long line from the ODE chapter:

\[
x'(t)=Ax(t)
\quad\leadsto\quad
x(t)=e^{tA}x(0),
\]

while

\[
u_t=D^2u
\quad\leadsto\quad
u(t)=e^{tD^2}u(0)=K_t*u(0).
\]

The notation should be justified by the already constructed solution, not
used as a substitute for constructing it.

### Wave comparison

The wave equation provides a sharp contrast:

- heat spreads a point source instantly and smooths it;
- wave propagation carries singularities at finite speed and conserves
  energy.

One equation should receive the full proof and the other a carefully chosen
comparison. The old plans' three separate treatments of the heat equation
must not return accidentally.

### How the book ends

The final worked application is not declared the final word or highest
point of analysis. It should leave the reader able to formulate the next
questions:

- For which operators does a solution exist?
- In what space?
- When is it unique?
- When does rough data produce a smoother solution?
- When is the map from data to solution stable?
- What survives for variable coefficients and nonlinear equations?

These questions point toward Sobolev spaces, elliptic regularity, general
spectral theory, harmonic analysis, inverse problems and nonlinear PDE.
The endpoint is a way of asking questions and constructing solutions, not
the claim that one selected application is the pinnacle of the subject.

---

## Classical-result ledger

The later book should occasionally look backward and compute something
concrete with its new theory. The current strongest candidates are:

| Result | Principal method | Likely home | Status |
|---|---|---|---|
| Isoperimetric inequality \(4\pi A\leq L^2\) | Fourier/Wirtinger plus area formula | Variational Problems | Strong core candidate. |
| \(\sum_{n\in\mathbb Z}(n^2+a^2)^{-1}=(\pi/a)\coth(\pi a)\) | Periodic Green function | Eigenfunction Expansion | Strong core candidate; gives a new Basel reprise. |
| Fourier transform of the Gaussian | Differential identities plus normalization | Fourier Transform | Core. |
| Jacobi theta transformation | Poisson summation applied to the Gaussian | Fourier Transform | Strong pure-math payoff. |
| Shannon sampling theorem | Hilbert basis of a bandlimited space | Fourier Transform region | Retain; chapter boundary open. |
| Uncertainty with Gaussian equality | Integration by parts, Cauchy–Schwarz, Plancherel | Fourier Transform region | Strong companion to sampling. |
| Heat kernel and Gaussian semigroup | Fourier multiplier and convolution | Fundamental Solutions | Core candidate. |
| Dirichlet and squared-sinc integrals | Inversion and Plancherel | Exercises or short application | Low cost and memorable. |
| Borwein sinc products | Products become convolutions of intervals | Guided exploration or coda | Retain as optional. |
| Weyl equidistribution | Fourier criterion and geometric sums | Guided exploration | Strong pure-math option. |
| Schwartz-test central limit theorem | Convolution powers and dominated convergence | Guided exploration or optional section | Viable only with precise convergence claim. |
| Poisson kernel and disk Dirichlet problem | Fourier modes and approximate identities | Possible application | Attractive if the book has enough multivariable calculus. |

Basel itself is already planned as a Fourier/Parseval payoff in Spaces. Its
return through a Green function is worthwhile because it produces a
strictly stronger identity and changes the meaning of the computation.

---

## Application and scope audit

### Applications with strong present claims

- ODE existence, uniqueness and stability;
- numerical approximation if it remains tied to Grönwall;
- one genuine minimization/existence theorem;
- isoperimetric geometry;
- wave or heat evolution by modes;
- one regular nonexplicit eigenfunction expansion, if compact spectral
  theory survives;
- inverse instability as a consequence of small eigenvalues;
- Gaussian Fourier analysis and heat flow;
- Poisson summation and theta;
- sampling and uncertainty;
- point sources and fundamental solutions.

### Material not justified merely by naming it

- full classical Sturm–Liouville theory;
- singular special-function problems;
- a survey of Sobolev spaces;
- the spectral theorem for general unbounded operators;
- full probability theory for Karhunen–Loève or the central limit theorem;
- general distribution convolution;
- a broad PDE course;
- a catalogue of numerical schemes;
- a catalogue of signal-processing applications.

### Corrections to the old notes

- Pointwise convergence of Fourier transforms does not imply pointwise or
  \(L^1\) convergence of densities. Any central-limit result must state and
  prove its actual mode of convergence.
- A Dirac-comb sampling computation is an explanation, not by itself a
  first rigorous proof of Shannon reconstruction.
- General Sturm–Liouville completeness cannot be stated by analogy with
  Fourier series. It requires a proof engine.
- A formal series solution of a PDE is not yet a solution theorem.
  Convergence, initial or boundary data, uniqueness and regularity must be
  addressed in a declared solution class.
- Exact sampling is exact reconstruction from countably many samples, not
  automatically finite-bit compression of a whole-line signal.

---

## Live decisions

1. **Compact spectral theorem:** retain the middle route or take the short
   Fourier-only route?
2. **ODE chapter:** Peano through Arzelà–Ascoli, numerical Euler, or both?
3. **Variations:** prove the quadratic existence theorem by Riesz, by weak
   minimization, or show both descriptions of the same solution?
4. **Eigenfunction application:** use the wave equation as the principal
   uniform and variable string problem, reserving heat for the final
   chapter?
5. **Spectral clients:** after the regular boundary problem, is the second
   client inverse instability, time-frequency concentration, or neither?
6. **Fourier proof route:** which inversion and Plancherel proofs best reuse
   the book's integral construction?
7. **Final pair:** can Fourier transform plus sampling remain one chapter
   before Fundamental Solutions, or must those topics occupy three
   chapters?
8. **Pure-math applications:** which of theta, equidistribution, the
   Poisson kernel and Borwein belong in the main text rather than guided
   explorations?
9. **Final worked equation:** heat as the primary full proof with wave as
   contrast, or the reverse?

No decision about Question 7 is needed before drafting. The working plan is
two chapters, with explicit permission to expand.

---

## Success test

Part IV succeeds if a student can see why different equations demand
different constructions:

- iteration produces a trajectory;
- minimization selects an equilibrium;
- an eigenbasis separates coupled evolution;
- the Fourier transform replaces discrete eigenfunction sums on compact
  domains by a continuous decomposition on the line;
- distributions admit rough data and point sources;
- a fundamental solution turns one point-source calculation into a
  solution operator.

It should also leave the student with several theorems they can calculate
with: the isoperimetric inequality, the Green-function summation identity,
the Gaussian transform, the theta transformation, exact sinc
reconstruction, uncertainty, and the heat kernel. The applications are
evidence that the theory works; none is advertised as the endpoint of
analysis.
