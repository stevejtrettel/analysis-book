## Applications


**Application 1: The Sampling Theorem**

*Bandlimited functions:*
- Definition: $f$ is bandlimited to $[-\Omega, \Omega]$ if $\hat{f}(\xi) = 0$ for $|\xi| > \Omega$
- Only frequencies up to $\Omega$ present
- Example: audio filtered to remove high frequencies

*The Nyquist-Shannon theorem:*
- Theorem: If $f$ is bandlimited to $[-\Omega, \Omega]$, then $f$ is completely determined by its samples $f(n\pi/\Omega)$ for $n \in \mathbb{Z}$
- Reconstruction formula:
$$f(x) = \sum_{n=-\infty}^\infty f\left(\frac{n\pi}{\Omega}\right) \text{sinc}\left(\frac{\Omega x}{\pi} - n\right)$$
- where $\text{sinc}(x) = \frac{\sin(\pi x)}{\pi x}$

*Proof using distributions:*
- Sampling = multiplying by Dirac comb: $f_{\text{sampled}} = f \cdot \text{III}_{\pi/\Omega}$
- Fourier: multiplication → convolution
- $\hat{f}_{\text{sampled}} = \frac{1}{2\pi}\hat{f} * \widehat{\text{III}_{\pi/\Omega}}$
- Poisson: $\widehat{\text{III}_{\pi/\Omega}} = \frac{2\Omega}{\pi} \text{III}_{2\Omega}$
- Result: $\hat{f}$ gets periodically replicated with period $2\Omega$
- If $\hat{f}$ supported in $[-\Omega, \Omega]$: replicas don't overlap!
- Can recover $\hat{f}$ by multiplying by rectangle $\mathbf{1}_{[-\Omega,\Omega]}$
- Inverse Fourier gives reconstruction formula

*The message:*
- Sample rate must exceed $2\Omega$ (Nyquist rate) to avoid aliasing
- Distributions (Dirac comb) essential to the proof
- Foundation of digital audio, images, communications

---

**Application 2: The Central Limit Theorem**

*Setup (no probability needed):*
- Let $f \geq 0$ with $\int f = 1$ (normalized)
- Assume $\int xf(x)\, dx = 0$ (centered)
- Assume $\int x^2 f(x)\, dx = 1$ (unit variance)
- Consider $n$-fold convolution: $f_n = f * f * \cdots * f$ ($n$ times)
- Rescale: $g_n(x) = \sqrt{n} f_n(\sqrt{n} x)$

*The theorem:*
- $g_n \to \frac{1}{\sqrt{2\pi}} e^{-x^2/2}$ (the Gaussian)
- Convergence in $L^1$ and pointwise

*Proof via Fourier:*
- $\hat{f}_n(\xi) = \hat{f}(\xi)^n$ (convolution → multiplication)
- Rescaling: $\hat{g}_n(\xi) = \hat{f}(\xi/\sqrt{n})^n$
- Expand $\hat{f}$ near $\xi = 0$:
  - $\hat{f}(0) = \int f = 1$
  - $\hat{f}'(0) = -i\int xf = 0$ (centered)
  - $\hat{f}''(0) = -\int x^2 f = -1$ (unit variance)
  - So $\hat{f}(\xi) = 1 - \frac{\xi^2}{2} + O(\xi^4)$
- Therefore: $\hat{g}_n(\xi) = \left(1 - \frac{\xi^2}{2n} + O(n^{-2})\right)^n \to e^{-\xi^2/2}$
- This is the Fourier transform of $\frac{1}{\sqrt{2\pi}}e^{-x^2/2}$!

*The message:*
- The Gaussian is the universal attractor under convolution
- No matter what bump you start with, repeated convolution → Gaussian
- This is WHY normal distributions appear everywhere in nature
- Pure Fourier analysis proof — no probability theory needed

---

**Application 3: The Uncertainty Principle**

*Statement:*
$$\sigma_x \sigma_\xi \geq \frac{1}{2}$$

where $\sigma_x^2 = \int x^2 |f(x)|^2\, dx$ (spread in position) and $\sigma_\xi^2 = \int \xi^2 |\hat{f}(\xi)|^2\, d\xi$ (spread in frequency), assuming $\|f\|_2 = 1$.

*Meaning:* You cannot simultaneously localize a function in both position and frequency.

