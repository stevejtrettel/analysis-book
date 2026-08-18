## Iterated Limits

### Narrative

- Double sequences: two indices, two ways to take limits
- Iterated limits: fix one index, take limit in the other, then take the remaining limit
- These can differ! Order matters.
- The double limit (both indices at once) is stronger
- When double limit exists, it forces iterated limits to agree

### Content

### Double Sequences
- Definition: A *double sequence* is a function $a: \mathbb{N} \times \mathbb{N} \to \mathbb{R}$, written $a_{mn}$ or $(a_{mn})_{m,n=1}^{\infty}$
- Think of it as an infinite matrix of real numbers
- Examples:
  - $a_{mn} = \frac{1}{m+n}$
  - $a_{mn} = \frac{m}{m+n}$
  - $a_{mn} = \frac{mn}{m^2 + n^2}$
  - $a_{mn} = (1 + 1/m)^n$

### Iterated Limits
- For a double sequence, we can take limits in two different orders
- Definition: The *iterated limit* $\lim_{m \to \infty} \lim_{n \to \infty} a_{mn}$ means: first take $\lim_{n \to \infty} a_{mn}$ (for each fixed $m$), then take $\lim_{m \to \infty}$ of the result
- Similarly for $\lim_{n \to \infty} \lim_{m \to \infty} a_{mn}$
- These can be different!

- Example: $a_{mn} = \frac{m}{m+n}$
  - Fix $m$, let $n \to \infty$: $\frac{m}{m+n} \to 0$
  - Then $\lim_{m \to \infty} 0 = 0$
  - Fix $n$, let $m \to \infty$: $\frac{m}{m+n} \to 1$
  - Then $\lim_{n \to \infty} 1 = 1$
  - So $\lim_m \lim_n a_{mn} = 0$ but $\lim_n \lim_m a_{mn} = 1$

- Example: $a_{mn} = \frac{m - n}{m + n}$
  - $\lim_m \lim_n a_{mn} = \lim_m (-1) = -1$
  - $\lim_n \lim_m a_{mn} = \lim_n (1) = 1$

- Example: $a_{mn} = (1 + 1/m)^n$
  - Fix $m$, let $n \to \infty$: $(1 + 1/m)^n \to +\infty$ (since $1 + 1/m > 1$)
  - Fix $n$, let $m \to \infty$: $(1 + 1/m)^n \to 1$
  - One iterated limit is $+\infty$, the other is $1$

- Example: $a_{mn} = (1 - 1/m)^n$ (for $m \geq 2$)
  - Fix $m$, let $n \to \infty$: $(1 - 1/m)^n \to 0$ (since $0 < 1 - 1/m < 1$)
  - Fix $n$, let $m \to \infty$: $(1 - 1/m)^n \to 1$
  - So $\lim_m \lim_n a_{mn} = 0$ but $\lim_n \lim_m a_{mn} = 1$
  - Along the diagonal $m = n$: $(1 - 1/n)^n \to 1/e$ (Chapter 2)
  - Three different values from three different approaches!

- Remark: When iterated limits differ, there is no hope for a "double limit" to exist

### The Double Limit
- Definition: We say $\lim_{m,n \to \infty} a_{mn} = L$ if: for every $\varepsilon > 0$, there exists $N$ such that $m, n > N \Rightarrow |a_{mn} - L| < \varepsilon$
- This is stronger than iterated limits: both indices must be large simultaneously
- Theorem: If $\lim_{m,n \to \infty} a_{mn} = L$ exists, and both iterated limits exist, then:
  $$\lim_{m \to \infty} \lim_{n \to \infty} a_{mn} = \lim_{n \to \infty} \lim_{m \to \infty} a_{mn} = L$$
- Proof:
  - Let $b_m = \lim_{n \to \infty} a_{mn}$ (this exists by hypothesis)
  - We show $b_m \to L$
  - Given $\varepsilon > 0$, choose $N$ such that $m, n > N \Rightarrow |a_{mn} - L| < \varepsilon$
  - For $m > N$: since $|a_{mn} - L| < \varepsilon$ for all $n > N$, taking $n \to \infty$ gives $|b_m - L| \leq \varepsilon$
  - So $b_m \to L$, i.e., $\lim_{m \to \infty} \lim_{n \to \infty} a_{mn} = L$
  - Symmetric argument for the other iterated limit
- Corollary: If iterated limits exist and are different, the double limit does not exist
- Remark: The converse is false — iterated limits can be equal without the double limit existing
- Example: $a_{mn} = \frac{mn}{m^2 + n^2}$
  - $\lim_m \lim_n a_{mn} = \lim_m 0 = 0$
  - $\lim_n \lim_m a_{mn} = \lim_n 0 = 0$
  - Iterated limits agree! Both are $0$.
  - But along diagonal $m = n$: $\frac{n^2}{2n^2} = \frac{1}{2}$
  - So the double limit cannot exist (diagonal gives different value)

