# Part III: Functional Analysis (Draft Outline)

## Overview

This part develops functional analysis from metric spaces through Fourier analysis. The narrative arc:

**Abstraction → Linear Structure → Geometry → Spectral Machines → Fourier Triumph**

We abstract to unify examples, add linear structure to get normed spaces, add inner products to get Hilbert space geometry, build the spectral theorem, then Fourier analysis falls out as the grand application with concrete payoffs (Basel problem, isoperimetric inequality, Weierstrass approximation).

---

## Chapter 11: Metric Spaces

### The Abstraction
- Definition of metric space: $(X, d)$ with $d: X \times X \to [0, \infty)$
- Axioms: $d(x,y) = 0 \Leftrightarrow x = y$, symmetry, triangle inequality
- Examples: $\mathbb{R}^n$ with Euclidean metric, $C[a,b]$ with sup metric, discrete metric, sequence spaces

### Topology in Metric Spaces
- Open balls $B(x, r) = \{y : d(x,y) < r\}$
- Open and closed sets
- Convergence: $x_n \to x$ iff $d(x_n, x) \to 0$
- Continuity: $f: X \to Y$ continuous iff $x_n \to x \Rightarrow f(x_n) \to f(x)$
- Equivalent characterization via preimages of open sets

### Completeness
- Cauchy sequences in metric spaces
- Complete metric spaces: every Cauchy sequence converges
- Examples: $\mathbb{R}$ complete, $\mathbb{Q}$ not; $C[a,b]$ with sup norm complete
- **Completion theorem**: every metric space embeds densely in a complete metric space
- Revisiting: $\mathbb{R}$ as completion of $\mathbb{Q}$; $L^1$ as completion of $C[a,b]$

### Compactness
- Sequential compactness: every sequence has convergent subsequence
- Equivalent to covering compactness in metric spaces (state, maybe prove)
- Compact subsets of $\mathbb{R}^n$: closed and bounded (Heine-Borel)
- Continuous image of compact is compact
- Extreme value theorem generalized

### The Banach Fixed Point Theorem
- Contraction: $d(f(x), f(y)) \leq c \cdot d(x,y)$ with $c < 1$
- **Theorem**: A contraction on a complete metric space has a unique fixed point
- Proof: iterates $x, f(x), f(f(x)), \ldots$ form Cauchy sequence
- Convergence rate is geometric

### Application: ODE Existence and Uniqueness
- Setup: $y' = f(t, y)$, $y(t_0) = y_0$ with $f$ Lipschitz in $y$
- Reformulation as integral equation: $y(t) = y_0 + \int_{t_0}^{t} f(s, y(s)) \, ds$
- Define operator $T$ on space of continuous functions
- **Picard-Lindelöf Theorem**: Show $T$ is a contraction; conclude unique solution exists
- Higher-order ODEs as first-order systems
- Extension: continuous dependence on initial conditions (brief)

---

## Chapter 12: Normed Spaces and Function Spaces

### Norms and Normed Spaces
- Definition: $\|x\| \geq 0$, $\|x\| = 0 \Leftrightarrow x = 0$, $\|\alpha x\| = |\alpha| \|x\|$, triangle inequality
- Induced metric: $d(x,y) = \|x - y\|$
- Banach space: complete normed vector space

### The Main Examples
- $\mathbb{R}^n$ with $\|x\|_p = \left( \sum |x_i|^p \right)^{1/p}$ for $1 \leq p < \infty$
- $\|x\|_\infty = \max |x_i|$
- $\ell^p$: sequences with $\sum |x_n|^p < \infty$
- $C[a,b]$ with sup norm $\|f\|_\infty = \sup_{x \in [a,b]} |f(x)|$
- $L^p[a,b]$ with $\|f\|_p = \left( \int_a^b |f|^p \right)^{1/p}$

### $L^p$ Spaces
- Minkowski's inequality: $\|f + g\|_p \leq \|f\|_p + \|g\|_p$ (triangle inequality)
- Hölder's inequality: $\int |fg| \leq \|f\|_p \|g\|_q$ where $1/p + 1/q = 1$
- **Riesz-Fischer Theorem**: $L^p$ is complete (connecting to Chapter 10)
- $L^2$ is special: it's a Hilbert space (preview)

