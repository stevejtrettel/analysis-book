## §6.4 Global Properties

### Narrative

- The local theory is done: we know what continuity means at a point, how to build continuous functions, and that power series are continuous
- Now: what happens when continuity interacts with the domain?
- Continuity alone is local — global conclusions require continuity *plus* structure (intervals, closed and bounded sets, monotonicity)
- IVT: continuity + interval → image is an interval (no gaps)
- EVT: continuity + closed bounded interval → bounded, attains max and min
- Unification: continuous image of $[a,b]$ is $[m, M]$ — a closed bounded interval
- Monotone continuous functions have continuous inverses — the tool that will make $\log$, $\arcsin$, $\arctan$ automatic in Chapter 9

### Content

### The Intermediate Value Theorem
- Motivating question: if $f$ is continuous on $[a,b]$ with $f(a) < 0$ and $f(b) > 0$, must $f$ have a zero somewhere in between?
- For polynomials this feels obvious — the graph can't "jump" over the axis
- But we've seen that general functions CAN jump (step functions, Dirichlet). The hypothesis doing the work is continuity.
- Theorem (IVT): If $f$ is continuous on $[a,b]$ and $y$ is any value between $f(a)$ and $f(b)$, then $f(c) = y$ for some $c \in [a,b]$.
- Proof sketch (via completeness):
  - WLOG $f(a) < y < f(b)$
  - Let $c = \sup\{x \in [a,b] : f(x) < y\}$
  - This set is nonempty ($a$ is in it) and bounded above (by $b$), so the sup exists by completeness
  - Show $f(c) = y$: if $f(c) < y$, continuity gives a neighborhood where $f < y$, contradicting that $c$ is the sup; if $f(c) > y$, continuity gives a neighborhood where $f > y$, contradicting that points just below $c$ have $f < y$
- Remark: completeness is essential — the function $f(x) = x^2 - 2$ on $\QQ$ is continuous, $f(0) < 0$, $f(2) > 0$, but there is no rational $c$ with $f(c) = 0$
- Corollary: the continuous image of an interval is an interval
  - If $f$ is continuous on an interval $I$ and $f$ takes values $p$ and $q$, it takes every value between them

*Applications*
- Application (nth roots exist): For $c > 0$ and $n \in \NN$, the equation $x^n = c$ has a positive solution
  - $f(x) = x^n$ is continuous, $f(0) = 0 < c$, and $f(M) > c$ for $M$ large enough
  - By IVT, $f(x_0) = c$ for some $x_0 \in (0, M)$
- Application (Fixed point theorem): If $f: [a,b] \to [a,b]$ is continuous, then $f(c) = c$ for some $c$
  - Consider $g(x) = f(x) - x$; then $g(a) = f(a) - a \geq 0$ and $g(b) = f(b) - b \leq 0$
  - By IVT, $g(c) = 0$ for some $c$
- Application: Every odd-degree polynomial has a real root
  - $p(x) \to +\infty$ as $x \to +\infty$ and $p(x) \to -\infty$ as $x \to -\infty$ (or vice versa)
  - By IVT, $p$ takes the value $0$
- ✎ Inline: Use IVT to prove $x^3 + x = 1$ has exactly one solution in $(0, 1)$ (existence via IVT; uniqueness because $x^3 + x$ is strictly increasing)

### Boundedness and Extreme Values
- Can a continuous function on $[a,b]$ be unbounded? On an open interval it can: $f(x) = 1/x$ on $(0,1)$
- But on a *closed bounded* interval, continuity forces boundedness
- Theorem (Boundedness): If $f$ is continuous on $[a,b]$, then $f$ is bounded on $[a,b]$
- Proof sketch (by contradiction via Bolzano-Weierstrass):
  - If not, there exist $x_n \in [a,b]$ with $|f(x_n)| > n$
  - By Bolzano-Weierstrass (§3.1), $(x_n)$ has a convergent subsequence $x_{n_k} \to c \in [a,b]$
  - By continuity, $f(x_{n_k}) \to f(c)$, so $f(x_{n_k})$ is bounded — contradiction
- Theorem (Extreme Value Theorem): If $f$ is continuous on $[a,b]$, then $f$ attains its maximum and minimum. That is, there exist $c, d \in [a,b]$ with $f(c) \leq f(x) \leq f(d)$ for all $x \in [a,b]$.
- Proof sketch (for the maximum):
  - $f$ is bounded, so $M = \sup\{f(x) : x \in [a,b]\}$ exists
  - Choose $x_n$ with $f(x_n) > M - 1/n$
  - By BW, extract $x_{n_k} \to d \in [a,b]$
  - By continuity, $f(x_{n_k}) \to f(d)$, and by construction $f(x_{n_k}) \to M$
  - Therefore $f(d) = M$
