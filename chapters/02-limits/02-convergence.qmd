## Convergence

### The Definition

::: {#def-convergence}
## Convergence
$(a_n)$ converges to $L$, written $a_n \to L$ or $\lim a_n = L$, if
$$\forall \varepsilon > 0 \; \exists N \in \NN \; \forall n > N: |a_n - L| < \varepsilon.$$
A sequence **diverges** if it does not converge.
:::

### Fundamental Examples

::: {#prp-one-over-n}
$1/n \to 0$.
:::

::: {#prp-geometric-sequence}
$r^n \to 0$ for $|r| < 1$.
:::

::: {#prp-nth-root-limit}
$r^{1/n} \to 1$ for $r > 0$.
:::

### Basic Properties

::: {#prp-limit-unique}
## Uniqueness of Limits (Exercise)
If $a_n \to L$ and $a_n \to M$, then $L = M$.
:::

::: {#def-bounded-sequence}
## Bounded Sequence
$(a_n)$ is bounded if there exists $M > 0$ with $|a_n| \leq M$ for all $n$.
:::

::: {#prp-convergent-bounded}
Convergent sequences are bounded.
:::

::: {#prp-tails}
If $(a_n)$ and $(b_n)$ agree for all $n > N_0$, they converge or diverge together, and if they converge their limits are equal.
:::

**Tail**: two sequences have the same tail if they agree past some finite point; convergence depends only on the tail.

### Divergence to Infinity

::: {#def-diverge-infinity}
## Divergence to Infinity
$a_n \to +\infty$ if $\forall M > 0 \; \exists N: n > N \Rightarrow a_n > M$. Similarly $a_n \to -\infty$.
:::

### Exercises
