## Transforming Distributions


**The problem**

- Want to extend Fourier transform to distributions
- First attempt: $\langle \hat{T}, \phi \rangle = \langle T, \hat{\phi} \rangle$?
- Issue: if $\phi \in \mathcal{D}$ (compact support), is $\hat{\phi} \in \mathcal{D}$?
- **No!** Fourier transform of compactly supported function is analytic, hence NOT compactly supported (unless zero)

**Schwartz space (the fix)**

- Definition: $f \in \mathcal{S}$ if $f \in C^\infty$ and for all $n, k$:
$$|x|^n |f^{(k)}(x)| \to 0 \text{ as } |x| \to \infty$$
- "Rapidly decreasing" — decays faster than any polynomial
- Examples: $e^{-x^2}$, $e^{-x^2}P(x)$ for any polynomial $P$
- $\mathcal{D} \subset \mathcal{S}$ (compact support implies rapid decay)

**Key property**

- Theorem: $\mathcal{F}: \mathcal{S} \to \mathcal{S}$ is a bijection
- Fourier transform preserves Schwartz class
- Proof idea: $\widehat{x^n f} = i^n \hat{f}^{(n)}$ and $\widehat{f^{(k)}} = (i\xi)^k \hat{f}$; decay ↔ smoothness

**Tempered distributions**

- Definition: $\mathcal{S}^\prime$ is continuous linear functionals on $\mathcal{S}$
- Larger test space → smaller distribution space
- $\mathcal{S}' \subset \mathcal{D}'$
- Examples of tempered distributions:
  - All $L^p$ functions
  - All polynomials
  - $\delta$ and its derivatives
  - Everything we care about!

**Fourier transform of tempered distributions**

- Definition: $\langle \hat{T}, \phi \rangle = \langle T, \hat{\phi} \rangle$ for $T \in \mathcal{S}'$, $\phi \in \mathcal{S}$
- Well-defined since $\hat{\phi} \in \mathcal{S}$
- Extends the classical Fourier transform

**The fundamental examples**

*Fourier transform of $\delta$:*
- $\langle \hat{\delta}, \phi \rangle = \langle \delta, \hat{\phi} \rangle = \hat{\phi}(0) = \int \phi(x)\, dx = \langle 1, \phi \rangle$
- Therefore: $\hat{\delta} = 1$
- **The delta function transforms to the constant function!**
- Infinitely concentrated in space → spread over all frequencies

*Fourier transform of $1$:*

- $\langle \hat{1}, \phi \rangle = \langle 1, \hat{\phi} \rangle = \int \hat{\phi}(\xi)\, d\xi = 2\pi \phi(0) = \langle 2\pi\delta, \phi \rangle$
- Therefore: $\hat{1} = 2\pi\delta$
- **The constant function transforms to (scaled) delta!**
- Spread over all space → concentrated at frequency zero

*Fourier transform of $e^{iax}$:*

- $\widehat{e^{iax}} = 2\pi\delta_a$
- Pure frequency $a$ ↔ delta at $\xi = a$

*Fourier transform of $\delta'$:*

- $\widehat{\delta'} = i\xi \cdot \hat{\delta} = i\xi$
- More generally: $\widehat{\delta^{(n)}} = (i\xi)^n$

**Properties preserved**

- $\widehat{T'} = i\xi \hat{T}$
- $\widehat{(-ix)T} = \hat{T}'$
- $\widehat{T * S} = \hat{T} \cdot \hat{S}$ (when defined)
- Differentiation ↔ multiplication extends to distributions

**The Dirac comb**

- Definition: $\text{III}(x) = \sum_{n \in \mathbb{Z}} \delta_n$
- A distribution (infinite sum of deltas)

**Poisson summation formula**

- Theorem: $\widehat{\text{III}} = 2\pi \cdot \text{III}$
- The Dirac comb is (essentially) its own Fourier transform!
- Proof sketch: 
  - For $f \in \mathcal{S}$: $\sum_n f(n) = \sum_n \hat{f}(2\pi n)$ (classical Poisson)
  - Rewrite as statement about distributions
- This is the bridge between Fourier series and Fourier transform