### Bounded Linear Operators
- Definition: $T: X \to Y$ linear with $\|Tx\| \leq C\|x\|$
- Operator norm: $\|T\| = \sup_{\|x\| = 1} \|Tx\|$
- Equivalent: $T$ bounded iff $T$ continuous
- Space of bounded operators $\mathcal{B}(X, Y)$ is a Banach space when $Y$ is

### Finite vs Infinite Dimensions
- **Theorem**: All norms on $\mathbb{R}^n$ are equivalent
- Proof uses compactness of unit sphere
- **Failure in infinite dimensions**: On $C[a,b]$, sup norm and $L^2$ norm are inequivalent
- Different norms give different topologies, different notions of convergence
- The unit ball is compact iff finite-dimensional

### Dual Spaces (Brief)
- Definition: $X^* = \mathcal{B}(X, \mathbb{R})$, bounded linear functionals
- Examples: $(\mathbb{R}^n)^* \cong \mathbb{R}^n$; $(\ell^p)^* \cong \ell^q$
- Preview: Riesz representation will characterize Hilbert space duals

---

## Chapter 13: Hilbert Spaces

### Inner Products
- Definition: $\langle \cdot, \cdot \rangle: H \times H \to \mathbb{R}$ (or $\mathbb{C}$)
- Axioms: linearity, symmetry, positive definiteness
- Induced norm: $\|x\| = \sqrt{\langle x, x \rangle}$
- Hilbert space: complete inner product space

### The Main Examples
- $\mathbb{R}^n$ with dot product
- $\ell^2$: sequences with $\sum |x_n|^2 < \infty$, $\langle x, y \rangle = \sum x_n y_n$
- $L^2[a,b]$: $\langle f, g \rangle = \int_a^b f(x) g(x) \, dx$

### Fundamental Inequalities
- **Cauchy-Schwarz**: $|\langle x, y \rangle| \leq \|x\| \|y\|$
- **Parallelogram law**: $\|x + y\|^2 + \|x - y\|^2 = 2\|x\|^2 + 2\|y\|^2$
- Parallelogram law characterizes inner product spaces among normed spaces

### Orthogonality
- $x \perp y$ iff $\langle x, y \rangle = 0$
- Pythagorean theorem: $x \perp y \Rightarrow \|x + y\|^2 = \|x\|^2 + \|y\|^2$
- Orthogonal complement: $M^\perp = \{x : \langle x, m \rangle = 0 \text{ for all } m \in M\}$

### The Projection Theorem
- **Theorem**: Let $M \subset H$ be a closed subspace. For any $x \in H$, there exists unique $m \in M$ minimizing $\|x - m\|$.
- This $m$ is characterized by: $x - m \perp M$
- Orthogonal decomposition: $H = M \oplus M^\perp$
- Application: best approximation, least squares

### Orthonormal Systems
- Orthonormal set: $\langle e_i, e_j \rangle = \delta_{ij}$
- **Bessel's inequality**: $\sum |\langle x, e_n \rangle|^2 \leq \|x\|^2$
- Gram-Schmidt process
- Orthonormal basis: orthonormal set whose span is dense

### Parseval and Completeness
- **Parseval's identity**: $\{e_n\}$ is an orthonormal basis iff $\|x\|^2 = \sum |\langle x, e_n \rangle|^2$ for all $x$
- Equivalently: $x = \sum \langle x, e_n \rangle e_n$ (convergence in norm)
- Every separable Hilbert space is isomorphic to $\ell^2$

### Riesz Representation Theorem
- **Theorem**: For every bounded linear functional $\phi: H \to \mathbb{R}$, there exists unique $y \in H$ with $\phi(x) = \langle x, y \rangle$ for all $x$
- Moreover $\|\phi\| = \|y\|$
- Consequence: $H^* \cong H$

---

## Chapter 14: Compact Operators and Spectral Theory

### Compactness in Function Spaces
- Recall: compact = sequentially compact in metric spaces
- Compact subsets of $\mathbb{R}^n$: closed and bounded
- **Failure in infinite dimensions**: closed unit ball in $\ell^2$ is not compact
- Need an extra condition...

