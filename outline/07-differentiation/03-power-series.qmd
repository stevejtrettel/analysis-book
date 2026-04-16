## §7.3 Power Series & Taylor's Theorem

### Narrative

- We already know power series from Chapters 4–6; now we ask: can we differentiate them?
- Start from what we know (power series), discover the coefficients encode the derivatives
- This motivates Taylor polynomials: given any function, build a power series candidate from its derivatives
- Taylor's theorem measures the error — when does the candidate converge to the function?
- Power series are special: they always equal their Taylor series. General smooth functions need not (example in §7.4)

### Content

### Differentiating Power Series
- Lemma: $\sum a_n x^n$ and $\sum n a_n x^{n-1}$ have the same radius of convergence
- Theorem: If $f(x) = \sum a_n x^n$ on $(-R, R)$, then $f'(x) = \sum n a_n x^{n-1}$ on $(-R, R)$ (prove in text via Tannery/dominated convergence from §5.4)
- Corollary: power series are infinitely differentiable on $(-R, R)$
- Corollary: $a_n = f^{(n)}(0)/n!$ — the coefficients encode the derivatives

### Taylor Polynomials
- Definition: For $f$ with $n$ derivatives at $a$, the $n$th Taylor polynomial is $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x - a)^k$
- Theorem: $P_n$ is the unique polynomial of degree $\leq n$ matching $f, f', \ldots, f^{(n)}$ at $a$
- The question: for a general function, does $P_n \to f$ as $n \to \infty$?

### Taylor's Theorem
- Theorem (Generalized Rolle): If $f, f', \ldots, f^{(n)}$ all vanish at $a$ and $f(b) = 0$, then $f^{(n+1)}(c) = 0$ for some $c$ between $a$ and $b$ (prove in text: induction on $n$ using Rolle's theorem)
- Theorem (Polynomial MVT): If $f$ and $h$ share their first $n$ derivatives at $a$ and $f(b) = h(b)$, then $f^{(n+1)}(c) = h^{(n+1)}(c)$ for some $c$ between $a$ and $b$ (prove in text: apply generalized Rolle to $f - h$)
- Theorem (Lagrange Remainder): $f(x) = P_n(x) + \frac{f^{(n+1)}(c)}{(n+1)!}(x - a)^{n+1}$ for some $c$ between $a$ and $x$ (prove in text: apply polynomial MVT with $h = P_n$)
- Error bound: $|f(x) - P_n(x)| \leq \frac{M}{(n+1)!}|x - a|^{n+1}$ where $M$ bounds $|f^{(n+1)}|$
- Remark: the integral remainder form (which does not require a mystery point $c$) will appear in Chapter 9 once we have integration
- Remark: For power series, the Taylor series always converges to the function (by the corollary in subsection 1). For general smooth functions, this can fail — a counterexample requires the exponential function, built in §7.4

### Guided Exercise

### Takagi's Function: Continuous Everywhere, Differentiable Nowhere

Let $s(x) = \mathrm{dist}(x, \ZZ)$ (distance to nearest integer) and define $T(x) = \sum_{n=0}^{\infty} \frac{s(2^n x)}{2^n}$.

(a) Show $|s(2^n x)/2^n| \leq 1/2^{n+1}$ for all $x$, and conclude $T$ is defined for all $x$ (the series converges absolutely and uniformly).

(b) Each partial sum $T_N(x) = \sum_{n=0}^{N} s(2^n x)/2^n$ is continuous (why?). Use uniform convergence to conclude $T$ is continuous everywhere.

(c) Show that $T$ is differentiable nowhere. (Proof strategy: for any $x$, choose $h = \pm 1/2^m$ so that the difference quotient of the $m$th term contributes $\pm 1/2$ while higher terms contribute 0; the difference quotient doesn't converge as $m \to \infty$.)

(d) Reflect: each summand $s(2^n x)/2^n$ is differentiable except at finitely many points. The uniform limit is continuous but differentiable nowhere. What does this say about limits preserving differentiability?

### Exercises

- Compute the Taylor series of $1/(1-x)^2$ and $1/(1-x)^3$ by differentiating the geometric series

### Dependencies

**Requires**: §5.4 (Tannery/dominated convergence — for term-by-term differentiation), §6.3 (power series, radius of convergence), §7.1 (derivative definition, higher derivatives), §7.2 (Rolle's theorem, MVT)

**Used in**: §7.4 (Taylor series for exp), §7.5 (Taylor expansion for quadratic convergence of Newton)
