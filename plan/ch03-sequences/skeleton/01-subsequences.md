## Subsequences

### Subsequences

::: {#def-subsequence}
## Subsequence
A subsequence of $(a_n)$ is a sequence $(a_{n_k})_{k=1}^{\infty}$ where $n_1 < n_2 < n_3 < \cdots$ is a strictly increasing sequence of natural numbers.
:::

::: {#lem-indices-grow}
## (Exercise)
If $(n_k)$ is a strictly increasing sequence in $\NN$, then $n_k \geq k$ for all $k$.
:::

### Subsequences and Convergence

::: {#prp-subseq-inherits}
## Subsequences Inherit Limits
If $a_n \to L$, then every subsequence $(a_{n_k}) \to L$.
:::

::: {#prp-union-subseq}
## Union of Convergent Subsequences
If $(a_n)$ is the union of finitely many subsequences, each converging to $L$, then $a_n \to L$.
:::

::: {#cor-divergence-test}
## Divergence Test
If two subsequences of $(a_n)$ converge to different limits, then $(a_n)$ diverges.
:::

### Bolzano-Weierstrass

::: {#thm-bolzano-weierstrass}
## Bolzano-Weierstrass
Every bounded sequence has a convergent subsequence.
:::

### Exercises