- Theorem: If $\lim_{m,n \to \infty} a_{mn} = L$, then $\lim_{n \to \infty} a_{nn} = L$
- More generally: if $f, g: \mathbb{N} \to \mathbb{N}$ satisfy $f(n) \to \infty$ and $g(n) \to \infty$, then $\lim_{n \to \infty} a_{f(n), g(n)} = L$
- Proof: Given $\varepsilon > 0$, choose $N$ for the double limit. Choose $N'$ such that $n > N' \Rightarrow f(n) > N$ and $g(n) > N$. Then $n > N' \Rightarrow |a_{f(n), g(n)} - L| < \varepsilon$.

### Guided Exercise

### Paths to Infinity

The double sequence $a_{mn} = \frac{mn}{m^2 + n^2}$ appeared in the text as an example where both iterated limits exist and agree, yet the double limit fails to exist. This exercise explores what goes wrong — and how rich the pathological behavior is.

(a) Verify both iterated limits: compute $\lim_{m \to \infty} \lim_{n \to \infty} a_{mn}$ and $\lim_{n \to \infty} \lim_{m \to \infty} a_{mn}$. (Both should equal $0$.)

(b) Compute $\lim_{n \to \infty} a_{nn}$ (the diagonal). What value do you get?

(c) Compute $\lim_{n \to \infty} a_{2n, n}$ (the path $m = 2n$). What value do you get?

(d) More generally, compute $\lim_{n \to \infty} a_{cn, n}$ for an arbitrary constant $c > 0$. Express the answer as a function of $c$. What is the maximum value, and where is it achieved?

(e) Compute $\lim_{n \to \infty} a_{n^2, n}$ (the path $m = n^2$). Does this give the same answer as any of the above?

(f) Conclude: the double limit $\lim_{m,n \to \infty} a_{mn}$ does not exist. How many distinct "limit values" can be achieved by different paths to infinity?

(g) **Contrast**: Now consider $b_{mn} = \frac{1}{m+n}$. Prove that $\lim_{m,n \to \infty} b_{mn} = 0$. Verify that every path $m = f(n)$ with $f(n) \to \infty$ gives the same limit. Why does the theorem from the text guarantee this?

### Exercises

*Computing iterated limits*
- Compute both iterated limits for $a_{mn} = \frac{n}{m + n}$
- Compute both iterated limits for $a_{mn} = \frac{m^2}{m^2 + n}$
- Compute both iterated limits for $a_{mn} = \frac{m + n}{m^2 + n^2}$
- Compute both iterated limits for $a_{mn} = \frac{(-1)^{m+n} mn}{m^2 + n^2}$
- Compute both iterated limits for $a_{mn} = \frac{(-1)^m n}{m + n}$

*Iterated limits and diagonal*
- For $a_{mn} = \frac{mn}{m^2 + n^2}$, compute $\lim_{n \to \infty} a_{n, 2n}$. Compare to the iterated limits.
- For $a_{mn} = \frac{m - n}{m + n}$, compute $\lim_{n \to \infty} a_{2n, n}$.
- Give an example of a double sequence where both iterated limits equal $0$, but $\lim_{n \to \infty} a_{n, 2n} = 1$.

*Double limits*
- Prove: $\lim_{m,n \to \infty} \frac{1}{m + n} = 0$
- Prove: $\lim_{m,n \to \infty} \frac{m + n}{mn} = 0$
- Does $\lim_{m,n \to \infty} \frac{m}{n}$ exist? Prove or disprove.

*Theoretical*
- Prove: if $a_{mn} \to L$ as $m + n \to \infty$, then the double limit exists and equals $L$
- Give an example where $\lim_m \lim_n a_{mn}$ exists but $\lim_n \lim_m a_{mn}$ does not
- Prove: if $\lim_{m,n \to \infty} a_{mn} = L$ and $\lim_{m,n \to \infty} b_{mn} = M$, then $\lim_{m,n \to \infty} (a_{mn} + b_{mn}) = L + M$
- Prove: if $a_{mn} \leq b_{mn}$ for all $m, n$, and both double limits exist, then $\lim_{m,n} a_{mn} \leq \lim_{m,n} b_{mn}$
- Give an example where $\lim_{m \to \infty} \lim_{n \to \infty} a_{mn}$ exists but $\lim_{n \to \infty} a_{mn}$ does not exist for some $m$.
- ★ Suppose $\lim_{n \to \infty} a_{mn} = b_m$ exists for each $m$, and $\lim_{m \to \infty} a_{mn} = c_n$ exists for each $n$, and the convergence $a_{mn} \to b_m$ is uniform in $m$ (i.e., for all $\varepsilon > 0$, there exists $N$ such that $n > N \Rightarrow |a_{mn} - b_m| < \varepsilon$ for all $m$). Prove that the double limit exists and equals both iterated limits.

### Dependencies

**Requires**: §2.2 (definition of limits), §2.4 ($e = \lim(1+1/n)^n$, geometric sequences)

**Used in**: §5.3 (double sums)
