## Monotone Convergence

### The Key Insight

### The Monotone Convergence Theorem

::: {#def-monotone}
## Monotone
$(a_n)$ is **increasing** if $a_n \leq a_{n+1}$ for all $n$, **decreasing** if $a_n \geq a_{n+1}$ for all $n$, and **monotone** if it is one or the other. Strict monotonicity replaces $\leq$/$\geq$ with $<$/$>$.
:::

::: {#thm-mct}
## Monotone Convergence Theorem
A monotone bounded sequence converges. If $(a_n)$ is increasing and bounded above, then $a_n \to \sup\{a_n\}$. If decreasing and bounded below, then $a_n \to \inf\{a_n\}$.
:::

### The Babylonian Sequence

::: {#thm-babylonian-sqrt2-mct}
## Babylonian Convergence III
The sequence $x_1 = 2$, $x_{n+1} = (x_n + 2/x_n)/2$ converges to $\sqrt{2}$.
:::

### More MCT Examples

### $\bigstar$ The Number $e$

::: {#prp-e-limit-exists}
The sequence $(1 + 1/n)^n$ is increasing and bounded above by $3$, hence convergent.
:::

### Series via MCT

::: {#cor-nonneg-series}
If $a_n \geq 0$, then $\sum a_n$ converges if and only if the partial sums are bounded.
:::

::: {#thm-harmonic-diverges}
## Divergence of the Harmonic Series
The harmonic series $\sum 1/n$ diverges.
:::

### Exercises
