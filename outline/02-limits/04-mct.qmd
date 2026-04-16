## Monotone Convergence

### Narrative

- Limit laws derive new limits from old using ordered field axioms
- But they can't prove existence from nothing — can't prove rationals converge to irrational
- Completeness is the missing ingredient
- MCT: monotone + bounded ⟹ convergent
- Babylonian sequence: the payoff — our tool reaches $\sqrt{2}$
- The number $e$ defined via MCT
- More examples: nested radicals, series

### Content

### The Key Insight
- Limit laws use ordered field axioms to derive new limits from known limits
- But they can't conjure convergence from nothing
- Example: we showed *if* Babylonian converges, *then* limit is $\sqrt{2}$ — but didn't prove convergence
- To prove a sequence of rationals converges to an irrational, we need completeness
- The Monotone Convergence Theorem uses completeness to guarantee existence

### The Monotone Convergence Theorem
- Definition: $(a_n)$ is increasing if $a_n \leq a_{n+1}$ for all $n$
- Definition: $(a_n)$ is strictly increasing if $a_n < a_{n+1}$ for all $n$
- Definition: $(a_n)$ is decreasing if $a_n \geq a_{n+1}$ for all $n$
- Definition: $(a_n)$ is monotone if it is increasing or decreasing
- Theorem (MCT): A monotone bounded sequence converges. Moreover:
  - If $(a_n)$ is increasing and bounded above, then $a_n \to \sup\{a_n : n \in \NN\}$
  - If $(a_n)$ is decreasing and bounded below, then $a_n \to \inf\{a_n : n \in \NN\}$
- Proof of increasing case (in text): Let $L = \sup\{a_n\}$. By $\varepsilon$-characterization of sup (§1.4), for any $\varepsilon > 0$, some $a_N > L - \varepsilon$. Since $(a_n)$ increasing, $a_n > L - \varepsilon$ for all $n > N$. Since $L$ is upper bound, $a_n \leq L < L + \varepsilon$. So $|a_n - L| < \varepsilon$ for $n > N$.
- ✎ Inline: Prove the decreasing case
- Remark: MCT fails in $\QQ$ — the sequence $1, 1.4, 1.41, 1.414, \ldots$ is increasing and bounded in $\QQ$ but has no rational limit. This is where completeness enters the theory of limits.

### The Babylonian Sequence
- Recall from §2.1: $x_1 = 2$, $x_{n+1} = (x_n + 2/x_n)/2$
- We proved convergence in §2.3 using the Pell structure and square root law
- Here's an alternative proof using MCT — this approach generalizes to sequences without closed forms
- Theorem: $x_n \to \sqrt{2}$
- Step 1: $x_n^2 \geq 2$ for all $n \geq 2$
  - Compute: $x_{n+1}^2 - 2 = \frac{(x_n + 2/x_n)^2}{4} - 2 = \frac{(x_n - 2/x_n)^2}{4} \geq 0$
  - Remark: alternatively, use AM-GM (§1.2 exercise): $x_{n+1} = \frac{x_n + 2/x_n}{2} \geq \sqrt{x_n \cdot \frac{2}{x_n}} = \sqrt{2}$
- Step 2: $(x_n)$ is decreasing for $n \geq 2$
  - Compute: $x_{n+1} - x_n = \frac{2/x_n - x_n}{2} = \frac{2 - x_n^2}{2x_n} \leq 0$ since $x_n^2 \geq 2$
- Step 3: By MCT, $x_n \to L$ for some $L \geq \sqrt{2}$
- Step 4: By limit laws (§2.3): $L = \frac{L + 2/L}{2}$, so $L^2 = 2$, so $L = \sqrt{2}$
- **Lesson**: MCT proves convergence for recursive sequences even when no closed form exists
- Historical note: known to Babylonians ~1800 BCE; converges remarkably fast (roughly doubles correct digits each iteration)

### The Number $e$
- Definition: $e = \lim_{n \to \infty}(1 + 1/n)^n$, provided this limit exists
- This subsection is a guided exercise proving $e$ exists and establishing its basic properties

### Guided Exercises

### The Number $e$

Let $a_n = (1 + 1/n)^n$ and $b_n = (1 + 1/n)^{n+1}$.

(a) Use the binomial theorem to expand $a_n = \sum_{k=0}^{n} \binom{n}{k} \frac{1}{n^k}$.

