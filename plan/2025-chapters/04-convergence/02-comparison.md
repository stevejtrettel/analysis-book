## Comparison

### Comparison Tests

::: {#thm-comparison-test}
## Comparison Test
If $0 \leq a_n \leq b_n$ for all $n$ and $\sum b_n$ converges, then $\sum a_n$ converges.
:::

::: {#thm-limit-comparison-test}
## Limit Comparison Test
If $a_n, b_n > 0$ and $a_n / b_n \to L$ with $0 < L < \infty$, then $\sum a_n$ and $\sum b_n$ both converge or both diverge.
:::

### Absolute Convergence

::: {#def-absolute-convergence}
## Absolute Convergence
$\sum a_n$ converges absolutely if $\sum |a_n|$ converges.
:::

::: {#def-conditional-convergence}
## Conditional Convergence
$\sum a_n$ converges conditionally if it converges but does not converge absolutely.
:::

::: {#prp-absolute-implies-convergent}
If $\sum a_n$ converges absolutely, then $\sum a_n$ converges.
:::

**Riemann rearrangement theorem** (§5.1)

### Comparison with Geometric Series

::: {#thm-root-test}
## Root Test
Let $\alpha = \limsup |a_n|^{1/n}$. If $\alpha < 1$, then $\sum a_n$ converges absolutely. If $\alpha > 1$, then $\sum a_n$ diverges. If $\alpha = 1$, the test is inconclusive.
:::

::: {#thm-ratio-test}
## Ratio Test (Exercise)
Let $\beta = \limsup |a_{n+1} / a_n|$ and $\gamma = \liminf |a_{n+1} / a_n|$. If $\beta < 1$, then $\sum a_n$ converges absolutely. If $\gamma > 1$, then $\sum a_n$ diverges. Otherwise the test is inconclusive.
:::

### Comparison for Products

::: {#lem-product-bounds}
## Product Bounds
For nonnegative $t_1, \ldots, t_m$ with $S = \sum_k t_k < 1$:

(a) $\prod_k (1 - t_k) \geq 1 - S$.

(b) $\prod_k (1 + t_k) \leq \dfrac{1}{1 - S}$.

(c) $\prod_k (1 + t_k) - 1 \leq \dfrac{S}{1 - S}$.
:::

::: {#lem-prod-abs-value}
$\left| \prod_k (1 + u_k) - 1 \right| \leq \prod_k (1 + |u_k|) - 1$.
:::

::: {#thm-product-convergence}
## Product Convergence Criterion
If $\sum_n |a_n - 1| < \infty$ and $a_n > 0$, then $\prod_n a_n$ converges to a positive limit.
:::

::: {#prp-viete-convergence}
## Viète Product
Let $r_1 = \sqrt{2}$ and $r_{n+1} = \sqrt{2 + r_n}$. Then $\prod_{n=1}^{\infty} r_n / 2$ converges to a positive value.
:::

The value of the Viète product is $2/\pi$ — proved in §4.5 using Archimedes' polygon method.

::: {#prp-euler-sine-product}
## Euler's Product
For every $x \in \RR$, $\prod_{n=1}^{\infty} (1 - x^2 / n^2)$ converges.
:::

Euler showed this product equals $\sin(\pi x)/(\pi x)$ — a remarkable identity we revisit later.

The Wallis product (@prp-wallis-convergence) is also recoverable from this criterion; see the exercises.

### Exercises
