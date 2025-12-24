# Reaching for Infinity: Part III Outline

## Structure Overview

**Part III: Functional Analysis** (Chapters 11–15)

---

## Chapter 11: Metric Spaces

**Narrative:** Same proofs as Part I, new setting. We abstract the key ideas.

### 11.1 Metric Spaces
- Definition, examples: $\mathbb{R}$, $\mathbb{R}^n$, discrete metric, sup norm on bounded functions
- Open/closed sets, convergence

### 11.2 Completeness
- Cauchy sequences, complete metric spaces
- Examples: $\mathbb{R}^n$ complete, $\mathbb{Q}$ not, $C[a,b]$ with sup norm complete

### 11.3 Compactness
- Sequential compactness
- Totally bounded + complete $\Leftrightarrow$ compact
- Heine-Borel in $\mathbb{R}^n$

### 11.4 The Contraction Mapping Theorem
- Statement and proof (same as Chapter 4, general setting)
- Applications: matrix exponential $e^A = \sum A^n/n!$ converges in operator norm

### 11.5 Baire Category Theorem
- A complete metric space is not a countable union of nowhere dense sets
- Applications: 
  - Nowhere differentiable functions are generic in $C[a,b]$
  - There is no function continuous only at irrationals

---

## Chapter 12: Function Spaces

**Narrative:** Apply metric space ideas to spaces of functions. "Analysis level 2."

### 12.1 The Space $C[a,b]$
- Sup norm, completeness
- Convergence in sup norm = uniform convergence

### 12.2 Uniform vs. Pointwise Convergence
- Definitions, examples where they differ
- Uniform limits preserve continuity (we had this as Dini — now we have the perspective)
- Uniform limits and integration
- Uniform limits and differentiation (with conditions)

### 12.3 Arzelà-Ascoli Theorem
- Equicontinuity
- Theorem: bounded + equicontinuous $\Rightarrow$ has uniformly convergent subsequence
- This is "Bolzano-Weierstrass for functions"

### 12.4 Weierstrass Approximation Theorem
- Polynomials are dense in $C[a,b]$
- Proof via Bernstein polynomials (or other)

### 12.5 Stone-Weierstrass (optional/stated)
- Generalization: subalgebras that separate points are dense

---

## Chapter 13: Differential Equations

**Narrative:** Apply the abstract machinery to solve equations in function spaces.

### 13.1 Existence and Uniqueness
- Picard-Lindelöf theorem: $y' = f(x,y)$ with $f$ Lipschitz in $y$
- Proof via contraction mapping in $C[a,b]$
- Gronwall's inequality
- Continuous dependence on initial conditions
- Volterra integral equations (same theorem)
- Example: Picard iteration generates Taylor series for $\sin$, $\cos$, $\exp$

