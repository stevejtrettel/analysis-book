## §5.4 Dominated Convergence

### Narrative

- New question: when can we interchange a limit and an infinite sum?
- The danger: example where they don't commute (many small terms add up)
- Dominated convergence: if terms are bounded by a convergent series, interchange is safe
- The dominating series provides uniform control
- The big application: $(1 + x/n)^n = \sum x^k/k!$
- This connects Chapter 2's definition of $e$ to the series from §5.3
- Payoff: the exponential series is ready for Chapter 6

### Content

### The Danger
- Question: When can we interchange a limit and an infinite sum?
$$\lim_{n \to \infty} \sum_{k=0}^{\infty} a_k(n) \stackrel{?}{=} \sum_{k=0}^{\infty} \lim_{n \to \infty} a_k(n)$$
- Example: Let $a_k(n) = 1/n$ if $k \leq n$, and $0$ otherwise
- RHS: For each fixed $k$, $\lim_{n \to \infty} a_k(n) = 0$ (eventually $n > k$, so $a_k(n) = 1/n \to 0$)
  - Therefore $\sum_{k=0}^{\infty} \lim_{n \to \infty} a_k(n) = \sum_{k=0}^{\infty} 0 = 0$
- LHS: $\sum_{k=0}^{\infty} a_k(n) = \sum_{k=0}^{n} \frac{1}{n} = \frac{n+1}{n} \to 1$
  - Therefore $\lim_{n \to \infty} \sum_{k=0}^{\infty} a_k(n) = 1$
- The limit and sum don't commute: $1 \neq 0$
- What went wrong? The terms $a_k(n) = 1/n$ are small (each $\to 0$), but there are many of them ($n+1$ terms), and $(n+1) \cdot (1/n) \to 1$ doesn't vanish
- The number of nonzero terms grows with $n$ — no uniform control

### Dominated Convergence
- Theorem (Dominated Convergence for Series): Suppose:
  1. For each $k$, the limit $L_k = \lim_{n \to \infty} a_k(n)$ exists
  2. There exist $M_k \geq 0$ with $|a_k(n)| \leq M_k$ for all $n$
  3. $\sum_{k=0}^{\infty} M_k < \infty$

  Then:
  $$\lim_{n \to \infty} \sum_{k=0}^{\infty} a_k(n) = \sum_{k=0}^{\infty} L_k$$
- Remark: The bound $M_k$ is independent of $n$ — this is the "domination" condition
- Remark: Condition 3 ensures both sides converge absolutely
- Proof (in text):
  - Let $S(n) = \sum_{k=0}^{\infty} a_k(n)$ and $S = \sum_{k=0}^{\infty} L_k$
  - Both series converge absolutely: $|a_k(n)| \leq M_k$ and $|L_k| \leq M_k$ (taking limits preserves inequalities)
  - Given $\varepsilon > 0$, choose $K$ such that $\sum_{k > K} M_k < \varepsilon/3$
  - Split:
  $$|S(n) - S| \leq \sum_{k=0}^{K} |a_k(n) - L_k| + \sum_{k > K} |a_k(n)| + \sum_{k > K} |L_k|$$
  - Third term: $\sum_{k > K} |L_k| \leq \sum_{k > K} M_k < \varepsilon/3$
  - Second term: $\sum_{k > K} |a_k(n)| \leq \sum_{k > K} M_k < \varepsilon/3$
  - First term: finitely many limits. Choose $N$ such that for all $n > N$:
    $$|a_k(n) - L_k| < \frac{\varepsilon}{3(K+1)} \quad \text{for each } k = 0, 1, \ldots, K$$
  - Then $\sum_{k=0}^{K} |a_k(n) - L_k| < (K+1) \cdot \frac{\varepsilon}{3(K+1)} = \varepsilon/3$
  - Total: $|S(n) - S| < \varepsilon$ for $n > N$
- Why the counterexample fails:
  - We would need $|a_k(n)| \leq M_k$ for all $n$
  - But $a_k(n) = 1/n$ for $k \leq n$, so we'd need $M_k \geq 1/n$ for all $n \geq k$
  - This means $M_k \geq \sup_{n \geq k} 1/n$... but wait, the sup over all $n$ is taken at $n = k$, giving $M_k \geq 1/k$
  - Then $\sum M_k \geq \sum 1/k = \infty$ — condition 3 fails
- ✎ Inline: Verify that if $|a_k(n)| \leq M_k$ for all $n$, then $|L_k| \leq M_k$

