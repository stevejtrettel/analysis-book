## Integrability


**Beyond Continuous Functions**

- Our axiomatic integral was built for continuous functions
- But the construction works more broadly
- Upper and lower sums make sense for any bounded function
- **Definition**: $f$ is *Darboux integrable* if upper integral equals lower integral
- What functions does this capture?

**The Class of Integrable Functions**

**Many functions are integrable**:
- Continuous functions (by construction)
- Piecewise continuous functions (split at discontinuities)
- Monotone functions (upper/lower sums telescope)
- The ruler function (discontinuous on dense set, still integrable)
- General principle: discontinuities must be "small"

**It's a vector space**:
- If $f, g$ integrable and $\alpha, \beta \in \mathbb{R}$, then $\alpha f + \beta g$ integrable
- $\int(\alpha f + \beta g) = \alpha \int f + \beta \int g$
- Linearity inherited from the construction
- We can do algebra with integrable functions

**The Boundary**

- $\chi_{\mathbb{Q}}$: discontinuous everywhere, not integrable
- Upper integral $= 1$, lower integral $= 0$
- Not just pathological—it's the boundary of our class

**Power Series III Was Special**

- Callback to Chapter 9: term-by-term integration worked
- $\int \left( \sum a_n x^n \right) = \sum \frac{a_n x^{n+1}}{n+1}$
- Used for $\ln(1+x)$, $\arctan$, computing $\pi$
- You might expect limits generally behave this well

**The Convergence Problem**

- **Failure Mode 1**: $f_n = n \cdot \chi_{[0,1/n]} \to 0$ but $\int f_n = 1$
  - Limit integrable, integrals don't converge correctly
- **Failure Mode 2**: $f_n = \chi_{\{q_1,\ldots,q_n\}} \nearrow \chi_{\mathbb{Q}}$
  - Each $f_n$ integrable with $\int f_n = 0$
  - Limit not integrable

**The class of Darboux integrable functions is not closed under limits.**

**Why This Matters**

- Fourier series: need $\int$ and $\sum$ to interchange
- Parameter integrals: need $\int$ and $\frac{d}{dt}$ to interchange
- Power series were the exception; general limits fail


**The Key Observation**

- In Failure Mode 2: $\int f_n = 0 \to 0$, obvious candidate is $0$
- Problem isn't wrong answer—it's no answer when there's an obvious candidate
- Could we extend by *defining* $\int \chi_{\mathbb{Q}} = 0$?

**What We Want**

- **Preserve linearity**: we have a vector space, want to keep it
- **Add MCT**: increasing limits with bounded integrals should work
- The remarkable fact: demanding both forces a unique extension
