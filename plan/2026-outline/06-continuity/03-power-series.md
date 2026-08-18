## §6.3 Power Series and Continuity

### Narrative

- We know $\sum x^n = 1/(1-x)$ — but the left side *defines a function* from an infinite process
- General power series $\sum a_n x^n$: a new kind of object, defined as a limit of polynomials
- For which $x$ does it converge? The Cauchy-Hadamard formula gives a sharp answer; the ratio test gives a practical one
- At the boundary, anything can happen
- On the interior, each partial sum is a polynomial (continuous), so the limit is a limit of continuous functions — is it continuous?
- Warning: no, in general (zigzag example)
- But dominated convergence saves power series on the interior
- The boundary is still dangerous ($x^n$ on $[0,1]$), but Abel's theorem says: if the series converges at the endpoint, continuity extends there

### Content

### Series as Functions
- We already know $\sum_{n=0}^{\infty} x^n = \frac{1}{1-x}$ for $|x| < 1$
- New perspective: the left side *defines a function*. Plug in $x$, compute partial sums $S_N(x) = 1 + x + x^2 + \cdots + x^N$, take the limit.
- The partial sums are polynomials — finite, tame objects we understand from §6.2
- The limit is something new: a function defined by an infinite process
- Definition: A *power series* (centered at $0$) is $\sum_{n=0}^{\infty} a_n x^n$; centered at $c$, it is $\sum_{n=0}^{\infty} a_n (x - c)^n$
- Where it converges, it defines a function $f(x) = \sum_{n=0}^{\infty} a_n x^n$
- We've seen another example: the exponential series $E(x) = \sum x^n/n!$ from §5.3, which converges for all $x$
- Question: for a general power series, for which $x$ does it converge?

### Convergence
- Theorem (Cauchy-Hadamard): For $\sum a_n x^n$, define $R = 1 / \limsup_{n \to \infty} |a_n|^{1/n}$ (with $R = \infty$ if the limsup is $0$, and $R = 0$ if the limsup is $\infty$). Then:
  - $\sum a_n x^n$ converges absolutely for $|x| < R$
  - $\sum a_n x^n$ diverges for $|x| > R$
- This $R$ is the *radius of convergence* — it's an if-and-only-if characterization
- Proof sketch: apply the root test (§4.2) to $\sum a_n x^n$. The $n$-th root of $|a_n x^n|$ is $|a_n|^{1/n} |x|$, and the limsup is $|x|/R$. The root test gives convergence when this is $< 1$ (i.e., $|x| < R$) and divergence when $> 1$.
- Remark: the ratio test gives a practical sufficient condition: if $|a_{n+1}/a_n| \to L$, then $R = 1/L$. This is often easier to compute, but the Cauchy-Hadamard formula is the sharp result.
- At $x = \pm R$: anything can happen (exercise: find examples of all four boundary behaviors)
- Examples:
  - $\sum x^n$: $R = 1$ (geometric series). Diverges at both $x = 1$ and $x = -1$.
  - $\sum x^n/n!$: $R = \infty$ (exponential series). No boundary at all.
  - $\sum n! \, x^n$: $R = 0$. Converges only at $x = 0$.
  - $\sum x^n/n$: $R = 1$. Diverges at $x = 1$ (harmonic), converges at $x = -1$ (alternating harmonic).
  - $\sum x^n/n^2$: $R = 1$. Converges at both $x = 1$ and $x = -1$.

### Continuity
- On $(-R, R)$, the power series defines a function $f(x) = \sum a_n x^n$
- Each partial sum $S_N(x) = \sum_{n=0}^{N} a_n x^n$ is a polynomial, hence continuous by §6.2
- So $f$ is a pointwise limit of continuous functions. Is $f$ continuous?
- It would be natural to hope the answer is always yes. It is not.
- Example (zigzag approximation of a step function):
  - Define $f_n: [0, 1] \to \RR$: equals $0$ on $[0, \tfrac{1}{2} - \tfrac{1}{n}]$, rises linearly to $1$ on $[\tfrac{1}{2} - \tfrac{1}{n}, \tfrac{1}{2}]$, equals $1$ on $[\tfrac{1}{2}, 1]$
  - Each $f_n$ is continuous (piecewise linear, glued continuously — §6.2 guided exercise)
  - Pointwise limit: step function jumping at $x = 1/2$. Discontinuous.