### Arzelà-Ascoli Theorem
- Equicontinuity: for all $\varepsilon > 0$, exists $\delta > 0$ such that $|x - y| < \delta \Rightarrow |f_n(x) - f_n(y)| < \varepsilon$ for all $n$
- **Theorem**: $F \subset C[a,b]$ is precompact (closure is compact) iff $F$ is bounded and equicontinuous
- Application: extracting convergent subsequences of solutions to ODEs

### Compact Operators
- Definition: $T: X \to Y$ is compact if $T(\text{bounded set})$ is precompact
- Equivalently: $\{x_n\}$ bounded $\Rightarrow \{Tx_n\}$ has convergent subsequence
- Compact operators are bounded
- Composition: compact $\circ$ bounded = compact

### Integral Operators
- **Example**: $Tf(x) = \int_a^b K(x,y) f(y) \, dy$ with $K$ continuous
- This is compact on $C[a,b]$ and on $L^2[a,b]$
- Proof via Arzelà-Ascoli (for $C[a,b]$ case)

### Self-Adjoint Operators
- Definition: $\langle Tx, y \rangle = \langle x, Ty \rangle$ for all $x, y$
- Eigenvalues of self-adjoint operators are real
- Eigenvectors for distinct eigenvalues are orthogonal
- Example: integral operator with symmetric kernel $K(x,y) = K(y,x)$

### The Spectral Theorem
- **Theorem**: Let $T: H \to H$ be compact and self-adjoint. Then:
  1. The eigenvalues form a sequence $\lambda_1, \lambda_2, \ldots \to 0$ (finite or countable)
  2. Eigenvectors $\{e_n\}$ form an orthonormal basis for $(\ker T)^\perp$
  3. $Tx = \sum_n \lambda_n \langle x, e_n \rangle e_n$
- Proof outline: variational characterization of eigenvalues, induction

### The Fredholm Alternative
- For compact $T$ and $\lambda \neq 0$:
- Either $(T - \lambda I)x = y$ has unique solution for all $y$
- Or $\lambda$ is an eigenvalue and solutions exist iff $y \perp \ker(T - \lambda I)$
- Application to integral equations

### Connection to Differential Equations
- Sturm-Liouville problems: $-y'' + q(x)y = \lambda y$ with boundary conditions
- Convert to integral equation via Green's function
- Spectral theorem gives orthonormal basis of eigenfunctions
- **Key insight**: Fourier series is the special case $q = 0$, periodic boundary conditions

---

## Chapter 15: Fourier Analysis

### Fourier Series as Orthonormal Expansion
- The functions $\{1, \cos(nx), \sin(nx)\}_{n \geq 1}$ are orthogonal in $L^2[-\pi, \pi]$
- Normalize to get orthonormal system
- Complex form: $e_n(x) = \frac{1}{\sqrt{2\pi}} e^{inx}$ for $n \in \mathbb{Z}$
- Fourier coefficients: $\hat{f}(n) = \langle f, e_n \rangle = \frac{1}{\sqrt{2\pi}} \int_{-\pi}^{\pi} f(x) e^{-inx} \, dx$

### $L^2$ Convergence
- **Theorem**: $\{e_n\}_{n \in \mathbb{Z}}$ is an orthonormal basis for $L^2[-\pi, \pi]$
- Immediate from Hilbert space theory once we prove completeness
- Proof of completeness: density of trigonometric polynomials (via Fejér, or direct)
- **Parseval's identity**: $\|f\|_2^2 = \sum_{n \in \mathbb{Z}} |\hat{f}(n)|^2$

### The Basel Problem
- Apply Parseval to $f(x) = x$ on $[-\pi, \pi]$
- Compute: $\|x\|_2^2 = \int_{-\pi}^{\pi} x^2 \, dx = \frac{2\pi^3}{3}$
- Compute Fourier coefficients: $\hat{f}(n) = \frac{(-1)^{n+1}}{in}$ for $n \neq 0$
- Parseval gives: $\frac{2\pi^3}{3} = 2\pi \sum_{n=1}^{\infty} \frac{1}{n^2}$
- **Result**: $\sum_{n=1}^{\infty} \frac{1}{n^2} = \frac{\pi^2}{6}$

### Pointwise Convergence
- $L^2$ convergence doesn't imply pointwise convergence!
- Dirichlet kernel: $D_N(x) = \sum_{n=-N}^{N} e^{inx}$
- Partial sums: $S_N f(x) = (f * D_N)(x)$
- Problem: $\int |D_N| \to \infty$ (Dirichlet kernel is not an approximate identity)
- **Theorem**: If $f$ is $C^1$, Fourier series converges pointwise to $f$
- Gibbs phenomenon at discontinuities

