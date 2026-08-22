# Part IV — Solutions: Source Harvest and Provisional Landscape

Status: first harvest after settling the general Part III **Spaces** plan,
2026-08-21. This document identifies promising stories and applications
from the old Part III material. It is deliberately less settled than
`part3-spaces.md`: five or six chapters are plausible, and no complete
chapter list is yet a ruling.

Primary old sources read for this pass:

- `../2025-plans/overview-part3.md`, especially the old differential
  equations and distributions chapters;
- `../2025-plans/part3-ideas/part_iii_outline.md`;
- `../2025-plans/part3-ideas/part-iii-functional-analysis-outline-v1.md`;
- `../2025-chapters/12-function-space/03-optimization.md`;
- `../2025-chapters/13-fourier/`;
- `../2025-chapters/14-diffeq/`;
- `../2025-chapters/15-distributions/`;
- `../../claude-notes.md` and `../MAP.md` for the previous audit warnings.

## Why Part IV exists

Part III asks what objects and limits exist. Part IV asks what those worlds
allow us to solve.

The governing principle remains problem-first:

> **A problem should demand a solution method; the method should reveal the
> space, coordinates or generalized objects that make the solution
> possible.**

The part should not read as “applications of the machinery from Part III.”
Each chapter begins with a problem that matters independently—motion,
equilibrium, vibration, diffusion, reconstruction—and discovers that the
abstract language already built is exactly what the problem needs.

Five recurring verbs organize the landscape:

1. **iterate** to produce a fixed point;
2. **minimize** to select an equilibrium;
3. **diagonalize** to separate coupled modes;
4. **transform** to turn differentiation and convolution into arithmetic;
5. **reconstruct** a whole object from partial information.

“Exponentiate” belongs with the first and “regularize” may become a sixth
verb if inverse problems earn enough space.

## What the old material gets right

Several old strands are already excellent and should survive:

- Picard iteration makes completeness solve a concrete existence problem.
- Matrix exponentials explain growth, shear, rotation and coupled motion.
- Gronwall turns existence theory into stability and validates numerical
  approximation.
- Euler and backward Euler show that analysis explains both convergence
  and computational stability.
- The explanation of complex exponentials is unusually strong: sine and
  cosine mix under differentiation, while $e^{inx}$ diagonalizes it.
- The heat/wave contrast—smoothing versus energy conservation, infinite
  versus finite propagation—is a genuine scientific payoff.
- Distributions are motivated by limits that should exist and by equations
  with point sources.
- Fourier transform applications connect to signals, probability, physics
  and pure mathematics.
- The sampling theorem, uncertainty principle and Borwein integrals are
  memorable enough to anchor substantial closing movements.

## What must change from the old organization

1. **The heat equation appears three times.** It should have one primary
   solution story. A bounded-domain/discrete-spectrum version and a
   whole-line/continuous-spectrum return can coexist only if the comparison
   itself is the point; neither should re-teach the same calculation.
2. **Sturm–Liouville was asserted without a proof engine.** If retained as
   more than a preview, it needs a compact self-adjoint spectral theorem,
   most cleanly applied to a Green operator.
3. **The distributions chapter was overloaded.** Basic periodic
   distributions and continuous differentiation now end Part III. Part IV
   may introduce periodic Fourier expansions, Schwartz/tempered
   distributions and fundamental solutions only when a problem demands
   each enlargement.
4. **Calculus of variations had necessary conditions but no existence
   story.** Part III's weak convergence and Riesz theorem make a genuine
   direct-method/weak-solution chapter possible.
5. **The final applications were a catalogue.** Sampling, the CLT,
   uncertainty and Borwein should either receive distinct narrative jobs
   or be distributed among the chapters whose theorems power them.
6. **Several old proof sketches need audit.** In particular, pointwise
   convergence of Fourier transforms does not by itself prove pointwise or
   $L^1$ convergence of densities in the CLT. Sampling via a Dirac comb is
   evocative but should be replaced or supported by a clean Hilbert-space
   proof.

## A provisional six-movement landscape

These are working identities, not adopted titles or a settled order.

