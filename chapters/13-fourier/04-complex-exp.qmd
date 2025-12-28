## Why Complex Exponentials?


**Fourier's Original Problem: The Heat Equation**

- $u_t = u_{xx}$ on $[0, \pi]$, boundary conditions $u(0,t) = u(\pi,t) = 0$
- Separation of variables: try $u(x,t) = X(x)T(t)$
- Get $\frac{T'}{T} = \frac{X''}{X} = -\lambda$ (both sides constant)
- $X'' = -\lambda X$ with $X(0) = X(\pi) = 0$
- Solutions: $X_n = \sin(nx)$, eigenvalues $\lambda_n = n^2$
- Each mode: $T_n' = -n^2 T_n$ gives $T_n(t) = e^{-n^2 t}$
- General solution: $u(x,t) = \sum_{n=1}^\infty b_n \sin(nx) e^{-n^2 t}$

**The Power of Eigenfunctions**

- Each mode evolves independently
- Infinitely many coupled PDEs → infinitely many decoupled ODEs
- Initial condition determines $b_n$; then each $b_n(t)$ evolves on its own

**Sines Diagonalize $-\frac{d^2}{dx^2}$**

- $-\frac{d^2}{dx^2}\sin(nx) = n^2\sin(nx)$
- Eigenfunctions with eigenvalue $n^2$
- Heat equation: $u_t = u_{xx}$ becomes $b_n' = -n^2 b_n$
- This works for ANY even-degree constant-coefficient operator
- $P\left(-\frac{d^2}{dx^2}\right)\sin(nx) = P(n^2)\sin(nx)$

**What About $\frac{d}{dx}$?**

- $\frac{d}{dx}\sin(nx) = n\cos(nx)$ — NOT a scalar multiple of $\sin(nx)$!
- $\frac{d}{dx}\cos(nx) = -n\sin(nx)$ — also not an eigenfunction!
- Sines and cosines MIX under first derivative

**The Matrix Picture**

- Restrict to $V_n = \text{span}\{\cos(nx), \sin(nx)\}$
- In basis $(\cos(nx), \sin(nx))$:
$$\frac{d}{dx}\Big|_{V_n} \sim \begin{pmatrix} 0 & -n \\ n & 0 \end{pmatrix}$$
- This is a rotation matrix (times $n$)
- Eigenvalues over $\mathbb{R}$: none! Characteristic polynomial $\lambda^2 + n^2 = 0$

**Just Like Linear Algebra**

- Rotation matrices don't diagonalize over $\mathbb{R}$
- But over $\mathbb{C}$: eigenvalues $\pm in$, eigenvectors involve $i$
- Same situation here

**The Resolution: Work Over $\mathbb{C}$**

- Eigenvalues of $\begin{pmatrix} 0 & -n \\ n & 0 \end{pmatrix}$: $\lambda = \pm in$
- Eigenvectors: $\begin{pmatrix} 1 \\ -i \end{pmatrix}$ and $\begin{pmatrix} 1 \\ i \end{pmatrix}$
- In function terms: $\cos(nx) \pm i\sin(nx) = e^{\pm inx}$

**Complex Exponentials ARE Eigenfunctions of $\frac{d}{dx}$**

- $\frac{d}{dx}e^{inx} = in \cdot e^{inx}$
- Each $e^{inx}$ is an eigenfunction with eigenvalue $in$
- No mixing!

**Complex Fourier Series**

- Basis: $\{e^{inx}\}_{n \in \mathbb{Z}}$ on $[-\pi, \pi]$
- Orthogonality: $\frac{1}{2\pi}\int_{-\pi}^{\pi} e^{imx}\overline{e^{inx}}\, dx = \delta_{mn}$
- Coefficients: $c_n = \frac{1}{2\pi}\int_{-\pi}^{\pi} f(x)e^{-inx}\, dx$
- Parseval: $\sum_{n \in \mathbb{Z}} |c_n|^2 = \frac{1}{2\pi}\|f\|_2^2$

**The Punchline**

- Complex exponentials diagonalize $\frac{d}{dx}$
- Therefore they diagonalize ALL of $\mathbb{C}[\frac{d}{dx}]$
- For any polynomial $P$: $P\left(\frac{d}{dx}\right)e^{inx} = P(in) \cdot e^{inx}$
- ANY constant-coefficient differential operator!

**Example: First-Order ODE**

- Solve $y' + y = f$ with $f$ periodic
- Expand: $f = \sum c_n^{(f)} e^{inx}$, try $y = \sum c_n^{(y)} e^{inx}$
- Substitute: $(in + 1)c_n^{(y)} = c_n^{(f)}$
- Solution: $c_n^{(y)} = \frac{c_n^{(f)}}{1 + in}$
- Each coefficient computed independently — no coupling!

**Contrast: Same ODE in Sine-Cosine Basis**

- Expand $f = \sum(a_n \cos(nx) + b_n \sin(nx))$
- The equation $y' + y = f$ gives coupled $2 \times 2$ systems for each $n$
- Solvable, but messier

**Translation for Real Functions**

- Real $f$ means $c_{-n} = \overline{c_n}$
- Relationship: $a_n = c_n + c_{-n}$, $b_n = i(c_n - c_{-n})$
- Complex form is not "just cleaner notation"
- It's the natural eigenbasis for differentiation

**Why Fourier is Ubiquitous**

- Fourier discovered the right basis for working with $\frac{d}{dx}$
- Any problem with constant-coefficient differential operators simplifies in this basis
- Heat equation, wave equation, signal processing, quantum mechanics...
- Not because sines are special — because complex exponentials diagonalize differentiation

**Looking Ahead**

- On $\mathbb{R}$ (non-periodic): eigenfunctions $e^{i\xi x}$ for continuous $\xi$
- But $e^{i\xi x} \notin L^2(\mathbb{R})$!
- Need distributions (Ch 15) to make sense of this
- Leads to the Fourier transform
