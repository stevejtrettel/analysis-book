## The Fourier Transform


**Classical definition: $L^1$ functions**

- For $f \in L^1(\mathbb{R})$: $\hat{f}(\xi) = \int_{-\infty}^\infty f(x) e^{-i\xi x}\, dx$
- Well-defined: $|f(x)e^{-i\xi x}| = |f(x)|$, which is integrable
- $\hat{f}$ is bounded and continuous

**Basic properties**

- Linear: $\widehat{af + bg} = a\hat{f} + b\hat{g}$
- Translation: $\widehat{f(x-a)}(\xi) = e^{-ia\xi}\hat{f}(\xi)$
- Modulation: $\widehat{e^{iax}f(x)}(\xi) = \hat{f}(\xi - a)$
- Dilation: $\widehat{f(cx)}(\xi) = \frac{1}{|c|}\hat{f}(\xi/c)$
- Conjugation: $\widehat{\bar{f}}(\xi) = \overline{\hat{f}(-\xi)}$

**The key property: differentiation ↔ multiplication**

- $\widehat{f'}(\xi) = i\xi \hat{f}(\xi)$ (if $f, f' \in L^1$)
- Proof: integrate by parts, boundary terms vanish
- $\widehat{(-ix)f(x)}(\xi) = \hat{f}'(\xi)$
- Derivatives become multiplication, multiplication becomes derivatives
- This is WHY Fourier transform is powerful for differential equations

**Convolution theorem**

- For $f, g \in L^1$: $\widehat{f * g} = \hat{f} \cdot \hat{g}$
- Convolution ↔ multiplication
- Proof: Fubini

**Examples**

*Gaussian:*
- $f(x) = e^{-x^2/2}$
- $\hat{f}(\xi) = \sqrt{2\pi} e^{-\xi^2/2}$
- Gaussian transforms to Gaussian!
- Proof: $f$ satisfies $f' = -xf$; apply Fourier, get $i\xi\hat{f} = -i\hat{f}'$, same ODE

*Rectangle:*
- $f = \mathbf{1}_{[-a,a]}$
- $\hat{f}(\xi) = \frac{2\sin(a\xi)}{\xi}$
- Sharp cutoff → slow decay (sinc)

*Heat kernel:*
- $K_t(x) = \frac{1}{\sqrt{4\pi t}} e^{-x^2/4t}$
- $\hat{K}_t(\xi) = e^{-t\xi^2}$
- Simple Gaussian in Fourier space

**Inversion formula**

- Under suitable conditions: $f(x) = \frac{1}{2\pi}\int_{-\infty}^\infty \hat{f}(\xi) e^{i\xi x}\, d\xi$
- Fourier transform is (almost) self-inverse
- Precise statement requires care about convergence

**Plancherel theorem**

- For $f \in L^1 \cap L^2$: $\|\hat{f}\|_2 = \sqrt{2\pi}\|f\|_2$
- Extends by density to all $f \in L^2$
- Fourier transform is isometry $L^2 \to L^2$ (up to constant)
- Proof: compute $\|\hat{f}\|_2^2 = \int \hat{f} \overline{\hat{f}} = \int \hat{f} \widehat{\bar{f}(-\cdot)} = 2\pi (f * \bar{f}(-\cdot))(0) = 2\pi \|f\|_2^2$

**Connection to Fourier series (Ch 13)**

- Fourier series: periodic functions on circle, frequencies $n \in \mathbb{Z}$ (discrete)
- Fourier transform: functions on $\mathbb{R}$, frequencies $\xi \in \mathbb{R}$ (continuous)
- Series: $f = \sum c_n e^{inx}$
- Transform: $f = \frac{1}{2\pi}\int \hat{f}(\xi) e^{i\xi x}\, d\xi$
- Discrete spectrum → continuous spectrum
