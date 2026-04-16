## Finding Monotonicity

### Narrative

- Not all sequences are obviously monotone, but some decompose into monotone pieces
- The strategy: find monotone subsequences → MCT gives convergence → compute limits → if equal, invoke §3.1 (union theorem)
- This technique applies to alternating series, products, continued fractions, and more
- Three examples: alternating series, the √2 continued fraction, the Wallis product

### Content

*(Opening — unnumbered)*
- Many interesting sequences aren't monotone: partial sums of alternating series zig-zag, convergents of continued fractions alternate above and below
- But often we can decompose into monotone pieces
- The strategy:
  1. Identify subsequences (e.g., even-indexed and odd-indexed terms)
  2. Show each subsequence is monotone and bounded → MCT gives convergence
  3. Compute or compare their limits
  4. If the limits agree, invoke §3.1 (union theorem): the full sequence converges
- This chapter applies this technique to various "infinite processes"

### Alternating Series
- Definition: an alternating series has the form $\sum_{n=1}^{\infty} (-1)^{n+1} b_n$ or $\sum_{n=1}^{\infty} (-1)^n b_n$ with $b_n > 0$
- Theorem (Alternating Series Test): If $(b_n)$ is decreasing and $b_n \to 0$, then $\sum (-1)^{n+1} b_n$ converges
- Proof (in text):
  - Let $S_n = \sum_{k=1}^{n} (-1)^{k+1} b_k$ be partial sums
  - Even partial sums: $S_{2n} = (b_1 - b_2) + (b_3 - b_4) + \cdots + (b_{2n-1} - b_{2n})$
  - Each parenthesis $\geq 0$ since $(b_n)$ decreasing, so $(S_{2n})$ is increasing
  - Also $S_{2n} = b_1 - (b_2 - b_3) - (b_4 - b_5) - \cdots - (b_{2n-2} - b_{2n-1}) - b_{2n} \leq b_1$
  - So $(S_{2n})$ is increasing and bounded above → MCT → $S_{2n} \to L$ for some $L$
  - Odd partial sums: $S_{2n+1} = S_{2n} + b_{2n+1}$
  - Since $b_n \to 0$, we have $S_{2n+1} \to L$ as well
  - $(S_{2n})$ increasing, $(S_{2n+1})$ decreasing (check!), and $S_{2n+1} - S_{2n} = b_{2n+1} \to 0$
  - By §3.1 (union theorem), $S_n \to L$
- ✎ Inline: Verify $(S_{2n+1})$ is decreasing
- Example: Alternating harmonic series $\sum (-1)^{n+1}/n = 1 - 1/2 + 1/3 - 1/4 + \cdots$ converges
  - The value is $\ln 2$ — we'll prove this later when we develop logarithms and Abel's theorem
  - Remark: the harmonic series $\sum 1/n$ diverges, but the alternating harmonic series converges — signs matter!
- Example: Leibniz series $\sum (-1)^{n}/(2n+1) = 1 - 1/3 + 1/5 - 1/7 + \cdots$ converges
  - The value is $\pi/4$ — a remarkable connection between an infinite series and the circle constant
  - We'll prove this later when we develop inverse trigonometric functions
  - For now: AST applies since $1/(2n+1)$ is decreasing and $\to 0$

### Continued Fraction for √2
- Goal: express $\sqrt{2}$ as a "continued fraction" and prove convergence
- Start with the identity: $\sqrt{2} = 1 + (\sqrt{2} - 1)$
- Rewrite: $\sqrt{2} - 1 = \frac{1}{\sqrt{2} + 1}$, so $\sqrt{2} = 1 + \frac{1}{1 + \sqrt{2}}$
- Now $1 + \sqrt{2} = 2 + (\sqrt{2} - 1) = 2 + \frac{1}{1 + \sqrt{2}}$
- Substituting repeatedly:
$$\sqrt{2} = 1 + \cfrac{1}{2 + \cfrac{1}{2 + \cfrac{1}{2 + \cdots}}}$$
- Notation: write this as $[1; 2, 2, 2, \ldots]$ or $[1; \bar{2}]$
- Define convergents by truncating:
  - $c_1 = 1$
  - $c_2 = 1 + \frac{1}{2} = \frac{3}{2}$
  - $c_3 = 1 + \frac{1}{2 + \frac{1}{2}} = 1 + \frac{1}{5/2} = \frac{7}{5}$
  - $c_4 = 1 + \frac{1}{2 + \frac{1}{2 + \frac{1}{2}}} = \frac{17}{12}$
- Pattern: $c_1 = 1, c_2 = 3/2, c_3 = 7/5, c_4 = 17/12, c_5 = 41/29, \ldots$
- ✎ Inline: Compute $c_5$ and verify it equals $41/29$
- Key observation (proved in guided exercise below):
  - Even convergents $c_2, c_4, c_6, \ldots$ are increasing
  - Odd convergents $c_1, c_3, c_5, \ldots$ are decreasing
  - Every even convergent < $\sqrt{2}$ < every odd convergent
  - The gap $c_{2n+1} - c_{2n} \to 0$
- By MCT: both subsequences converge; by §3.1: $c_n \to \sqrt{2}$
- Remark: this is our first continued fraction — §4.4 develops the full theory
- Remark: the convergents $p_n/q_n = 1/1, 3/2, 7/5, 17/12, \ldots$ satisfy $p_n^2 - 2q_n^2 = \pm 1$ — the Pell equation from §2.1!

