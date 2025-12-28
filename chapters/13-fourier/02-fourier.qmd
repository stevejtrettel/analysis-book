## Fourier Series


**The Observation**

- In 13.1, we had to orthonormalize polynomials via Gram-Schmidt
- Sines $\{\sin(nx)\}$ on $[0, \pi]$ are ALREADY orthogonal!
- $\int_0^\pi \sin(mx)\sin(nx)\, dx = \frac{\pi}{2}\delta_{mn}$
- No Gram-Schmidt needed — why? (Brief: eigenfunctions of $-\frac{d^2}{dx^2}$; full story in 13.4)

**The Fourier Basis**

- Orthonormal: $\left\{\sqrt{\frac{2}{\pi}}\sin(nx)\right\}_{n=1}^\infty$ on $[0, \pi]$
- Density: trig polynomials dense in $C([0,\pi])$ by Stone-Weierstrass (Ch 12)
- Therefore complete in $L^2$

**Fourier Coefficients**

- $b_n = \frac{2}{\pi}\int_0^\pi f(x)\sin(nx)\, dx$
- Parseval: $\sum_{n=1}^\infty b_n^2 = \frac{2}{\pi}\|f\|_2^2$
- $L^2$ convergence: $\left\|f - \sum_{n=1}^N b_n\sin(nx)\right\|_2 \to 0$

**Interpretation: Frequency Decomposition**

- $b_n$ measures "how much frequency $n$" is in $f$
- Low $n$: slow variation (smooth features)
- High $n$: rapid oscillation (fine details, discontinuities)
- Parseval: total energy = sum of energies in each frequency

**Application: Filtering**

- Low-pass filter: keep only $b_1, \ldots, b_N$, discard higher frequencies
- Effect: smoothing, removes rapid oscillations
- High-pass filter: discard low frequencies
- Effect: edge detection, keeps rapid changes
- Parseval controls energy lost/kept

**Application: The Basel Problem**

- Expand $f(x) = x$ on $[0, \pi]$
- Compute: $b_n = \frac{2(-1)^{n+1}}{n}$
- Compute: $\|f\|_2^2 = \int_0^\pi x^2\, dx = \frac{\pi^3}{3}$
- Parseval: $\sum_{n=1}^\infty \frac{4}{n^2} = \frac{2}{\pi} \cdot \frac{\pi^3}{3}$
- Therefore: $\sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}$

**Application: Isoperimetric Inequality**

- Setup from Ch 12: maximize area subject to fixed perimeter
- Parametrize closed curve: $(x(t), y(t))$ periodic
- Length: $L = \int_0^{2\pi} \sqrt{x'^2 + y'^2}\, dt$
- Signed area: $A = \frac{1}{2}\int_0^{2\pi}(xy' - yx')\, dt$
  - (Equals geometric area for simple curves; proof via Green's theorem in multivariable analysis)
- Expand $x, y$ in Fourier series
- Apply Parseval to express $L^2$ and $A$ in terms of coefficients
- Derive: $4\pi A \leq L^2$
- Equality iff circle

**Full Fourier Series on $[-\pi, \pi]$** (brief)

- Need sines AND cosines for non-odd functions
- Basis: $\{1, \cos(nx), \sin(nx)\}_{n \geq 1}$
- Coefficients: $a_0, a_n, b_n$
- Same theory applies