- Remark: smoothing the ramp (e.g., with a scaled arctangent) gives the same phenomenon. The problem is pointwise convergence, not corners.
- So we need conditions that guarantee continuity of the limit. For power series, dominated convergence (§5.4) provides them.
- Theorem: If $\sum a_n x^n$ has radius of convergence $R > 0$, then $f(x) = \sum a_n x^n$ is continuous on $(-R, R)$.
- Proof sketch:
  - Fix $c$ with $|c| < R$ and a sequence $x_k \to c$. Need to show $f(x_k) \to f(c)$.
  - This requires interchanging a limit and a sum: $\lim_k \sum_n a_n x_k^n = \sum_n a_n c^n$
  - Pick $\rho$ with $|c| < \rho < R$. For $k$ large, $|x_k| \leq \rho$.
  - Domination: $|a_n x_k^n| \leq |a_n| \rho^n$, and $\sum |a_n| \rho^n$ converges (since $\rho < R$)
  - Apply dominated convergence (§5.4): interchange is valid. Done.
- Corollary: $\exp(x) = \sum x^n/n!$ is continuous on $\RR$
- ✎ Inline: Verify the three hypotheses of dominated convergence explicitly for $\exp$ at a point $c$

### Boundary Behavior
- The dominated convergence argument handles the interior. What about the boundary $x = \pm R$?
- Example: $f_n(x) = x^n$ on $[0, 1]$
  - Each $f_n$ is continuous
  - Pointwise limit: $0$ on $[0, 1)$, and $1$ at $x = 1$ — discontinuous
  - This IS a power series situation: the geometric series converges on $(-1, 1)$ but diverges at $x = 1$
- So even for power series, the boundary can produce discontinuities. But only when the series diverges there.
- Lemma (Summation by parts): For sequences $(a_k)$ and $(b_k)$ with partial sums $B_n = \sum_{k=0}^{n} b_k$:
$$\sum_{k=0}^{n} a_k b_k = a_n B_n - \sum_{k=0}^{n-1} (a_{k+1} - a_k) B_k$$
- Proof: substitute $b_k = B_k - B_{k-1}$ and rearrange (discrete analogue of $\int u \, dv = uv - \int v \, du$)
- ✎ Inline: Verify the formula for $n = 2$ by expanding both sides
- Theorem (Abel): If $\sum_{n=0}^{\infty} a_n$ converges to $S$, then
$$\lim_{x \to 1^-} \sum_{n=0}^{\infty} a_n x^n = S$$
- In words: if the series converges at $x = 1$, the power series extends continuously to $x = 1$ from the left
- Proof sketch:
  - Write $S_N = \sum_{n=0}^{N} a_n$ (partial sums, $S_N \to S$)
  - Summation by parts: $\sum_{n=0}^{N} a_n x^n = S_N x^N + (1 - x) \sum_{n=0}^{N-1} S_n x^n$
  - Let $N \to \infty$: since $|x| < 1$, $S_N x^N \to 0$, so $f(x) = (1 - x) \sum_{n=0}^{\infty} S_n x^n$
  - Write $S_n = S + \varepsilon_n$ where $\varepsilon_n \to 0$
  - Then $f(x) = S \cdot (1 - x) \sum x^n + (1 - x) \sum \varepsilon_n x^n = S + (1 - x) \sum \varepsilon_n x^n$
  - Show $(1 - x) \sum \varepsilon_n x^n \to 0$ as $x \to 1^-$: split at a threshold $N$ where $|\varepsilon_n| < \varepsilon$; the tail is bounded by $\varepsilon$, the head vanishes because of the $(1-x)$ factor
- Remark: the $x^n$ counterexample fails Abel's hypothesis — $\sum 1^n$ diverges — so the discontinuity is consistent
- Remark: generalizes to any power series centered at $c$ with radius $R$: convergence at $c + R$ gives left-continuity there, convergence at $c - R$ gives right-continuity

### Guided Exercise

### Verifying Dominated Convergence for the Exponential Series

We proved that power series are continuous on their interior using dominated convergence. In this exercise, you verify every hypothesis explicitly for $\exp(x) = \sum_{n=0}^{\infty} x^n / n!$.

(a) Fix $c \in \RR$ and a sequence $x_k \to c$. Explain why there exists $\rho > 0$ such that $|x_k| \leq \rho$ for all $k$.

