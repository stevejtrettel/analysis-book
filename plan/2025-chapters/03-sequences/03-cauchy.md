## The Cauchy Criterion

From §3.2 we know $(a_n)$ converges if and only if $\limsup a_n = \liminf a_n$, equivalently the tail gap $\overline{s}_n - \underline{s}_n \to 0$. Writing $\omega_n = \overline{s}_n - \underline{s}_n$ for this **tail oscillation**, convergence is equivalent to $\omega_n \to 0$. Unpacking: $\omega_n < \varepsilon$ says every pair of terms in the $n$th tail lies within $\varepsilon$ of each other — a condition that speaks only about the sequence itself, with no limit mentioned.

### The Cauchy Condition

::: {#def-cauchy}
## Cauchy Sequence
$(a_n)$ is a Cauchy sequence if for every $\varepsilon > 0$ there exists $N$ such that $|a_m - a_n| < \varepsilon$ for all $m, n \geq N$.
:::

### Cauchy Implies Convergent

::: {#lem-cauchy-bounded}
## (Exercise)
Every Cauchy sequence is bounded.
:::

::: {#thm-cauchy-criterion}
## Cauchy Criterion
A sequence in $\RR$ converges if and only if it is Cauchy.
:::

### Significance

**Intrinsic** (no limit in the definition)

**Metric** (uses only the distance $|a_m - a_n|$)

::: {#def-cauchy-complete}
## Cauchy-Complete
An ordered field is Cauchy-complete if every Cauchy sequence in it converges.
:::

**Cantor's construction** of $\RR$ from $\QQ$

### Exercises
