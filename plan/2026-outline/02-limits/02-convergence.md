## Convergence

### Narrative

- What should "approaches" mean? Eventually stays arbitrarily close.
- The ε-N game: adversary picks tolerance, you find threshold
- Full example showing estimation technique — this is what ε-N proofs look like
- "That was tedious. Let's identify fundamental sequences we can build from."
- Fundamental examples: $1/n \to 0$, $r^n \to 0$, $(-1)^n$ diverges
- Basic properties: uniqueness, convergent ⟹ bounded, tails
- Divergence to infinity: a different kind of behavior
- Preview: limit laws (§2.3) will let us avoid estimation work

### Content

### The Definition
- Motivation: "approaches" means "eventually stays arbitrarily close"
- The ε-N game: adversary picks any tolerance $\varepsilon > 0$, you respond with threshold $N$; you win if all terms past $N$ are within $\varepsilon$ of $L$; converges iff you have a winning strategy for every $\varepsilon$
- Definition: $(a_n)$ converges to $L$, written $a_n \to L$ or $\lim a_n = L$, if
$$\forall \varepsilon > 0 \; \exists N \in \NN \; \forall n > N: |a_n - L| < \varepsilon$$
- Definition: a sequence converges if it converges to some $L$; otherwise it diverges

*A first example: the estimation technique*
- Example: $\frac{n^2 + n}{2n^2 + 1} \to \frac{1}{2}$
- Compute: $\left| \frac{n^2 + n}{2n^2 + 1} - \frac{1}{2} \right| = \frac{2n - 1}{2(2n^2 + 1)}$
- Estimate: $\frac{2n - 1}{2(2n^2 + 1)} < \frac{2n}{4n^2} = \frac{1}{2n}$
- Choose $N > \frac{1}{2\varepsilon}$; for $n > N$: expression $< \frac{1}{2n} < \varepsilon$
- Remark: this works, but it's tedious — let's identify fundamental sequences we can combine

### Fundamental Examples
- $1/n \to 0$: the building block (prove in text, uses Archimedean property)
- Constant sequence $c \to c$: trivial but worth stating
- $r^n \to 0$ for $|r| < 1$: important result (prove in text using Bernoulli from §1.2)
  - Write $|r| = 1/(1+h)$ with $h > 0$; by Bernoulli $(1+h)^n \geq 1 + nh$
  - So $|r|^n \leq 1/(1+nh) < 1/(nh)$; choose $N > 1/(\varepsilon h)$
- $r^n$ diverges for $|r| > 1$; diverges to $+\infty$ for $r > 1$
- Remark: $r = 1$ is constant; $r = -1$ is $(-1)^n$
- $(-1)^n$ diverges: prove directly — consecutive terms can't both be within $1/2$ of any $L$
- $r^{1/n} \to 1$ for $r > 0$: (prove in text)
  - Case $r \geq 1$: write $r^{1/n} = 1 + h_n$; then $r = (1+h_n)^n \geq 1 + nh_n$ (Bernoulli), so $h_n \leq (r-1)/n \to 0$
  - Case $0 < r < 1$: need $1 - r^{1/n} < \varepsilon$, i.e., $r > (1-\varepsilon)^n$; since $(1-\varepsilon)^n \to 0$, this holds for large $n$

### Basic Properties
- Theorem (Uniqueness): if $a_n \to L$ and $a_n \to M$, then $L = M$ (proof as exercise)
- Definition: $(a_n)$ is bounded if $\exists M > 0$ with $|a_n| \leq M$ for all $n$
- Theorem: convergent sequences are bounded (prove in text — bound the tail, bound the beginning)
- Remark: converse is false — $(-1)^n$ is bounded but divergent
- Theorem (Tails): if $(a_n)$ and $(b_n)$ agree for all $n > N_0$, they converge or diverge together, and if they converge their limits are equal
- **Tail**: two sequences have the same tail if they agree past some finite point; the above says convergence depends only on the tail

### Divergence to Infinity
- Definition: $a_n \to +\infty$ if $\forall M > 0 \; \exists N: n > N \Rightarrow a_n > M$
- Definition: $a_n \to -\infty$ similarly
- Example: $n^2 \to +\infty$ (prove in text)
- Remark: divergence to infinity is a specific behavior, not just "doesn't converge"

### Guided Exercises

None for this section.

### Exercises

- Prove uniqueness of limits
- Prove $n/(n+1) \to 1$ from the definition
- Prove $(2n+1)/(3n+5) \to 2/3$ from the definition
- Prove: if $a_n \to L$, then $|a_n| \to |L|$
- Prove: tails determine convergence (if $(a_n)$ and $(b_n)$ agree for $n > N_0$, they either both converge to the same limit or both diverge)
- Show $n \to +\infty$
- Prove $(-1)^n$ diverges (negate the $\varepsilon$-$N$ definition)
- Show $(-1)^n n$ diverges (but not to $\pm\infty$)
- ★ Find a sequence that is unbounded but does not diverge to $+\infty$ or $-\infty$

### Dependencies

**Requires**: §1.2 (Bernoulli's inequality), §1.5 (Archimedean property)

**Used in**: §2.3 (limit laws use these fundamental limits), §2.4 (MCT)