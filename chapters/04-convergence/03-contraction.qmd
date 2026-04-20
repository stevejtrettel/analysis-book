## Contraction Maps

::: {#def-contraction}
## Contraction
Let $I = [a, b]$. A function $f : I \to I$ is a **contraction** if there exists $c \in (0, 1)$ such that
$$|f(x) - f(y)| \leq c|x - y| \quad \text{for all } x, y \in I.$$
The constant $c$ is the **contraction constant**.
:::

### The Contraction Mapping Theorem

::: {#def-fixed-point}
## Fixed Point
A **fixed point** of $f$ is a value $L$ with $f(L) = L$.
:::

::: {#thm-contraction-mapping}
## Contraction Mapping Theorem
Let $f : [a, b] \to [a, b]$ be a contraction with constant $c$. Then $f$ has a unique fixed point $L \in [a, b]$, and for any $a_1 \in [a, b]$, the sequence defined by $a_{n+1} = f(a_n)$ converges to $L$.
:::

### Convergence Rates

::: {#cor-contraction-error-bound}
## Error Bound
With notation as in @thm-contraction-mapping,
$$|a_n - L| \leq \frac{c^{n-1}}{1 - c}\, |a_2 - a_1|.$$
:::

### The Golden Ratio

The **golden ratio** is $\phi = (1 + \sqrt{5})/2$.

::: {#prp-golden-ratio-iteration}
## Golden Ratio Iteration
The map $f(x) = 1 + 1/x$ is a contraction on $[3/2, 2]$, and for any $x_1 \in [3/2, 2]$ the sequence $x_{n+1} = f(x_n)$ converges to $\phi$.
:::

### Exercises