| Movement | Problem that opens it | What students see happen | Where it connects |
|---|---|---|---|
| 1. **How a local rule produces a whole motion** | How can an instantaneous rule determine an entire trajectory? | Repeated tiny transformations produce matrix exponentials; iteration produces nonlinear solutions; error estimates prove numerical trajectories reliable. | Coupled oscillators, dynamical systems and scientific computation. |
| 2. **How least energy selects a solution** | How can an equilibrium exist when no formula finds it? | A minimizing sequence approaches an actual least-energy state, and the condition defining that state becomes a differential equation. | Mechanics, geometry, optics, boundary-value problems and smoothing noisy data. |
| 3. **Why complicated systems have natural modes** | Why do strings, molecules and collections of data break into a small number of characteristic patterns? | A symmetric compact transformation has mutually perpendicular modes, and every input decomposes into them. | Vibrating strings, integral equations, optimal low-dimensional summaries of data, deblurring and quantum mechanics. |
| 4. **How periodic equations become arithmetic** | How do we solve a differential equation on a circle or bounded interval? | Writing a periodic function as frequencies turns differentiation into multiplication of coefficients, so the equation separates into independent numerical equations. | Heat, waves, resonance, conservation and the distribution of number sequences around a circle. |
| 5. **How to solve equations on the whole line** | What replaces the numbered frequencies of a periodic function when the domain has no boundary? | A continuous range of frequencies turns derivatives and convolutions into multiplication and produces explicit responses to point sources. | Diffusion, wave propagation, filters, probability and number theory. |
| 6. **How samples determine a continuous signal** | How much of a continuous signal must be stored or observed? | If no frequencies above a fixed limit occur, equally spaced samples are its coordinates and shifted sinc curves reconstruct it exactly; aliasing and uncertainty show the limits. | Digital signals, communications, compression and statistical data reduction. |

This landscape reaches genuinely central applications of functional
analysis rather than using the subject merely as generalized calculus:
Banach's fixed-point theorem, weak Hilbert methods, the compact spectral
theorem, Plancherel, and exact reconstruction all receive real clients.

---

## Movement 1 — How a Local Rule Produces a Whole Motion

### Narrative

Calculus gives a local law such as $x'=Ax$ or $y'=f(t,y)$; it does not by
itself give the trajectory. Begin with the cases where repeated tiny
transformations visibly generate motion, then discover that a nonlinear
trajectory is a fixed point in a complete space.

### Material worth developing

- Scalar $x'=ax$ and the exponential as accumulated local growth.
- Coupled system $x'=Ax$ and
  $e^{tA}=\sum_{n\ge0}t^nA^n/n!$.
- Microstep interpretation $(I+tA/n)^n\to e^{tA}$.
- Diagonalizable matrices; real growth/decay, shear from nilpotence, and
  rotation from imaginary eigenvalues.
- $e^{it}$ and the planar rotation matrix as the same exponential story.
- Semigroup/group law: evolution for time $s+t$ is evolution for $s$
  followed by evolution for $t$.
- Nonlinear ODEs rewritten as integral fixed-point equations.
- Picard–Lindelöf, with the contraction estimate visible.
- Gronwall: uniqueness, continuous dependence and amplification of errors.
- Euler's method, including a rigorous global error estimate.
- Forward versus backward Euler on a stiff decay equation; analysis
  distinguishes a convergent idea from a stable computation.

### Possible scientific examples

- harmonic oscillator and damped oscillator;
- two coupled masses or a small network of coupled linear compartments;
- a simple population/epidemic model for the nonlinear fixed-point story;
- stiffness as a genuine computational phenomenon, not a numerical-methods
  catalogue.

### Climax candidates

- Picard iteration simultaneously proves existence and computes the
  solution.
- Backward Euler uses a new contraction at every time step and remains
  stable where forward Euler predicts explosive oscillation.

The chapter should end with the infinite-dimensional obstruction:
differentiation is not a bounded operator on the familiar function norms,
so $e^{tD}$ cannot simply be copied from matrices without choosing a new
framework. Later chapters discover the frameworks through concrete PDEs.

---

## Movement 2 — How Least Energy Selects a Solution

### Narrative

Some laws are not imposed point by point; they select the state of least
length, time or energy. Classical variation derives the equation a
minimizer must obey, but functional analysis answers the prior question:
**why should a minimizing function exist at all?**

### Classical entry