### Fejér's Theorem
- Cesàro means: $\sigma_N f = \frac{1}{N+1}(S_0 f + S_1 f + \cdots + S_N f)$
- Fejér kernel: $F_N(x) = \frac{1}{N+1} \sum_{n=0}^{N} D_n(x)$
- **Key property**: $F_N \geq 0$ and $\int F_N = 2\pi$ and $F_N$ concentrates at 0
- **Fejér's Theorem**: If $f$ is continuous, $\sigma_N f \to f$ uniformly

### Weierstrass Approximation Theorem
- **Corollary of Fejér**: Trigonometric polynomials are dense in $C[-\pi, \pi]$
- **Theorem (Weierstrass)**: Polynomials are dense in $C[a,b]$
- Proof: Map $[a,b]$ to a circle, apply Fejér, extract polynomial approximation
- Alternative: direct proof via Bernstein polynomials (sketch)

### The Isoperimetric Inequality
- **Theorem**: Among curves of length $L$ enclosing a region, the circle encloses maximum area
- Equivalently: $4\pi A \leq L^2$ with equality iff circle
- Proof via Fourier:
  - Parametrize curve: $\gamma(t) = (x(t), y(t))$ for $t \in [0, 2\pi]$
  - Length: $L = \int |\gamma'|$
  - Area: $A = \frac{1}{2} \int (x \, dy - y \, dx)$
  - Express in terms of Fourier coefficients
  - Apply Parseval; inequality becomes algebraic

### Connections and Outlook
- Heat equation on $[0, \pi]$: separation of variables gives Fourier series solution
- This is spectral decomposition for $-d^2/dx^2$
- Fourier transform on $\mathbb{R}$: preview of what changes
- The spectral theorem unifies: Fourier is one instance of expanding in eigenfunctions

---

## Chapter Summary

| Chapter | Core Content | Concrete Payoff |
|---------|--------------|-----------------|
| 11: Metric Spaces | Abstraction, completeness, compactness | ODE existence/uniqueness |
| 12: Normed Spaces | Linear structure, $L^p$ spaces, operators | Understanding function spaces |
| 13: Hilbert Spaces | Inner products, orthogonality, projections | Best approximation, Riesz representation |
| 14: Spectral Theory | Compact operators, spectral theorem | Machinery for Fourier |
| 15: Fourier Analysis | Series, convergence, applications | Basel, isoperimetric, Weierstrass |

---

## Key Theorems

1. **Banach Fixed Point** (Ch 11): Contractions have unique fixed points
2. **Picard-Lindelöf** (Ch 11): ODEs have unique local solutions
3. **Riesz-Fischer** (Ch 12): $L^p$ spaces are complete
4. **Projection Theorem** (Ch 13): Closest point in closed subspace exists
5. **Riesz Representation** (Ch 13): $H^* \cong H$ for Hilbert spaces
6. **Arzelà-Ascoli** (Ch 14): Characterizes compact sets in $C[a,b]$
7. **Spectral Theorem** (Ch 14): Compact self-adjoint operators have orthonormal eigenbasis
8. **Fejér** (Ch 15): Cesàro means converge uniformly for continuous functions
9. **Parseval** (Ch 15): $\|f\|^2 = \sum |\hat{f}(n)|^2$

---

## Potential Concerns

This outline may be **too abstract for too long**:
- Chapters 11–14 are building machinery
- Cool concrete things don't arrive until Chapter 15
- Students might lose motivation in the middle

**Alternative**: Interleave more applications earlier, or restructure so Fourier appears sooner with abstract machinery introduced as needed.

---

## Dependencies

**Requires from earlier parts**:
- Real numbers, completeness, sequences/series (Part I)
- Continuity, compactness, differentiation (Part I–II)
- Lebesgue integral, $L^1$ completeness, DCT (Chapter 10)

**Natural continuations** (beyond book scope):
- Fourier transform on $\mathbb{R}$, Plancherel theorem
- Distributions and Sobolev spaces
- Spectral theory for unbounded operators
- Measure theory and abstract integration
- Complex analysis connections
