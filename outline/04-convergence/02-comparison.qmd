## Comparison

### Narrative

- Series and products often can't be evaluated directly, but we can determine convergence by comparison
- Comparison test: bound terms by a known convergent series
- Limit comparison: if terms are asymptotically proportional, series behave the same
- Absolute convergence: when $\sum |a_n|$ converges, so does $\sum a_n$
- Root test: compare with geometric series via $n$th roots
- Comparison for products: if factors approach 1 fast enough, product converges
- Applications: Viète product, Euler's product for sine

### Content

### Comparison Tests
- Theorem (Comparison Test): If $0 \leq a_n \leq b_n$ for all $n$ and $\sum b_n$ converges, then $\sum a_n$ converges
- Proof: partial sums of $\sum a_n$ are increasing and bounded above by $\sum b_n$; apply MCT
- Contrapositive: if $\sum a_n$ diverges, so does $\sum b_n$
- Example: $\sum 1/(n^2 + n)$ converges (compare: $1/(n^2+n) < 1/n^2$, and $\sum 1/n^2$ converges)
- ✎ Inline: Prove $\sum 1/(n^3 + 1)$ converges
- Theorem (Limit Comparison): If $a_n, b_n > 0$ and $a_n/b_n \to L$ with $0 < L < \infty$, then $\sum a_n$ and $\sum b_n$ either both converge or both diverge
- Proof sketch: for large $n$, $(L/2) b_n < a_n < (2L) b_n$; apply comparison both ways
- Example: $\sum n/(n^3 + 1)$ converges (compare to $\sum 1/n^2$: ratio $\to 1$)
- [NOTE: Would like more interesting/historically important examples here]

### Absolute Convergence
- Definition: $\sum a_n$ converges absolutely if $\sum |a_n|$ converges
- Definition: $\sum a_n$ converges conditionally if it converges but not absolutely
- Theorem: Absolute convergence implies convergence (prove in text)
- Proof via Cauchy criterion: if $\sum |a_n|$ converges, partial sums of $|a_n|$ are Cauchy; then $|\sum_{k=m}^{n} a_k| \leq \sum_{k=m}^{n} |a_k|$, so partial sums of $a_n$ are also Cauchy
- Example: $\sum (-1)^n/n^2$ converges absolutely (since $\sum 1/n^2$ converges)
- Example: $\sum (-1)^n/n$ converges conditionally (converges by AST, but $\sum 1/n$ diverges)
- Remark: absolute convergence is "stronger" — the series converges regardless of signs
- Remark: conditionally convergent series can be rearranged to sum to any value (Riemann rearrangement theorem — stated, not proved)

### Comparison with Geometric Series
- Key fact: geometric series $\sum r^n$ converges iff $|r| < 1$
- Idea: if terms of a series are eventually bounded by $Cr^n$, comparison with geometric series gives convergence
- Theorem (Root Test): Let $\alpha = \limsup |a_n|^{1/n}$.
  - If $\alpha < 1$, then $\sum a_n$ converges absolutely
  - If $\alpha > 1$, then $\sum a_n$ diverges
  - If $\alpha = 1$, the test is inconclusive
- Proof of $\alpha < 1$ case (in text):
  - Pick $r$ with $\alpha < r < 1$
  - By definition of limsup, $|a_n|^{1/n} < r$ for all sufficiently large $n$
  - So $|a_n| < r^n$ for large $n$
  - By comparison with $\sum r^n$, $\sum |a_n|$ converges
- Proof of $\alpha > 1$ case: $|a_n|^{1/n} > 1$ infinitely often, so $|a_n| > 1$ infinitely often, so $a_n \not\to 0$
- Example: $\sum 1/2^n$ converges ($|a_n|^{1/n} = 1/2 < 1$)
- Example: $\sum n/2^n$ converges ($(n/2^n)^{1/n} = n^{1/n}/2 \to 1/2 < 1$)
- Example: $\sum 1/n^2$ — root test inconclusive ($(1/n^2)^{1/n} = 1/n^{2/n} \to 1$)
- ✎ Inline: Use the root test on $\sum n^{10}/2^n$
- Remark: the ratio test (see guided exercise) is often easier to apply in practice

### Comparison for Products
- Infinite products: when does $\prod_{n=1}^{\infty} a_n$ converge?
- Write $a_n = 1 + u_n$ where $u_n = a_n - 1$
- If factors approach 1 "fast enough," the product converges
- Lemma: For $t_1, \ldots, t_m \geq 0$ with $S = \sum t_k < 1$: $\prod(1-t_k) \geq 1 - S$ (prove in text by induction)
- Lemma: For $t_k \geq 0$ with $S = \sum t_k < 1$: $\prod(1+t_k) \leq \frac{1}{1-S}$
  - Proof: use $1 + t \leq \frac{1}{1-t}$ and the previous lemma