- Functionals $J[y]=\int L(x,y,y')$ and variations $y+\varepsilon\eta$.
- Euler–Lagrange equation from integration by parts.
- Choose a small number of memorable clients: shortest path, catenary,
  brachistochrone, geodesics or Fermat/Snell. Do not build a catalogue.
- Noether's symmetry-to-conservation principle is an attractive starred
  result if it can be proved in the one-dimensional setting without
  changing the chapter's center.

### Functional-analytic payoff

A simple one-dimensional Dirichlet problem offers a rigorous route:

$$
-u''=f,\qquad u(0)=u(1)=0.
$$

- Introduce the one derivative-sensitive Hilbert space the problem needs,
  rather than surveying Sobolev spaces in advance.
- Minimize
  $J(u)=\frac12\int|u'|^2-\int fu$.
- Poincaré's inequality makes $\int u'v'$ an effective inner product and
  makes $v\mapsto\int fv$ continuous.
- Riesz gives a unique $u$ satisfying the weak equation
  $\int u'v'=\int fv$ for every test $v$.
- The Riesz representative is exactly the unique minimizer.
- In one dimension, recover enough regularity to reconnect the weak and
  classical solutions.

This is a major payoff for the final chapters of Spaces: weak observers
and Riesz do not merely describe convergence; they produce a solution.

### Cross-disciplinary clients

- **Pure mathematics/geometry:** a Fourier proof of the isoperimetric
  inequality can close the ancient circle-measurement strand, provided the
  constant-speed and area-formula details are made honest.
- **Physics:** equilibrium of an elastic string or membrane energy in one
  dimension.
- **Statistics/inverse problems:** Tikhonov or smoothing regularization
  balances fitting data against roughness. A finite-dimensional or
  one-dimensional version may provide a modern second client without
  requiring a statistics course.

### Load warning

The direct method, Euler–Lagrange examples and isoperimetric theorem can
each carry a chapter. The minimal route should select one existence theorem
and one or two classical payoffs; it should not promise all of variational
calculus.

---

## Movement 3 — Why Complicated Systems Have Natural Modes

### Narrative

Part III asked which basis makes a chosen task easy. Here the problem
itself selects the basis: the natural coordinates are the modes that an
operator merely scales.

### A rigorous spectral route

1. Begin with an integral operator
   $(Tf)(x)=\int K(x,y)f(y)\,dy$ with continuous symmetric kernel.
2. Use Arzelà–Ascoli or the $L^2$ analogue to prove compactness.
3. Self-adjointness makes eigenvalues real and distinct eigenspaces
   orthogonal.
4. Prove the compact self-adjoint spectral theorem by maximizing the
   quadratic form on the unit sphere, extracting a convergent image, and
   iterating on orthogonal complements.
5. Obtain
   $Tf=\sum\lambda_n\langle f,e_n\rangle e_n$.
6. If useful, prove the self-adjoint Fredholm alternative as the
   corresponding solvability condition.

### Why this repairs the old Sturm–Liouville gap

For a boundary-value operator such as $-u''$ with Dirichlet conditions,
construct its Green operator $G$. The operator $G$ is compact,
self-adjoint and positive. Eigenvectors of $G$ are eigenfunctions of the
differential operator, with reciprocal eigenvalues. The compact spectral
theorem now supplies the eigenbasis instead of declaring it by analogy.

This supports:

- vibrating strings and standing modes;
- heat flow on a bounded interval;
- variable-density strings/Sturm–Liouville as far as the proof budget
  genuinely reaches;
- integral equations and resonance;
- a preview of quantum energy eigenstates, with an honest warning that
  general unbounded spectral theory lies beyond the book.

### A particularly valuable statistics application

**PCA/Karhunen–Loève** is a natural second client of the same theorem.

- For a finite collection of signals $x_1,\ldots,x_N$ in a Hilbert space,
  define the covariance operator
  $Cf=N^{-1}\sum_j\langle f,x_j\rangle x_j$.
- It is finite-rank, positive and self-adjoint.
- Its leading eigenvector captures the greatest possible average squared
  projection; the first $k$ eigenvectors give the best $k$-dimensional
  mean-square reconstruction.
- For a continuous covariance kernel, the compact spectral theorem gives
  the infinite-dimensional Karhunen–Loève expansion.

This makes direct contact with statistics, data reduction and compression
without introducing probability at full scale. The finite-ensemble theorem
can be proved completely; the random-process version may be a GE or
outlook.

### Inverse problems and regularization

Compact operators also explain why reconstructing a cause from a blurred
effect is unstable: eigenvalues/singular values approach zero, so inversion
amplifies small measurement errors. Truncating small modes or adding a
Tikhonov penalty regularizes the problem. This is important modern
functional analysis with clients in imaging, statistics and scientific
measurement, but may be too much if PCA already supplies the chapter's
second payoff.

---

## Movement 4 — How Periodic Equations Become Arithmetic

### Narrative

Part III learned Fourier coordinates geometrically and ended with periodic
distributions. Now a periodic differential equation reveals why those were
the right objects: in the complex exponential basis, differentiation is
multiplication by $in$, so an equation becomes arithmetic on coefficients.

### Proposed core

- Fourier coefficients of periodic distributions.
- Characterization by polynomial growth and the theorem that every
  periodic distribution equals its Fourier series distributionally.
- $D$ acts by $(in)$ and $P(D)$ by $P(in)$.
- Solve $P(D)u=f$ coefficient by coefficient.
- Resonance and compatibility conditions: a zero of $P(in)$ identifies
  both nonuniqueness and an obstruction to solvability.
- Revisit $T'=S$ on the circle: the missing constant mode is now visible
  in the coefficient arithmetic.
- Periodic Green functions and point forcing, if they remain elementary.

### Evolution as independent modes

Use one bounded-domain or periodic evolution problem as the principal
scientific client:

- Heat: each coefficient decays by $e^{-n^2t}$; high frequencies disappear
  faster, producing instantaneous smoothing and loss of information.
- Wave: each coefficient oscillates; energy moves among position and
  velocity but is conserved.

Both are valuable, but one should carry the proof and the other serve as a
contrast or exercise. The old plan's full repetition of both in several
places should not survive.

### Pure-mathematics side paths

- **Weyl equidistribution:** Fourier's criterion reduces distribution of
  $n\alpha\pmod1$ to a geometric sum. This is a striking, accessible bridge
  from function bases to number theory.
- **Isoperimetric inequality:** may live here instead of Movement 2 if the
  Fourier coefficient proof, rather than variational formulation, is the
  chosen climax.

---

## Movement 5 — How to Solve Equations on the Whole Line

### Narrative

On a bounded or periodic domain, frequencies are discrete. On the whole
line, translation has a continuum of generalized eigenfunctions
$e^{i\xi x}$, none of which lies in $L^2(\mathbb R)$. The problem itself
therefore demands a new test space and a continuous spectral expansion.

### Proposed core

- Fourier transform first on a concrete safe class, then on Schwartz
  space.
- Translation, modulation, dilation and differentiation identities.
- Convolution theorem.
- Fourier inversion and Plancherel, with hypotheses stated honestly.
- Tempered distributions introduced because Schwartz space is preserved
  by Fourier transform.
- $\widehat\delta=1$, $\widehat1=2\pi\delta$, and
  $\widehat{e^{iax}}=2\pi\delta_a$.
- Delta as an impulse: for a translation-invariant linear system, its
  response to a general input is convolution with its response to delta
  (proved in an appropriately restricted setting rather than asserted at
  maximal generality). Fourier transform turns the filter into
  multiplication by its frequency response.
- Differential operators become multiplication by their symbols.
- Fundamental solutions: solve $LG=\delta$, then $u=G*f$.

### Scientific clients

- Heat equation on $\mathbb R$: the Gaussian heat kernel and instantaneous
  smoothing.
- Wave equation on $\mathbb R$: d'Alembert or a distributional kernel and
  finite propagation.
- Choose one as the full whole-line solution. Use the other to contrast
  propagation, not to repeat the chapter.

### Pure mathematics and probability

- **Poisson summation** and the Dirac comb connect discrete and continuous
  Fourier analysis. Applied to the Gaussian, they yield the Jacobi theta
  transformation—a substantial contact with number theory.
- **Central limit behavior** is an important statistical application:
  convolution becomes multiplication and the rescaled characteristic
  functions tend toward a Gaussian. But the old claim of pointwise and
  $L^1$ density convergence is not justified by transform convergence
  alone. Include a precise weak CLT only with the necessary probability
  theorem, or prove a stronger-assumption density version; otherwise keep
  it as a carefully worded outlook.
- The Dirichlet and Gaussian integrals remain attractive demonstrations,
  but the Gaussian integral already has a Part II proof and should return
  only if the transform proof reveals something new.

---

## Movement 6 — How Samples Determine a Continuous Signal

### Narrative

Part II called a function an uncountable table. The sampling theorem gives
an extraordinary late answer: after imposing a frequency constraint, an
entire continuous signal is determined exactly by a countable table of
equally spaced values.

This is the right rigorous formulation of the “lossless sinc compression”
story. It is exact discretization/reconstruction of a bandlimited signal;
it is not automatically finite-bit compression on the whole line. That
qualification strengthens the narrative, because uncertainty explains the
price of exact bandlimiting.

### The clean Hilbert-space proof

Avoid making the Dirac-comb calculation carry the first proof.

1. Define the bandlimited Paley–Wiener space by
   $\operatorname{supp}\widehat f\subset[-\Omega,\Omega]$.
2. On the frequency interval, the equally spaced complex exponentials form
   an orthonormal basis.
3. Under inverse Fourier transform, those exponentials become shifted sinc
   functions.
4. Their coefficients are scaled sample values
   $f(n\pi/\Omega)$.
5. The Hilbert basis expansion is exactly Shannon's reconstruction formula,
   with an accompanying Parseval identity for the samples.

Thus the theorem is not a trick with formal deltas: **sinc functions are
the coordinate basis selected by the bandlimit.** The Dirac comb can then
explain replication of spectra and aliasing visually.

### Natural companion results

- Nyquist rate and aliasing: undersampling causes shifted copies of the
  spectrum to overlap.
- Uncertainty principle: localization in time and localization in
  frequency cannot both be arbitrarily sharp; Gaussians are extremizers.
- A stronger uncertainty result says that a nonzero signal cannot be both
  exactly time-limited and exactly bandlimited. Include this only with an
  honest proof at the available level (or state it clearly as an outlook);
  the variance uncertainty inequality alone does not prove it. Exact
  sampling nevertheless has a real geometric cost.
- Fourier truncation, wavelet sparsity and PCA answer different compression
  questions. This is a natural callback to Part III's “no best basis
  independent of the task.”
- Noisy samples or blurred measurements lead back to regularization and
  the instability of small spectral modes.

### Possible ending experiences

1. **Sampling as the book climax:** an uncountable table reconstructed from
   countably many values—one of the cleanest callbacks to the Functions
   chapter and to the book's long infinity story.
2. **Uncertainty as the final limit:** analysis provides exact
   reconstruction, then proves the unavoidable price of localization.
3. **Borwein integrals as a playful coda:** products of sinc functions
   become convolutions of rectangles; a pattern holds seven times and
   fails on the eighth for a geometric reason. Memorable, but better as a
   coda or GE than as the only reason the transform machinery was built.

---

## Application portfolio

The aim is not maximum coverage. It is a balanced set of important clients
showing the same structures active across disciplines.

| Application | Contact | Main theorem/idea | Current assessment |
|---|---|---|---|
| Picard–Lindelöf and Euler stability | ODEs/computation | Banach fixed point, Gronwall | Core candidate; rigorous and accessible. |
| Weak solution of $-u''=f$ | PDE/variational analysis | Riesz, weak convergence, energy minimization | Core candidate; excellent Part III payoff. |
| Catenary/brachistochrone/geodesic | mechanics/geometry | Euler–Lagrange | Choose one or two, not all. |
| Isoperimetric inequality | pure geometry | variation or Fourier/Parseval | Strong climax candidate; proof details need audit. |
| Compact spectral theorem | functional analysis | compactness, self-adjointness | Core if Sturm–Liouville/PCA remain. |
| String modes/Sturm–Liouville | physics/PDE | Green operator plus spectral theorem | Important; include only with a real proof path. |
| PCA/Karhunen–Loève | statistics/data compression | spectral theorem for covariance | Excellent cross-disciplinary candidate; finite ensemble fully accessible. |
| Inverse problems/regularization | imaging/statistics | small singular modes, Tikhonov | Important modern application; load competes with PCA. |
| Heat or wave evolution | physics/PDE | spectral/Fourier diagonalization | Core; eliminate repetitions and choose primary home. |
| Impulse response and linear filtering | signals/control | distributions, convolution, Fourier multipliers | Strong low-cost science client once the transform exists. |
| Weyl equidistribution | number theory | Fourier criterion, geometric sums | Low-cost, high-value pure-math GE. |
| Poisson summation/theta | number theory | Fourier transform of a lattice/Gaussian | Strong transform payoff. |
| Shannon sampling/sinc reconstruction | signals/information | Plancherel and basis expansion | Flagship candidate, possibly final climax. |
| Uncertainty principle | physics/signals | Plancherel, differentiation, Cauchy–Schwarz | Flagship companion to sampling. |
| Central limit theorem | statistics/probability | transforms of convolution | Desirable, but old proof overclaims; requires a proof audit. |
| Borwein integrals | pure analysis | product–convolution geometry | Delightful coda/GE. |

## Five chapters versus six

### Natural six-chapter realization

Keep the six movements separate. This gives spectral theory time to be a
real theorem and gives information/reconstruction a coherent final chapter
rather than a pile of transform applications.

### Strongest five-chapter compression

Merge Movements 3 and 4:

1. From Local Law to Global Motion
2. How Least Energy Selects a Solution
3. Why Complicated Systems Have Natural Modes / How Periodic Equations
   Become Arithmetic
4. How to Solve Equations on the Whole Line
5. How Samples Determine a Continuous Signal

This merge is natural: the compact spectral theorem produces the modes,
and bounded-domain heat/wave or periodic differential equations spend them
immediately. Its risk is size, especially if the chapter also carries
Sturm–Liouville, PCA and inverse problems.

### Other possible compressions

- Merge Movements 5 and 6 only if the Fourier-transform construction is
  unusually lean. The old plan shows the danger: transform theory,
  tempered distributions, PDEs, sampling, uncertainty, probability and
  integrals quickly become an overloaded finale.
- Merge Movements 1 and 3 only at the level of a larger “linear dynamics”
  story; matrix and compact-operator spectral theories have different
  technical scales and probably deserve distance.
- Movement 2 could become a substantial section rather than a chapter if
  the direct method is cut. Necessary Euler–Lagrange conditions alone do
  not yet justify a full functional-analysis chapter.

## Dependencies sent backward to Part III

This harvest does not presently reveal a new Parts I–II gap. It does help
identify what Part III must protect:

- complete metric spaces and contraction language;
- $L^2$ and Hilbert projection/Riesz;
- weak convergence and preferably weak subsequential compactness;
- Arzelà–Ascoli if compact integral operators or Peano are clients;
- task-specific bases and Parseval;
- one carefully built periodic distribution space and continuous
  differentiation.

Part IV should introduce at need:

- derivative-sensitive Hilbert/Sobolev spaces;
- compact operators and their spectral theorem;
- Green operators and Sturm–Liouville hypotheses;
- Schwartz space, tempered distributions and the Fourier transform;
- bandlimited spaces, sinc bases and statistical covariance operators.

These are solution-driven enlargements, not omissions from Spaces.

## Open decisions for the next discussion

1. Which problem should open Solutions: transformation-generated motion,
   or a periodic distribution equation that pays off the end of Spaces
   immediately?
2. Does the variational movement prove existence via Riesz/direct methods,
   or remain classical Euler–Lagrange? Only the first clearly earns a full
   functional-analysis chapter.
3. Do we want the compact self-adjoint spectral theorem in full? If yes,
   which two clients justify it: string modes, PCA, Fredholm equations or
   inverse problems?
4. Which evolution equation is primary, and where? Avoid another
   threefold heat-equation repetition.
5. Is the statistics contact PCA/Karhunen–Loève, a carefully proved CLT,
   regularization, or more than one?
6. Which pure-math contact matters most: isoperimetric inequality, Weyl
   equidistribution, Poisson/theta or Borwein?
7. Is exact sinc reconstruction the final book climax, the climax of the
   final chapter, or one of several transform applications?
8. Five or six chapters? No ruling is needed until the theorem and client
   audits above are done.

## Success test

Part IV succeeds if the student can recognize one idea solving problems in
several worlds:

- completeness turns iteration into existence;
- weak convergence turns minimizing sequences into equilibria;
- self-adjointness turns an operator into orthogonal modes;
- Fourier analysis turns derivatives and convolutions into arithmetic;
- distributions let equations accept impulses and nonsmooth limits;
- basis choice turns a continuous signal into recoverable information.

The desired ending is not “functional analysis can generalize further.” It
is a result the student could explain to a physicist, engineer,
statistician or number theorist—and an understanding of why the abstract
spaces built earlier were what made that result possible.
