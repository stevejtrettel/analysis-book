## Eigenfunction Methods

LETS DO SOME ODE STUFF FIRST!

**The Heat Equation**

- $u_t = u_{xx}$ on $[0, \pi]$, boundary conditions $u(0, t) = u(\pi, t) = 0$
- Initial condition: $u(x, 0) = f(x)$
- Physically: temperature in a rod with endpoints held at zero

**Separation of Variables**

- Guess: $u(x, t) = X(x)T(t)$
- Substitute: $\frac{T'}{T} = \frac{X''}{X} = -\lambda$ (both sides constant)
- Two ODEs: $X'' = -\lambda X$ and $T' = -\lambda T$

**The Eigenvalue Problem**

- $X'' = -\lambda X$ with $X(0) = X(\pi) = 0$
- Nontrivial solutions only for $\lambda = n^2$, $n = 1, 2, 3, \ldots$
- Eigenfunctions: $X_n(x) = \sin(nx)$
- This is a Sturm-Liouville problem!

**The Time Evolution**

- For each $n$: $T_n' = -n^2 T_n$
- Solution: $T_n(t) = b_n e^{-n^2 t}$

**The General Solution**

- Superposition: $u(x, t) = \sum_{n=1}^\infty b_n \sin(nx) e^{-n^2 t}$
- Coefficients from initial condition: $b_n = \frac{2}{\pi}\int_0^\pi f(x)\sin(nx)\, dx$
- This is the Fourier series of $f$!

**Smoothing Property**

- Each mode decays like $e^{-n^2 t}$
- Higher frequencies decay faster
- For any $t > 0$: solution is $C^\infty$ even if $f$ is rough
- Heat equation "smooths out" irregularities

**The Wave Equation**

- $u_{tt} = c^2 u_{xx}$ on $[0, \pi]$, boundary conditions $u(0, t) = u(\pi, t) = 0$
- Initial conditions: $u(x, 0) = f(x)$, $u_t(x, 0) = g(x)$
- Physically: vibrating string with fixed endpoints

**Separation of Variables**

- Same eigenvalue problem for $X$: $X_n = \sin(nx)$, $\lambda_n = n^2$
- Time equation: $T'' = -c^2 n^2 T$
- Solution: $T_n(t) = a_n \cos(cnt) + b_n \sin(cnt)$

**The General Solution**

- $u(x, t) = \sum_{n=1}^\infty (a_n \cos(cnt) + b_n \sin(cnt))\sin(nx)$
- Standing waves: each mode oscillates in place
- Coefficients from initial conditions

**D'Alembert's Solution** (brief)

- Alternative: $u(x, t) = F(x + ct) + G(x - ct)$
- Traveling waves moving left and right
- Equivalent to Fourier form but different perspective

**Energy Conservation**

- Define $E(t) = \frac{1}{2}\int_0^\pi (u_t^2 + c^2 u_x^2)\, dx$
- Theorem: $E'(t) = 0$
- Proof: Differentiate, use PDE and integration by parts
- Contrast with heat equation: wave conserves energy, heat dissipates

**Why Does This Work? The General Principle**

Sines appeared because they are eigenfunctions of $-\frac{d^2}{dx^2}$ with Dirichlet boundary conditions.

The key property of eigenfunctions: applying $L$ just multiplies by the eigenvalue. So the PDE decouples into independent ODEs for each mode.

This is a general principle: given a self-adjoint operator $L$:
- Eigenvalues are real
- Eigenfunctions for distinct eigenvalues are orthogonal
- Under suitable conditions, eigenfunctions form a complete basis

To solve $u_t = Lu$ or $u_{tt} = Lu$:
1. Find eigenfunctions of $L$
2. Expand in that basis
3. Solve decoupled ODEs for coefficients

**Sturm-Liouville Problems**

General form: $-\frac{d}{dx}\left[p(x)\frac{du}{dx}\right] + q(x)u = \lambda w(x)u$ on $[a, b]$

With boundary conditions (Dirichlet, Neumann, or mixed).

Under appropriate conditions on $p, q, w$:
- Eigenvalues $\lambda_n$ form a sequence $\lambda_1 < \lambda_2 < \cdots \to \infty$
- Eigenfunctions $\phi_n$ are orthogonal with respect to weight $w$
- Eigenfunctions are complete in $L^2([a, b], w)$

**Other Operators, Other Bases**

| Problem | Operator | Eigenfunctions |
|---------|----------|----------------|
| Heat/wave on interval | $-\frac{d^2}{dx^2}$ (Dirichlet) | $\sin(nx)$ |
| Heat/wave on circle | $-\frac{d^2}{dx^2}$ (periodic) | $e^{inx}$ |
| Spherical symmetry | Legendre operator | $P_n(x)$ |
| Cylindrical symmetry | Bessel operator | $J_n(x)$ |
| Quantum harmonic oscillator | $-\frac{d^2}{dx^2} + x^2$ | Hermite functions |

The technique is always the same: expand in eigenfunctions of your operator.
