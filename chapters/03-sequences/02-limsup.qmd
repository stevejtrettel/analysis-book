## Subsequential Limits

::: {#def-subsequential-limit}
## Subsequential Limit
$L$ is a subsequential limit of $(a_n)$ if some subsequence $(a_{n_k})$ converges to $L$.
:::

::: {#prp-bounded-subseq-limits}
## (Exercise)
If $(a_n)$ is bounded, then the set of subsequential limits is nonempty and bounded.
:::

::: {#prp-unique-subseq-limit}
If $(a_n)$ is bounded and has exactly one subsequential limit $L$, then $a_n \to L$.
:::

### Limsup and Liminf

::: {#def-limsup}
## Limit Superior
For bounded $(a_n)$, $\limsup a_n = \sup\{L : L \text{ is a subsequential limit of } (a_n)\}$.
:::

::: {#def-liminf}
## Limit Inferior
For bounded $(a_n)$, $\liminf a_n = \inf\{L : L \text{ is a subsequential limit of } (a_n)\}$.
:::

For unbounded sequences: if $(a_n)$ has a subsequence diverging to $+\infty$, set $\limsup a_n = +\infty$; if unbounded above with no finite subsequential limits, also $\limsup a_n = +\infty$. Dually for $\liminf a_n = -\infty$. With these conventions every sequence has a $\limsup$ and $\liminf$ in $\RR \cup \{\pm\infty\}$.

::: {#prp-liminf-leq-limsup}
## (Exercise)
For any bounded sequence, $\liminf a_n \leq \limsup a_n$, with equality if and only if $(a_n)$ has exactly one subsequential limit.
:::

### The Tail Characterization

**Tail**: the $n$th tail of $(a_k)$ is the sequence $(a_n, a_{n+1}, a_{n+2}, \ldots)$. For bounded $(a_n)$, write $\overline{s}_n = \sup\{a_k : k \geq n\}$ and $\underline{s}_n = \inf\{a_k : k \geq n\}$.

::: {#prp-tail-sup-monotone}
## (Exercise)
$(\overline{s}_n)$ is decreasing and $(\underline{s}_n)$ is increasing.
:::

::: {#prp-limsup-tail}
## Tail Characterization of Limsup
For bounded $(a_n)$, $\limsup a_n = \lim_{n \to \infty} \overline{s}_n = \lim_{n \to \infty} \sup\{a_k : k \geq n\}$. The analogous statement holds for $\liminf$.
:::

::: {#prp-limsup-achieved}
## Limsup is Achieved
For bounded $(a_n)$, some subsequence converges to $\limsup a_n$. The analogous statement holds for $\liminf$.
:::

### The Convergence Criterion

::: {#thm-convergence-via-limsup}
## Convergence via Limsup
$a_n \to L$ if and only if $\limsup a_n = \liminf a_n = L$.
:::

### Exercises