- Remark: closed AND bounded are both needed. $f(x) = x$ on $[0, \infty)$ is continuous, closed domain, unbounded. $f(x) = 1/x$ on $(0,1)$ is continuous, bounded domain, but doesn't attain its sup.
- Corollary (Continuous image of $[a,b]$): If $f$ is continuous on $[a,b]$, then $f([a,b]) = [m, M]$ where $m$ and $M$ are the minimum and maximum values of $f$.
  - EVT gives $m$ and $M$ are attained; IVT fills in everything between.
  - This is the unification: the continuous image of a closed bounded interval is a closed bounded interval.

### Monotone Functions and Inverses
- Setup: we want to define functions like $\log$, $\arcsin$, $\arctan$ as inverses of continuous functions in Chapter 9. When is the inverse continuous?
- Definition: $f$ is *increasing* on $S$ if $x < y \Rightarrow f(x) \leq f(y)$; *strictly increasing* if $x < y \Rightarrow f(x) < f(y)$. Similarly for decreasing. *Strictly monotone* means strictly increasing or strictly decreasing.
- Proposition: Strictly monotone $\Rightarrow$ injective (one-to-one)
  - Proof: immediate from the definition
- Theorem: If $f$ is strictly monotone and continuous on $[a,b]$, then $f^{-1}$ exists and is continuous on $f([a,b])$.
- Proof sketch:
  - $f$ is injective (strict monotonicity) and surjective onto its range
  - By the corollary above, $f([a,b]) = [m, M]$ (a closed bounded interval)
  - So $f^{-1}: [m, M] \to [a,b]$ exists
  - $f^{-1}$ is strictly monotone (same direction as $f$)
  - Continuity of $f^{-1}$: suppose $y_n \to y$ in $[m, M]$. Let $x_n = f^{-1}(y_n)$. The sequence $(x_n)$ is bounded (in $[a,b]$). Any convergent subsequence $x_{n_k} \to c$ satisfies $f(c) = \lim f(x_{n_k}) = \lim y_{n_k} = y$, so $c = f^{-1}(y)$. Since every convergent subsequence has the same limit, $x_n \to f^{-1}(y)$.
- Application (nth root function): $f(x) = x^n$ is strictly increasing and continuous on $[0, \infty)$. By the theorem, $f^{-1}(x) = x^{1/n}$ is continuous on $[0, \infty)$.
  - This completes the nth root story: IVT gave existence, the inverse theorem gives continuity
- Remark: in Chapter 9, we define $\exp(x) = \sum x^n/n!$, show it's strictly increasing, and define $\log = \exp^{-1}$. Continuity of $\log$ is then automatic. Similarly for $\arcsin$, $\arctan$.
- Theorem: If $f$ is monotone (not necessarily continuous) on $(a,b)$, then at every point $c \in (a,b)$, both one-sided limits $\lim_{x \to c^+} f(x)$ and $\lim_{x \to c^-} f(x)$ exist.
- Proof sketch: for increasing $f$, $\lim_{x \to c^-} f(x) = \sup\{f(x) : x < c\}$ (bounded above by $f(c)$)
- Corollary: a monotone function can only have jump discontinuities (no removable or essential)

### Guided Exercise

### The Bisection Method

The IVT proof shows a zero exists but doesn't tell us how to find it. The bisection method is an algorithm that does.

(a) Suppose $f$ is continuous on $[a,b]$ with $f(a) < 0 < f(b)$. Let $m = (a+b)/2$. Explain why at least one of the intervals $[a, m]$ or $[m, b]$ has the property that $f$ changes sign on it.

(b) Define sequences $(a_n)$ and $(b_n)$ by repeatedly bisecting: $[a_0, b_0] = [a, b]$, and at each step, replace $[a_n, b_n]$ with the half where $f$ changes sign. Show that $b_n - a_n = (b-a)/2^n$.

(c) Show $(a_n)$ is increasing and bounded above, and $(b_n)$ is decreasing and bounded below. Conclude both converge, and $\lim a_n = \lim b_n = c$ for some $c \in [a,b]$.

(d) Show $f(a_n) \leq 0$ and $f(b_n) \geq 0$ for all $n$ (or the algorithm terminated early at a zero). Use continuity to conclude $f(c) = 0$.