### The Wallis Product
- The Wallis product:
$$W = \frac{2}{1} \cdot \frac{2}{3} \cdot \frac{4}{3} \cdot \frac{4}{5} \cdot \frac{6}{5} \cdot \frac{6}{7} \cdots = \prod_{n=1}^{\infty} \frac{4n^2}{4n^2 - 1}$$
- Claim: $W = \pi/2$ (proved in §4.5; here we prove convergence)
- Define partial products: $W_n = \prod_{k=1}^{n} \frac{4k^2}{4k^2 - 1}$
- Rewrite: $\frac{4k^2}{4k^2 - 1} = \frac{4k^2}{(2k-1)(2k+1)} = \frac{2k}{2k-1} \cdot \frac{2k}{2k+1}$
- So $W_n = \frac{2}{1} \cdot \frac{2}{3} \cdot \frac{4}{3} \cdot \frac{4}{5} \cdots \frac{2n}{2n-1} \cdot \frac{2n}{2n+1}$
- Key insight: separate into even and odd partial products
  - After $2n$ factors: involves fractions up to $\frac{2n}{2n+1}$
  - After $2n-1$ factors: involves fractions up to $\frac{2n}{2n-1}$
- Define:
  - $P_n = \frac{2}{1} \cdot \frac{4}{3} \cdot \frac{6}{5} \cdots \frac{2n}{2n-1}$ (products of "big" fractions)
  - $Q_n = \frac{2}{3} \cdot \frac{4}{5} \cdot \frac{6}{7} \cdots \frac{2n}{2n+1}$ (products of "small" fractions)
- Then $W_{2n-1} = P_n \cdot Q_{n-1}$ and $W_{2n} = P_n \cdot Q_n$
- Since each factor of $Q_n$ is $< 1$: $Q_n$ is decreasing
- Since each factor of $P_n$ is $> 1$: $P_n$ is increasing
- One can show: $W_{2n}$ is increasing, $W_{2n-1}$ is decreasing (verify in exercises)
- Bounds: $W_{2n} < W_{2n+1}$ (even < odd) and both are bounded
- By MCT: both subsequences converge; by §3.1: $W_n \to W$ for some $W > 0$
- The value $W = \pi/2$ is proved in §4.5 using Archimedes' polygon method
- ✎ Inline: Compute $W_1, W_2, W_3, W_4$ and verify $W_2 < W_4$ and $W_3 > W_1$

### Guided Exercises

### Convergence of the √2 Continued Fraction

Let $c_n$ denote the $n$th convergent of $[1; \bar{2}]$, so $c_1 = 1$, $c_2 = 3/2$, $c_3 = 7/5$, $c_4 = 17/12$, etc.

(a) Prove that $c_{2n} < \sqrt{2}$ for all $n \geq 1$. (Hint: compute $c_{2n}^2$ and compare to 2.)

(b) Prove that $c_{2n-1} > \sqrt{2}$ for all $n \geq 1$.

(c) Prove that the even convergents are increasing: $c_{2n} < c_{2n+2}$.

(d) Prove that the odd convergents are decreasing: $c_{2n+1} < c_{2n-1}$.

(e) Conclude by MCT that $(c_{2n})$ and $(c_{2n-1})$ both converge.

(f) Prove that the gap $c_{2n-1} - c_{2n} \to 0$. (Hint: express the gap in terms of the denominators $q_n$.)

(g) Apply §3.1 to conclude $c_n \to L$ for some $L$.

(h) Prove that $L = \sqrt{2}$.

### Exercises

*Alternating series*
- Prove: $\sum (-1)^{n+1}/n^2$ converges
- Prove: $\sum (-1)^{n+1}/\sqrt{n}$ converges
- Give an example where $b_n \to 0$ but $(b_n)$ is not decreasing, and $\sum (-1)^n b_n$ still converges
- Give an example where $b_n \to 0$ but $(b_n)$ is not decreasing, and $\sum (-1)^n b_n$ diverges
- Prove: if $\sum (-1)^{n+1} b_n$ converges by the alternating series test, then $|S - S_n| \leq b_{n+1}$ (error bound)

*√2 continued fraction*
- Verify that $(7/5)^2 = 49/25$ and compare to 2; verify $(17/12)^2 = 289/144$ and compare to 2
- Prove: $p_n^2 - 2q_n^2 = (-1)^n$ where $p_n/q_n$ is the $n$th convergent (connects to Pell equation)
- Compute $c_6$ and $c_7$
- Show that $|c_n - \sqrt{2}| < 1/q_n^2$ where $c_n = p_n/q_n$

*Wallis product*
- Compute $W_5$ and $W_6$ as fractions
- Prove: $W_{2n} < W_{2n+2}$ (even partial products increasing)
- Prove: $W_{2n+1} > W_{2n+3}$ (odd partial products decreasing)
- Prove: $W_{2n} < W_{2n+1}$ for all $n$
- ★ Prove: $W_n$ is bounded above (hint: compare to an integral, if you know calculus, or use a clever grouping)

### Dependencies

**Requires**: §2.4 (MCT), §3.1 (union theorem for subsequences)

**Used in**: §4.4 (continued fractions), §4.5 (Wallis product value = π/2)