(b) Show that each term in the expansion increases with $n$, and conclude $(a_n)$ is increasing.

(c) Show $a_n < 1 + 1 + \frac{1}{2!} + \frac{1}{3!} + \cdots + \frac{1}{n!}$.

(d) Use $k! \geq 2^{k-1}$ for $k \geq 1$ to show $a_n < 3$ for all $n$.

(e) Conclude by MCT that $(a_n)$ converges. Define $e = \lim a_n$.

(f) Show that $(b_n)$ is decreasing and bounded below by $a_1 = 2$.

(g) Conclude $(b_n)$ converges and show $\lim b_n = e$ as well.

(h) The intervals $[a_n, b_n]$ are nested and contain $e$. Since $b_n - a_n = a_n/n \to 0$, these intervals pin down $e$ uniquely.

### More MCT Examples
- One example worked in text: nested radicals
  - Let $a_1 = 1$, $a_{n+1} = \sqrt{2 + a_n}$
  - Bounded above by 2: if $a_n \leq 2$, then $a_{n+1} = \sqrt{2 + a_n} \leq \sqrt{4} = 2$ (induction)
  - Increasing: $a_{n+1}^2 - a_n^2 = (2 + a_n) - a_n^2 = (2 - a_n)(1 + a_n) > 0$ when $a_n < 2$
  - MCT ⟹ converges to some $L$
  - Limit laws: $L = \sqrt{2 + L}$, so $L^2 = 2 + L$, so $L^2 - L - 2 = 0$, so $L = 2$ (taking positive root)
  - Interpretation: $\sqrt{2 + \sqrt{2 + \sqrt{2 + \cdots}}} = 2$

*Series via MCT*
- Theorem (Nonnegative Series Criterion): If $a_n \geq 0$, then $\sum a_n$ converges iff partial sums $S_n$ are bounded
- Proof: partial sums increasing (since $a_n \geq 0$); apply MCT
- Example: $\sum 1/2^n$ converges — partial sums $S_n = 2 - 1/2^n < 2$
- Example: $\sum 1/n^2$ converges
  - For $n \geq 2$: $\frac{1}{n^2} < \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n}$ (telescoping!)
  - So $S_n < 1 + \sum_{k=2}^{n}\left(\frac{1}{k-1} - \frac{1}{k}\right) = 1 + (1 - 1/n) < 2$
  - Bounded, so converges
- Example: The harmonic series $\sum 1/n$ diverges (prove in text)
  - Partial sums $H_n = 1 + 1/2 + 1/3 + \cdots + 1/n$ are unbounded
  - Proof: $H_{2n} - H_n = \frac{1}{n+1} + \frac{1}{n+2} + \cdots + \frac{1}{2n} > n \cdot \frac{1}{2n} = \frac{1}{2}$
  - So $H_{2^k} > k/2$, which is unbounded
  - Remark: this is the "boundary case" — $\sum 1/n^p$ converges for $p > 1$, diverges for $p \leq 1$
- Remark: we proved convergence/divergence *without computing limits*. The sum $\sum 1/n^2 = \pi^2/6$, but proving this requires Fourier analysis!

### Exercises

- Prove: if $(a_n)$ is increasing and unbounded, then $a_n \to +\infty$
- Let $a_1 = 1$, $a_{n+1} = (a_n + 3)/(a_n + 1)$. Prove convergence and find the limit.
- Power tower: let $a_1 = 1$, $a_{n+1} = (\sqrt{2})^{a_n}$. Show $(a_n)$ is increasing, bounded above by 2, and find the limit.
- Prove $\sum 1/n!$ converges
- Prove $\sum 1/n^3$ converges
- ★ Prove: if $a_{n+1}/a_n \to L$ with $0 \leq L < 1$ and $a_n > 0$, then $a_n \to 0$
- ★ For which values of $c > 0$ does the sequence $a_1 = c$, $a_{n+1} = (\sqrt{2})^{a_n}$ converge?

### Dependencies

**Requires**: §1.4 ($\varepsilon$-characterization of sup), §1.5 (completeness, AM-GM), §2.2 (convergence definition), §2.3 (limit laws)

**Used in**: §2.5 (decimal convergence), Chapter 3 (Bolzano-Weierstrass), Chapter 4 (series tests)