(e) Apply the bisection method to $f(x) = x^2 - 2$ on $[1, 2]$. Compute $a_n$ and $b_n$ for $n = 0, 1, 2, 3, 4$. How close is your estimate to $\sqrt{2}$?

(f) How many steps are needed to approximate $\sqrt{2}$ to within $10^{-6}$?

### Exercises

*Intermediate Value Theorem*
- Use IVT to prove: $x^3 + x - 1 = 0$ has a solution in $(0, 1)$
- Use IVT to prove: $E(x) = 3x$ has a solution in $(0, 2)$, where $E(x) = \sum x^n/n!$ is the exponential function (continuous by §6.3; use $E(0) = 1$ and $E(2) > 4$)
- Prove: if $f$ is continuous on $[0,1]$ with $f(0) = f(1)$, then there exists $c \in [0, 1/2]$ with $f(c) = f(c + 1/2)$. (Hint: consider $g(x) = f(x) - f(x + 1/2)$.)
- Prove: the equation $x^3 + 2x = 5$ has exactly one solution (use IVT for existence, strict monotonicity of $x^3 + 2x$ for uniqueness)
- Show $f(x) = x + \sin(x)$ has a unique fixed point (students may use known properties of $\sin$ from calculus)
- ★ Prove: if $p(x)$ has odd degree and real coefficients, then $p$ has at least one real root

*Extreme Value Theorem*
- Give an example showing EVT fails on $(0, 1)$ (open interval)
- Give an example showing EVT fails on $[0, \infty)$ (unbounded domain)
- Give an example of a *discontinuous* bounded function on $[0,1]$ that does not attain its supremum
- Prove: if $f$ is continuous on $[a,b]$ and $f(x) > 0$ for all $x \in [a,b]$, then there exists $c > 0$ with $f(x) \geq c$ for all $x \in [a,b]$ (bounded away from zero — use EVT)
- ★ Prove: if $f$ is continuous on $\RR$ and $\lim_{x \to \pm\infty} f(x) = 0$, then $f$ is bounded and attains its maximum or minimum (or both)

*Monotone functions and inverses*
- Prove: if $f$ is continuous and injective on an interval, then $f$ is strictly monotone. (Hint: use IVT — if $f$ is not monotone, find three points where the function "turns around" and use IVT to find two points with the same image.)
- Verify that $f(x) = x^3$ is strictly increasing on $\RR$, and describe $f^{-1}$.
- Prove: $f(x) = x^3 + x$ is strictly increasing on $\RR$. (Hint: show $b^3 - a^3 = (b - a)(b^2 + ab + a^2)$ and verify $b^2 + ab + a^2 > 0$ when $a \neq b$.)
- ★ (Countability of monotone discontinuities) Prove: if $f$ is monotone on $(a,b)$, then $f$ has at most countably many discontinuities. (Hint: at each jump discontinuity, the one-sided limits define a nonempty open interval of values that $f$ skips. These intervals are disjoint. Each contains a rational.)
- ★ Construct a strictly increasing function on $[0,1]$ that is discontinuous at every rational. (Hint: enumerate the rationals $r_1, r_2, \ldots$ and define $f(x) = \sum_{r_n < x} 1/2^n$.)

*Theoretical*
- Prove: the continuous image of a closed bounded interval is a closed bounded interval (combine IVT + EVT)
- ★ Suppose $f$ is continuous on $[0,1]$ and $f(x) \in \QQ$ for all $x$. Prove $f$ is constant. (Hint: if $f(a) < f(b)$, use density of irrationals to find $r \notin \QQ$ with $f(a) < r < f(b)$, then apply IVT.)
- Prove: if $f$ is continuous on $[a,b]$ and injective, then $f^{-1}$ is continuous (without assuming monotonicity — but you may use the fact that continuous injective functions on intervals are monotone)
- ★ Prove: if $f: \RR \to \RR$ is continuous and injective, then $f$ is strictly monotone. (Harder than the interval case — you need to rule out "turning around at infinity.")

### Dependencies

**Requires**: §3.1 (Bolzano-Weierstrass), §6.1 (continuity, one-sided limits), §6.2 (algebra of continuous functions), completeness of $\RR$

**Used in**: §6.5 (uniform continuity on $[a,b]$), Ch 7 (Rolle's theorem, mean value theorem use IVT), Ch 9 ($\log$, $\arcsin$, $\arctan$ defined as inverses of continuous monotone functions)