### The Big Application
- Theorem: For all $x \in \mathbb{R}$:
$$\lim_{n \to \infty} \left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$$
- Proof (in text):
  - *Step 1: Expand by binomial theorem*
    - $(1 + x/n)^n = \sum_{k=0}^{n} \binom{n}{k} \frac{x^k}{n^k}$
  - Define $a_k(n)$ for all $k \geq 0$:
  $$a_k(n) = \begin{cases} \binom{n}{k} \frac{x^k}{n^k} & k \leq n \\ 0 & k > n \end{cases}$$
  - Then $(1 + x/n)^n = \sum_{k=0}^{\infty} a_k(n)$
  - *Step 2: Compute limits*
    - For $k \leq n$:
    $$a_k(n) = \frac{n!}{k!(n-k)!} \cdot \frac{x^k}{n^k} = \frac{x^k}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k}$$
    $$= \frac{x^k}{k!} \cdot 1 \cdot \left(1 - \frac{1}{n}\right) \cdot \left(1 - \frac{2}{n}\right) \cdots \left(1 - \frac{k-1}{n}\right)$$
    - For fixed $k$, as $n \to \infty$: each factor $(1 - j/n) \to 1$
    - Therefore $\lim_{n \to \infty} a_k(n) = \frac{x^k}{k!}$
  - *Step 3: Find a dominating sequence*
    - For $k \leq n$: each factor $(1 - j/n) \leq 1$, so
    $$|a_k(n)| = \frac{|x|^k}{k!} \cdot \left(1 - \frac{1}{n}\right) \cdots \left(1 - \frac{k-1}{n}\right) \leq \frac{|x|^k}{k!}$$
    - For $k > n$: $a_k(n) = 0 \leq \frac{|x|^k}{k!}$
    - Let $M_k = \frac{|x|^k}{k!}$. Then $|a_k(n)| \leq M_k$ for all $n$
    - $\sum_{k=0}^{\infty} M_k = \sum_{k=0}^{\infty} \frac{|x|^k}{k!}$ converges (ratio test, or it equals $E(|x|)$ from §5.3)
  - *Step 4: Apply dominated convergence*
    - All hypotheses verified
    - Therefore $\lim_{n \to \infty} (1 + x/n)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$
- Corollary: Setting $x = 1$:
$$e = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = \sum_{k=0}^{\infty} \frac{1}{k!}$$
- This connects the compound interest limit from Chapter 2 to the series!
- Corollary: The series $E(x) = \sum_{k=0}^{\infty} \frac{x^k}{k!}$ satisfies $E(x) = \lim_{n \to \infty} (1 + x/n)^n$
- Combined with §5.3: $E(x) E(y) = E(x+y)$, $E(0) = 1$, $E(-x) = 1/E(x)$
- Remark: In Chapter 6, we define the exponential function $\exp(x) = E(x)$ and derive all its properties

### Guided Exercise

### Variations on the Exponential Limit

The dominated convergence theorem is robust — small perturbations don't affect the limit.

(a) Show that $\lim_{n \to \infty} \left(1 + \frac{x}{n} + \frac{y}{n^2}\right)^n = e^x$ for any fixed $x, y \in \mathbb{R}$.

*Hint*: Expand using the binomial theorem (or generalized binomial). The $y/n^2$ term contributes $O(1/n)$ to each binomial coefficient.

(b) More generally, show that if $b_n \to 0$, then $\lim_{n \to \infty} (1 + x/n + b_n/n)^n = e^x$.

(c) Show that $\lim_{n \to \infty} \left(1 + \frac{x}{n}\right)^{n + c} = e^x$ for any fixed $c \in \mathbb{R}$.

(d) Show that $\lim_{n \to \infty} \left(1 - \frac{x}{n}\right)^{-n} = e^x$.

(e) Conclude: many natural variations on the compound interest limit all give $e^x$.

### Exercises

*The danger*
- Let $a_k(n) = 1/n^2$ for $k \leq n$, and $0$ otherwise. Show that limit and sum DO commute in this case. Why doesn't this contradict the counterexample?
- Let $a_k(n) = k/n^2$ for $k \leq n$, and $0$ otherwise. Do limit and sum commute?
- Construct an example where the RHS converges but the LHS diverges.

*Applying dominated convergence*
- Use dominated convergence to prove: $\lim_{n \to \infty} \sum_{k=1}^{\infty} \frac{1}{k(k+n)} = 0$
- Use dominated convergence to prove: $\lim_{n \to \infty} \sum_{k=0}^{\infty} \frac{n}{(n+k)^2} = 1$
- Let $a_k(n) = \frac{1}{n} \sin(k/n)$ for $k \leq n$, $0$ otherwise. Find $\lim_{n \to \infty} \sum_k a_k(n)$. (This is a Riemann sum!)

*The exponential series*
- Verify the domination bound: show $\frac{n(n-1)\cdots(n-k+1)}{n^k} \leq 1$ for $k \leq n$
- Prove directly that $e = \sum 1/k!$ lies between $2$ and $3$
- Prove $\sum_{k=0}^{\infty} \frac{(-1)^k}{k!} = 1/e$
- ★ Use dominated convergence to show: $\lim_{n \to \infty} \left(1 + \frac{x}{n} + \frac{x^2}{2n^2}\right)^n = e^x$

*Theoretical*
- Prove: if $\sum_k M_k < \infty$ and $|a_k(n)| \leq M_k$ for all $n$, then $\sum_k a_k(n)$ converges uniformly in $n$
- Give an example where dominated convergence fails because condition 1 fails (limits don't exist)
- ★ (Monotone convergence for series) Prove: if $0 \leq a_k(n) \leq a_k(n+1)$ for all $k, n$, and $\sum_k a_k(n)$ converges for all $n$, then $\lim_n \sum_k a_k(n) = \sum_k \lim_n a_k(n)$ (possibly $= +\infty$)

### Dependencies

**Requires**: §5.2 (iterated limits), §5.3 (the series $E(x)$), §2.4 ($e = \lim(1+1/n)^n$), §4.2 (ratio test)

**Used in**: §6.3 (continuity of power series via dominated convergence)