(b) Write down the terms $a_n(k) = x_k^n / n!$ that play the role of the summands in dominated convergence. For each fixed $n$, compute $\lim_{k \to \infty} a_n(k)$.

(c) Find a dominating sequence $M_n$ independent of $k$ such that $|a_n(k)| \leq M_n$ for all $k$ and $\sum M_n < \infty$.

(d) State the conclusion of dominated convergence and interpret: what does it say about $\exp$?

(e) Now consider boundary behavior. The exponential series has $R = \infty$, so there is no boundary. Give an example of a power series with $R = 1$ where the dominated convergence argument works on $(-1, 1)$ but says nothing about $x = 1$.

(f) For $\sum x^n / n$ at $x = -1$: the series $\sum (-1)^n / n$ converges (alternating series test). What does Abel's theorem tell you about $\lim_{x \to (-1)^+} \sum x^n / n$?

### Exercises

*Convergence*
- Find the radius of convergence using the ratio test: $\sum n x^n$, $\sum x^n / n^2$, $\sum 2^n x^n / n!$, $\sum n! \, x^n / n^n$
- Prove: if $\sum a_n x_0^n$ converges for some $x_0 \neq 0$, then $\sum a_n x^n$ converges absolutely for all $|x| < |x_0|$
- (Boundary zoo) Find power series with radius $R = 1$ that: (i) diverge at both $x = 1$ and $x = -1$; (ii) converge at both; (iii) converge at $x = 1$ but diverge at $x = -1$; (iv) converge at $x = -1$ but diverge at $x = 1$
- ★ Prove the Cauchy-Hadamard formula: $1/R = \limsup |a_n|^{1/n}$

*Continuity of power series*
- Verify explicitly that $f(x) = \sum x^n / n^2$ is continuous at $x = 1/2$: identify $\rho$, $M_n$, check $\sum M_n < \infty$
- Prove: $f(x) = \sum x^n / n!$ is continuous at $x = 0$ directly from $\varepsilon$-$\delta$ (without dominated convergence)
- Prove: if $f(x) = \sum a_n x^n$ and $g(x) = \sum b_n x^n$ both have radius $\geq R$, then $f + g$ is continuous on $(-R, R)$. What about $f \cdot g$?

*Limits of continuous functions*
- Verify directly that $f_n(x) = x^n$ on $[0, 1]$ converges pointwise to a discontinuous limit
- Construct a sequence of continuous functions on $[0,1]$ converging pointwise to Dirichlet's function restricted to $[0,1]$ (hint: this is impossible — explain why using cardinality or measurability, or simply argue from properties of pointwise limits of continuous functions)
- ★ Give an example of continuous $f_n: [0, 1] \to \RR$ such that $\lim f_n(x)$ exists for all $x$ but is discontinuous at every point of some interval

*Abel's theorem applications*
- Use Abel's theorem to show $\ln(2) = 1 - 1/2 + 1/3 - 1/4 + \cdots$ (students may use $\ln(2) = \int_0^1 1/(1+x)\,dx$ from calculus, or treat as forward reference to ch8)
- Prove $\sum x^n/n$ is continuous on $(-1, 1)$ and left-continuous at $x = 1$
- If $\sum a_n x^n = 0$ for all $x \in (-r, r)$, prove $a_n = 0$ for all $n$

*Summation by parts and Abel's theorem*
- Prove the summation by parts formula by induction on $n$
- (Abel's test) Prove: if $\sum b_n$ converges and $(a_n)$ is monotone and bounded, then $\sum a_n b_n$ converges
- (Dirichlet's test) Prove: if the partial sums $\sum_{n=0}^{N} b_n$ are bounded and $a_n \to 0$ monotonically, then $\sum a_n b_n$ converges
- Use Dirichlet's test to give a new proof that $\sum (-1)^n / n$ converges
- ★ (Tauber's converse) Prove: if $\sum a_n x^n \to S$ as $x \to 1^-$ AND $a_n = O(1/n)$, then $\sum a_n$ converges to $S$. (This is a partial converse to Abel's theorem — Abel requires convergence to get continuity, Tauber recovers convergence from continuity plus a growth condition.)

### Dependencies

**Requires**: §3.2 (limsup), §4.2 (ratio/root tests), §5.4 (dominated convergence), §6.2 (polynomials are continuous)

**Used in**: Ch 7 (term-by-term differentiation — Power Series II), Ch 9 (evaluating power series at endpoints, continuity of elementary functions)