### 13.2 Calculus of Variations
- Functionals $J[y] = \int F(x, y, y')\, dx$
- First variation
- Euler-Lagrange equation (necessary condition)
- Natural boundary conditions

### 13.3 Classic Variational Problems
- Brachistochrone (cycloid)
- Catenary (hanging chain)
- Geodesics
- Snell's law / Fermat's principle connection

### 13.4 [Possible: to be determined]
- Looking for a "climax" theorem
- Candidates: direct method, Noether, something else

---

## Chapter 14: Fourier Series

**Narrative:** Expand functions in sine and cosine series. When does it work? In what sense does the series converge?

### 14.1 Inner Product Spaces
- Inner product axioms
- Cauchy-Schwarz inequality (prove it: $\|v + tw\|^2 \geq 0$ trick)
- Norm, triangle inequality
- Orthogonality, orthonormal sets
- Orthogonal projection onto finite-dimensional subspace
- Projection minimizes distance
- Parseval in finite dimensions: $\|v\|^2 = \sum |\langle v, e_k \rangle|^2$

### 14.2 $L^2$ and Fourier Series
- $L^2[a,b]$ as inner product space: $\langle f, g \rangle = \int_a^b f(x) g(x)\, dx$
- Why $L^2$ not $L^1$: need inner product for projection
- Orthogonality of $\{1, \cos(nx), \sin(nx)\}$
- Fourier coefficients
- Bessel's inequality: $\sum |c_n|^2 \leq \|f\|^2$

### 14.3 Completeness and Convergence
- Completeness of trigonometric system (proof via Weierstrass or Fejér)
- Parseval's equality: $\sum |c_n|^2 = \|f\|^2$
- $L^2$ convergence of Fourier series
- Pointwise convergence issues (brief)
- Fejér's theorem / Cesàro summability (optional)

---

## Chapter 15: [Title TBD — Spectral Theory / Distributions / Fourier Transform]

**Narrative:** Why did sine and cosine work? They're eigenfunctions of $-d^2/dx^2$. This leads to spectral theory, distributions as "completing differentiation," and the Fourier transform as "completing Fourier series."

### 15.1 Eigenfunctions and Differential Operators
- $-y'' = \lambda y$ with boundary conditions
- Eigenvalues, eigenfunctions
- Sine and cosine are eigenfunctions — explains Chapter 14
- Sturm-Liouville problems: $-(py')' + qy = \lambda wy$
- Eigenfunction expansions generalize Fourier

### 15.2 Distributions
- Motivation: $\delta$ "function," $H' = ?$
- Test functions $\mathcal{D}(\mathbb{R})$
- Distributions as continuous linear functionals
- $\delta[\phi] = \phi(0)$ — evaluation is legitimate
- Derivative of a distribution: $T'[\phi] = -T[\phi']$
- Every distribution is infinitely differentiable
- "Completing differentiation"

### 15.3 Distributions Complete Fourier Series
- Distributional convergence
- Every periodic distribution has a convergent Fourier series
- Example: $\delta = \frac{1}{2\pi} \sum e^{inx}$
- "Completing Fourier theory"

### 15.4 Linear Functionals and Riesz Representation
- Continuous linear functionals on $C[a,b]$
- Riesz representation theorem: every such functional is integration against a signed measure
- $\delta_x$ is a measure (point mass)
- "There are no other integrals"

### 15.5 The Fourier Transform
- Non-periodic functions on $\mathbb{R}$
- Fourier series $\to$ Fourier integral
- $\hat{f}(\xi) = \int f(x) e^{-i\xi x}\, dx$
- Inversion, Plancherel: $\|\hat{f}\|^2 = 2\pi \|f\|^2$
- Eigenfunctions $e^{i\xi x}$ are distributions (not in $L^2$)
- Continuous spectrum

### 15.6 The Heat Equation
- $u_t = u_{xx}$ on $\mathbb{R}$
- Fourier transform diagonalizes: $\hat{u}_t = -\xi^2 \hat{u}$
- Solution: $\hat{u}(\xi, t) = e^{-\xi^2 t} \hat{f}(\xi)$
- Heat kernel: $K_t(x) = (4\pi t)^{-1/2} e^{-x^2/4t}$
- $K_t \to \delta$ as $t \to 0^+$ (distributional limit)
- Instantaneous smoothing
- The Gaussian emerges from spectral theory

### Epilogue: The Landscape Ahead
- Tempered distributions, Schwartz space
- Sobolev spaces
- Spectral theorem for unbounded operators
- Quantum mechanics
- The pattern: identify what's missing, complete the space

---

# Additional Topics Discussed (Not Yet Placed)

## Potentially in Chapter 13 (needs climax)
- Direct method in calculus of variations (existence of minimizers)
- Noether's theorem (symmetry $\to$ conservation law)
- Peano existence theorem (existence without uniqueness, uses Arzelà-Ascoli)
- Second variation, Jacobi equation, conjugate points
- Isoperimetric problems with constraints

## Potentially in Chapter 14 or 15
- Fredholm integral equations, Fredholm alternative
- Compact operators, spectral theorem for compact self-adjoint operators
- Green's functions
- Sturm comparison/oscillation theorems
- More on pointwise convergence: Dini's test, Dirichlet conditions, Gibbs phenomenon

## Special Functions
- Gamma function $\Gamma(s) = \int_0^\infty t^{s-1} e^{-t}\, dt$
- Stirling's formula via Laplace's method
- Bessel functions
- Legendre, Hermite, Chebyshev, Laguerre polynomials
- Orthogonal polynomials generally

## Applications and Examples
- Weyl equidistribution theorem
- Poisson summation formula $\to$ Jacobi theta function
- Shannon sampling theorem
- Central limit theorem via Fourier methods
- Heat equation on bounded intervals
- Delta potential (mixed discrete/continuous spectrum)

## Measure and Integration (beyond Chapter 10)
- Lebesgue differentiation theorem
- Absolute continuity and FTC for Lebesgue
- Functions of bounded variation
- Stieltjes integration
- Radon-Nikodym theorem

## Inequalities
- Hölder's inequality
- Minkowski's inequality
- Jensen's inequality
- Young's inequality for convolutions
- Poincaré inequality

## Topology and Category
- More Baire category applications
- Generic continuous functions are nowhere differentiable
- Continuous nowhere-monotone is generic
- Cantor function, space-filling curves

## Duality and Functional Analysis
- Dual spaces
- Weak convergence
- Hahn-Banach (1D version)
- Operators and adjoints
