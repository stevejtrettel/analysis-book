## Completeness

### Bounds and the Supremum

::: {#def-bounded}
## Bounded
$M$ is an **upper bound** for $S$ if $x \leq M$ for all $x \in S$. A set is **bounded above** if it has an upper bound, **bounded below** if it has a lower bound, and **bounded** if both.
:::

::: {#def-supremum}
## Supremum
$M = \sup S$ (the supremum, or least upper bound) if $M$ is an upper bound for $S$ and no number smaller than $M$ is an upper bound.
:::

::: {#def-infimum}
## Infimum
$m = \inf S$ (the infimum, or greatest lower bound) if $m$ is a lower bound for $S$ and no number greater than $m$ is a lower bound.
:::

::: {#def-completeness}
## Completeness
An ordered field is complete if every nonempty set bounded above has a supremum.
:::

::: {#prp-infima-exist}
In a complete ordered field, every nonempty set bounded below has an infimum.
:::

### The $\varepsilon$-Characterization

::: {#prp-sup-epsilon}
## $\varepsilon$-Characterization of the Supremum
$M = \sup S$ if and only if $M$ is an upper bound for $S$ and for every $\varepsilon > 0$, there exists $x \in S$ with $x > M - \varepsilon$.
:::

::: {#prp-inf-epsilon}
## $\varepsilon$-Characterization of the Infimum (Exercise)
$m = \inf S$ if and only if $m$ is a lower bound for $S$ and for every $\varepsilon > 0$, there exists $x \in S$ with $x < m + \varepsilon$.
:::

### Working with Suprema

::: {#prp-sup-algebraic}
## Algebraic Properties of the Supremum
$\sup(S + c) = \sup S + c$ and $\sup(cS) = c \cdot \sup S$ for $c > 0$.
:::

::: {#prp-sup-set}
## Set-Theoretic Properties of the Supremum
$A \subseteq B \Rightarrow \sup A \leq \sup B$ and $\sup(A \cup B) = \max\{\sup A, \sup B\}$.
:::

::: {#prp-inf-properties}
## Properties of the Infimum (Exercise)
Analogous algebraic and set-theoretic properties hold for the infimum.
:::

### The Nested Interval Property

**Nested**

::: {#thm-nested-intervals}
## Nested Interval Property
If $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \cdots$ are nested closed intervals in a complete ordered field, then $\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset$.
:::

::: {#cor-nested-intervals-point}
If additionally, for every $\varepsilon > 0$ there exists $n$ with $b_n - a_n < \varepsilon$, then $\bigcap_{n=1}^{\infty} [a_n, b_n]$ contains exactly one point.
:::

### $\bigstar$ Babylonian Convergence I

### Exercises