- Corollary: For $t_k \geq 0$ with $S = \sum t_k < 1$: $0 \leq \prod(1+t_k) - 1 \leq \frac{S}{1-S}$
- Lemma: $|\prod(1+u_k) - 1| \leq \prod(1+|u_k|) - 1$ (prove in text by induction)
- Theorem: If $\sum |a_n - 1| < \infty$ and $a_n > 0$, then $\prod a_n$ converges to a positive limit
- Proof (in text):
  - Let $P_N = \prod_{n=1}^{N} a_n$ and $u_n = a_n - 1$
  - For $M > N$: $\left|\frac{P_M}{P_N} - 1\right| \leq \prod_{n=N+1}^{M}(1+|u_n|) - 1 \leq \frac{S_{N,M}}{1-S_{N,M}}$
  - where $S_{N,M} = \sum_{n=N+1}^{M} |u_n|$
  - Since $\sum |u_n| < \infty$, tails $\to 0$, so $(P_N)$ is Cauchy, hence convergent
  - Nonzero: for large $N$, $|P_M/P_N - 1| < 1/2$, so $|P_M| > |P_N|/2 > 0$
- **Viète Product**: $\prod_{n=1}^{\infty} \frac{r_n}{2}$ where $r_1 = \sqrt{2}$, $r_{n+1} = \sqrt{2 + r_n}$
  - Need to show $\sum |r_n/2 - 1| < \infty$
  - Let $e_n = 2 - r_n$. Then $|r_n/2 - 1| = |r_n - 2|/2 = e_n/2$
  - Claim: $e_{n+1} \leq e_n/2$ (geometric decay)
  - Proof: $e_{n+1} = 2 - \sqrt{4 - e_n} = 2(1 - \sqrt{1 - e_n/4})$
  - Use $\sqrt{1-x} \geq 1 - x$ for $0 \leq x \leq 1$ (proof: square both sides)
  - So $\sqrt{1 - e_n/4} \geq 1 - e_n/4$, giving $e_{n+1} \leq 2 \cdot e_n/4 = e_n/2$
  - Thus $e_n \leq (2-\sqrt{2}) \cdot 2^{-(n-1)}$, so $\sum e_n < \infty$
  - By the theorem, $\prod r_n/2$ converges to a positive limit
  - The value is $2/\pi$ — proved in §4.5 using Archimedes' polygon method
- **Euler's Product**: $\prod_{n=1}^{\infty}(1 - x^2/n^2)$ converges for any fixed $x$
  - Here $u_n = -x^2/n^2$, so $|u_n| = x^2/n^2$
  - We know $\sum 1/n^2$ converges (§2.4), so $\sum x^2/n^2 = x^2 \sum 1/n^2 < \infty$
  - By the theorem, the product converges
  - Euler showed this equals $\sin(\pi x)/(\pi x)$ — a profound connection we'll explore later
- Remark: Wallis product $\prod \frac{4n^2}{4n^2-1}$ also follows (exercise: $|a_n - 1| = 1/(4n^2-1) \sim 1/n^2$)

### Guided Exercises

### The Ratio Test

(a) Suppose $|a_{n+1}/a_n| \leq r < 1$ for all $n \geq N$. Prove that $|a_n| \leq |a_N| \cdot r^{n-N}$ for $n \geq N$.

(b) Conclude that $\sum |a_n|$ converges by comparison with a geometric series.

(c) State the ratio test: if $\limsup |a_{n+1}/a_n| < 1$, then $\sum a_n$ converges absolutely; if $\liminf |a_{n+1}/a_n| > 1$, then $\sum a_n$ diverges.

(d) Apply the ratio test to prove $\sum n!/n^n$ converges.

(e) Apply the ratio test to prove $\sum n^{100}/2^n$ converges.

(f) Show the ratio test is inconclusive for $\sum 1/n^2$ (even though it converges).

### Exercises

*Comparison*
- Prove $\sum 1/(n^2 - 1)$ converges (for $n \geq 2$)
- Prove $\sum 1/\sqrt{n}$ diverges
- Prove $\sum 1/(n \ln n)$ diverges for $n \geq 2$ (hint: compare to integral or use Cauchy condensation)
- Use limit comparison to determine convergence of $\sum (n+1)/(n^3 + n)$
- Use limit comparison to determine convergence of $\sum (\sqrt{n+1} - \sqrt{n})$

*Absolute and conditional convergence*
- Determine whether $\sum (-1)^n / \sqrt{n}$ converges absolutely, conditionally, or diverges
- Determine whether $\sum (-1)^n n / (n^2 + 1)$ converges absolutely, conditionally, or diverges
- Prove: if $\sum a_n$ converges absolutely, then $|\sum a_n| \leq \sum |a_n|$

*Root and ratio tests*
- Use the root test: $\sum (n/(n+1))^{n^2}$
- Use the root test: $\sum 1/(\ln n)^n$ for $n \geq 2$
- Use the ratio test: $\sum 2^n / n!$
- Use the ratio test: $\sum n! / n^n$
- Give an example where the ratio test is inconclusive but the root test gives convergence

*Products*
- Verify that Wallis product satisfies $|a_n - 1| = 1/(4n^2-1)$ and conclude convergence
- Prove $\prod_{n=2}^{\infty}(1 - 1/n^2)$ converges and find its value (hint: partial fractions, telescope)
- Prove $\prod_{n=1}^{\infty}(1 + 1/n^2)$ converges
- ★ Prove: if $\sum |u_n|$ converges and $u_n > -1$ for all $n$, then $\prod(1+u_n) = 0$ iff some $u_n = -1$

### Dependencies

**Requires**: §2.4 (MCT, series via bounded partial sums), §3.2 (limsup), §3.3 (Cauchy criterion)

**Used in**: §4.5 (Viète product value = 2/π), later chapters (series manipulations)