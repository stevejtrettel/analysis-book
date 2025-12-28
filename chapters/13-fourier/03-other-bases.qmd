## $\bigstar$ Other Bases


**Revisiting the Orthonormal Polynomials**

- In 13.1, we orthonormalized $\{1, x, x^2, \ldots\}$ on $[-1,1]$
- These are (scalar multiples of) the Legendre polynomials $P_n(x)$
- $P_0 = 1$, $P_1 = x$, $P_2 = \frac{1}{2}(3x^2 - 1)$, $P_3 = \frac{1}{2}(5x^3 - 3x)$, ...
- Orthogonality: $\int_{-1}^1 P_m(x) P_n(x)\, dx = \frac{2}{2n+1}\delta_{mn}$
- Density: polynomials dense by Weierstrass

**Why "Legendre"?**

- Not just Gram-Schmidt output — they're eigenfunctions of an operator:
$$-\frac{d}{dx}\left[(1-x^2)\frac{d}{dx}\right] P_n = n(n+1) P_n$$
- That's why they're orthogonal (self-adjoint operator)
- More on this pattern in 13.4

**Application: Optimal Numerical Integration**

- Problem: approximate $\int_{-1}^1 f(x)\, dx$ using $n$ sample points
- Quadrature rule: $\int_{-1}^1 f \approx \sum_{i=1}^n w_i f(x_i)$
- Question: which nodes $x_i$ are best?

**Gauss-Legendre Quadrature**

- Theorem: If nodes are roots of $P_n$, quadrature is exact for all polynomials of degree $\leq 2n-1$
- Remarkable: $n$ points give $2n-1$ degrees of exactness (optimal)
- Why roots of $P_n$? Orthogonality kills error terms

**Why This Helps for Non-Polynomials**

- Let $Q(f) = \sum w_i f(x_i)$
- For any polynomial $p$ of degree $\leq 2n-1$: $\int f - Q(f) = \int(f-p) - Q(f-p)$
- Therefore: $\left|\int f - Q(f)\right| \leq 4\|f - p\|_\infty$
- Taking infimum: error $\leq 4 E_{2n-1}(f)$ where $E_k(f)$ is best polynomial approximation error
- For smooth $f$: $E_k(f) \to 0$
- For analytic $f$: $E_k(f) \to 0$ exponentially
- Gauss-Legendre inherits optimal convergence from approximation theory

**Physical Interpretation** (remark)

- Legendre coefficients are multipole moments
- $c_0$ = monopole (average), $c_1$ = dipole, $c_2$ = quadrupole, ...
- Generating function: $\frac{1}{\sqrt{1-2xt+t^2}} = \sum_{n=0}^\infty P_n(x) t^n$
- This IS the potential of a point charge — Legendre appears naturally in physics

**Haar Wavelets on $[0,1]$** (brief; details in exercises)

- A very different basis: piecewise constant functions
- Level 0: $\phi = 1$
- Level 1: $\psi = +1$ on $[0, 1/2)$, $-1$ on $[1/2, 1)$
- Higher levels: rescaled, translated copies
- Orthogonality: by construction (disjoint supports or cancellation)
- Density: elementary! Step functions on dyadic intervals are dense
- No Stone-Weierstrass needed

**When Haar Wins**

- Step function $f = \mathbf{1}_{[1/2,1]}$:
  - In Haar: $f = \frac{1}{2}\phi - \frac{1}{2}\psi$. Two terms. Exact.
  - In Fourier: infinitely many terms, Gibbs phenomenon
- Functions with jumps prefer Haar
- Smooth periodic functions prefer Fourier

**The Message**

- Different bases for different problems
- Fourier: smooth, periodic, differential equations
- Legendre: polynomial approximation, numerical integration
- Haar: piecewise constant, jumps, localized features
- Same Parseval, same projection formula, different strengths