*Proof sketch:*
- Use $\widehat{f'}(\xi) = i\xi\hat{f}(\xi)$
- Apply Cauchy-Schwarz to $\int |xf| \cdot |f'|\, dx$
- Integration by parts gives the bound

*Equality case:*
- Achieved when $f(x) = ce^{-ax^2}$ (Gaussian)
- Gaussian is the "most concentrated" function possible given the constraint

*Implications beyond quantum mechanics:*

In signal processing:
- Sharp cutoff in time → slow decay in frequency (ringing)
- Sharp cutoff in frequency → slow decay in time (sinc oscillations)
- Can't have both compact support in time AND bandlimited

In audio:
- A very short sound pulse must contain many frequencies
- A pure tone must extend over long time
- Musical notes are a tradeoff: finite duration = spread of frequencies

In communication:
- Bandwidth and time-duration of signals are constrained
- Shorter pulses require more bandwidth
- Fundamental limit on data transmission

*The message:*
- Information has fundamental limits
- Not just quantum mechanics — pure Fourier analysis
- Gaussian achieves the optimal tradeoff

---

**Application 4: Classical Integrals**

Fourier transforms can compute integrals that are difficult or impossible by other means.

*The Dirichlet integral:*
$$\int_0^\infty \frac{\sin x}{x}\, dx = \frac{\pi}{2}$$

A subtlety: This is NOT Lebesgue integrable! $\int_0^\infty \left|\frac{\sin x}{x}\right|\, dx = \infty$

Only converges as improper integral (conditionally convergent).

*Fourier proof:*
- $\widehat{\mathbf{1}_{[-1,1]}}(\xi) = \int_{-1}^1 e^{-i\xi x}\, dx = \frac{2\sin\xi}{\xi}$
- Fourier inversion at $x = 0$: $\mathbf{1}_{[-1,1]}(0) = 1 = \frac{1}{2\pi}\int_{-\infty}^\infty \frac{2\sin\xi}{\xi}\, d\xi$
- Therefore: $\int_{-\infty}^\infty \frac{\sin\xi}{\xi}\, d\xi = \pi$
- By symmetry: $\int_0^\infty \frac{\sin x}{x}\, dx = \frac{\pi}{2}$

*The Gaussian integral:*
$$\int_{-\infty}^\infty e^{-x^2}\, dx = \sqrt{\pi}$$

*Fourier proof:*
- Let $f(x) = e^{-x^2/2}$. Then $f' = -xf$.
- Take Fourier: $i\xi\hat{f} = -i\hat{f}'$, so $\hat{f}' = -\xi\hat{f}$
- Same ODE! So $\hat{f}(\xi) = c \cdot e^{-\xi^2/2}$ for some $c$
- Plancherel: $\|\hat{f}\|_2^2 = 2\pi\|f\|_2^2$, but $\hat{f} = cf$
- So $|c|^2 = 2\pi$, hence $c = \sqrt{2\pi}$ (positive since $\hat{f}(0) > 0$)
- Evaluate at $\xi = 0$: $\int e^{-x^2/2}\, dx = \sqrt{2\pi}$
- Rescale: $\int e^{-x^2}\, dx = \sqrt{\pi}$

*The Borwein integrals — a surprise:*

$$\int_0^\infty \frac{\sin x}{x}\, dx = \frac{\pi}{2}$$
$$\int_0^\infty \frac{\sin x}{x} \cdot \frac{\sin(x/3)}{x/3}\, dx = \frac{\pi}{2}$$
$$\int_0^\infty \frac{\sin x}{x} \cdot \frac{\sin(x/3)}{x/3} \cdot \frac{\sin(x/5)}{x/5}\, dx = \frac{\pi}{2}$$
$$\vdots$$
$$\int_0^\infty \prod_{k=0}^{6} \frac{\sin(x/(2k+1))}{x/(2k+1)}\, dx = \frac{\pi}{2}$$

Pattern holds! But then:
$$\int_0^\infty \prod_{k=0}^{7} \frac{\sin(x/(2k+1))}{x/(2k+1)}\, dx = \frac{\pi}{2} - \frac{\pi}{467807924713440738696537864469}$$

Slightly LESS than $\frac{\pi}{2}$!

*Fourier explanation:*
- $\frac{\sin(ax)}{ax}$ is (up to scaling) the Fourier transform of $\mathbf{1}_{[-a,a]}$
- Product in frequency domain = convolution in time domain
- Convolving rectangles of widths $2, \frac{2}{3}, \frac{2}{5}, \ldots$
- The integral equals (up to scaling) the value of this convolution at 0
- Key: convolution of rectangles is a "trapezoidal" shape
- At origin, stays at maximum height as long as total width $< 2$
- $1 + \frac{1}{3} + \frac{1}{5} + \frac{1}{7} + \frac{1}{9} + \frac{1}{11} + \frac{1}{13} = \frac{4436}{3003} < 2$ ✓
- $1 + \frac{1}{3} + \frac{1}{5} + \cdots + \frac{1}{15} = \frac{88069}{45045} > 2$ ✗
- When sum exceeds 2, the convolved shape at 0 drops below maximum
- The tiny deviation from $\frac{\pi}{2}$ is exactly computable!

*The message:*
- Fourier transforms mysterious integrals into geometry of rectangles
- A pattern that holds for 7 terms and fails on the 8th — Fourier explains why
- Beautiful interplay between product (frequency) and convolution (time)
