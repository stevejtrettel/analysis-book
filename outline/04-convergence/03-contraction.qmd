## Contraction Mappings

### Narrative

- We've seen recursive sequences $a_{n+1} = f(a_n)$ that converge: nested radicals, Babylonian method
- What's the common structure? The function $f$ "squeezes" points closer together
- Contraction mappings: $|f(x) - f(y)| \leq c|x-y|$ for some $c < 1$
- Fixed point theorem: contractions have unique fixed points, and all orbits converge
- Convergence is geometric — we get explicit error bounds
- Application: the golden ratio as a fixed point

### Content

*(Opening — unnumbered)*
- Recall two recursive sequences from Chapter 2:
  - Nested radicals: $a_1 = 1$, $a_{n+1} = \sqrt{2 + a_n}$ converges to 2
  - Babylonian: $x_1 = 2$, $x_{n+1} = (x_n + 2/x_n)/2$ converges to $\sqrt{2}$
- Both have the form $a_{n+1} = f(a_n)$ for some function $f$
- Both converge to a fixed point: a value $L$ with $f(L) = L$
- What property of $f$ guarantees convergence?
- Key observation: both functions "squeeze" points closer together
- If $f$ shrinks distances by a factor $c < 1$, iterates must converge

### Contraction Mappings
- Definition: Let $I = [a, b]$ be a closed interval. A function $f: I \to I$ is a *contraction* (on $I$) if there exists $c \in (0, 1)$ such that for all $x, y \in I$:
$$|f(x) - f(y)| \leq c|x - y|$$
- The constant $c$ is called the *contraction constant*
- Remark: we require $f: I \to I$ (the interval maps to itself) so that iterates stay in $I$
- Example: $f(x) = x/2$ on $[0, 1]$ is a contraction with $c = 1/2$
- Example: $f(x) = x^2$ on $[0, 1/2]$ is a contraction (check: $|x^2 - y^2| = |x+y||x-y| \leq 1 \cdot |x-y|$... actually need $|x+y| < 1$, so on $[0, 1/2]$ we get $c = 1$, not a contraction. On $[0, 1/3]$: $|x+y| \leq 2/3$, so $c = 2/3$ works.)
- ✎ Inline: Verify $f(x) = x/3 + 1$ is a contraction on $[1, 2]$ and find $c$

### Fixed Point Theorem
- Definition: $L$ is a *fixed point* of $f$ if $f(L) = L$
- Theorem (Contraction Mapping Theorem): Let $f: [a,b] \to [a,b]$ be a contraction with constant $c < 1$. Then:
  1. $f$ has exactly one fixed point $L \in [a, b]$
  2. For any starting point $a_1 \in [a, b]$, the sequence $a_{n+1} = f(a_n)$ converges to $L$
- Proof (in text):
  - *Step 1: consecutive terms get closer.*
    - $|a_{n+1} - a_n| = |f(a_n) - f(a_{n-1})| \leq c|a_n - a_{n-1}|$
    - By induction: $|a_{n+1} - a_n| \leq c^{n-1}|a_2 - a_1|$
  - *Step 2: $(a_n)$ is Cauchy.*
    - For $m > n$: $|a_m - a_n| \leq |a_m - a_{m-1}| + \cdots + |a_{n+1} - a_n|$
    - $\leq (c^{m-2} + \cdots + c^{n-1})|a_2 - a_1|$
    - $\leq c^{n-1} \cdot \frac{1}{1-c} |a_2 - a_1|$
    - This $\to 0$ as $n \to \infty$, so $(a_n)$ is Cauchy
  - *Step 3: limit is a fixed point.*
    - By completeness, $a_n \to L$ for some $L \in [a, b]$
    - We have $a_{n+1} = f(a_n)$
    - Taking limits: $L = \lim a_{n+1} = \lim f(a_n)$
    - Claim: $\lim f(a_n) = f(L)$
    - Proof: $|f(a_n) - f(L)| \leq c|a_n - L| \to 0$
    - So $L = f(L)$
  - *Step 4: uniqueness.*
    - Suppose $L$ and $M$ are both fixed points
    - Then $|L - M| = |f(L) - f(M)| \leq c|L - M|$
    - Since $c < 1$, this forces $|L - M| = 0$, so $L = M$
- Remark: the proof uses completeness (Cauchy sequences converge) — this fails in $\QQ$
- ✎ Inline: Where exactly does the proof fail if $c = 1$?

### Convergence Rates
- The proof gives an explicit error bound
- Theorem: With notation as above, $|a_n - L| \leq \frac{c^{n-1}}{1-c}|a_2 - a_1|$
- Proof: $|a_n - L| = \lim_{m \to \infty} |a_n - a_m| \leq \frac{c^{n-1}}{1-c}|a_2 - a_1|$
- Interpretation: error decreases geometrically with ratio $c$
- Smaller $c$ means faster convergence
- Revisit nested radicals: $f(x) = \sqrt{2 + x}$ on $[1, 2]$
  - Check contraction: $|f(x) - f(y)| = |\sqrt{2+x} - \sqrt{2+y}| = \frac{|x - y|}{\sqrt{2+x} + \sqrt{2+y}}$
  - On $[1, 2]$: denominator $\geq 2\sqrt{3} > 3$, so $c < 1/3$
  - Geometric convergence with $c \leq 1/3$: error decreases by factor of 3 each step
- Revisit Babylonian: $f(x) = (x + 2/x)/2$ on $[1, 2]$
  - Check contraction: $|f(x) - f(y)| = \frac{1}{2}|1 - 2/(xy)||x - y|$
  - On $[\sqrt{2}, 2]$: $xy \geq 2$, so $|1 - 2/(xy)| \leq 1 - 1 = 0$... 
  - Actually: $f(x) - f(y) = \frac{1}{2}(x - y) - \frac{1}{xy}(x - y) = \frac{1}{2}(1 - 2/(xy))(x-y)$
  - Hmm, need $xy > 2$ for this to be positive. On $[\sqrt{2}, 2]$: $xy \geq 2$
  - $|f(x) - f(y)| = \frac{1}{2}|1 - 2/(xy)||x - y| \leq \frac{1}{2}|x - y|$ when $xy \geq 2$
  - So $c = 1/2$ on $[\sqrt{2}, 2]$
  - But actually Babylonian converges much faster — it has "quadratic" convergence (error squares each step), which our linear contraction bound doesn't capture
- Remark: some iterations converge faster than the contraction bound suggests; the bound is a worst-case guarantee

### The Golden Ratio
- Consider the iteration $x_{n+1} = 1 + 1/x_n$
- Fixed point equation: $x = 1 + 1/x$, i.e., $x^2 - x - 1 = 0$
- Solutions: $x = (1 \pm \sqrt{5})/2$
- The positive solution is the golden ratio $\phi = (1 + \sqrt{5})/2 \approx 1.618$
- Claim: $f(x) = 1 + 1/x$ is a contraction on $[1.5, 2]$
- Proof:
  - First check $f: [1.5, 2] \to [1.5, 2]$: $f(1.5) = 1 + 2/3 = 5/3 \approx 1.67 \in [1.5, 2]$ ✓; $f(2) = 1.5 \in [1.5, 2]$ ✓
  - Contraction: $|f(x) - f(y)| = |1/x - 1/y| = \frac{|x - y|}{xy}$
  - On $[1.5, 2]$: $xy \geq 1.5^2 = 2.25$, so $|f(x) - f(y)| \leq \frac{1}{2.25}|x - y| < 0.45|x - y|$
  - So $c = 4/9 < 1/2$
- By the fixed point theorem: starting from any $x_1 \in [1.5, 2]$, $x_n \to \phi$
- Example: $x_1 = 2$, $x_2 = 1.5$, $x_3 = 5/3 \approx 1.667$, $x_4 = 8/5 = 1.6$, $x_5 = 13/8 = 1.625$, ...
- Pattern: $x_n = F_{n+1}/F_n$ where $F_n$ are Fibonacci numbers! (exercise)
- ✎ Inline: Verify $x_6 = 21/13$ and compare to $\phi$
- Remark: this iteration is secretly computing continued fraction convergents for $\phi = [1; 1, 1, 1, \ldots]$ — see §4.4
- Remark: the golden ratio appears throughout mathematics: Fibonacci sequence, regular pentagons, phyllotaxis in plants

### Guided Exercises

### Newton's Method for Cube Roots

The iteration $x_{n+1} = \frac{1}{3}\left(2x_n + \frac{A}{x_n^2}\right)$ converges to $\sqrt[3]{A}$.

(a) Verify that $L = \sqrt[3]{A}$ is a fixed point of $f(x) = \frac{1}{3}(2x + A/x^2)$.

(b) Let $A = 2$. Show that $f$ maps $[1, 2]$ to itself.

(c) Compute $|f(x) - f(y)|$ in terms of $|x - y|$ and show $f$ is a contraction on $[1, 2]$. Find an explicit contraction constant $c$.

(d) Starting from $x_1 = 1$, compute $x_2, x_3, x_4$ (as fractions or decimals).

(e) Use the error bound to estimate how many iterations are needed to get within $10^{-6}$ of $\sqrt[3]{2}$.

(f) Generalize: for which intervals $[a, b]$ and which values of $A$ is this a contraction?

### Exercises

*Basic contractions*
- Prove $f(x) = x/2 + 1$ is a contraction on $[0, 3]$ and find its fixed point
- Prove $f(x) = \cos(x)$ is a contraction on $[0, 1]$ (for those who know calculus: use $|\cos'(x)| = |\sin(x)| \leq \sin(1) < 1$)
- Give an example of $f: [0,1] \to [0,1]$ that is NOT a contraction but still has a unique fixed point

*Verifying contractions*
- Verify nested radicals $f(x) = \sqrt{2 + x}$ is a contraction on $[1, 2]$ and find $c$
- Verify $f(x) = \sqrt{1 + x}$ is a contraction on $[1, 2]$ and find its fixed point (the golden ratio!)
- Show $f(x) = 2 + 1/x$ is a contraction on $[2, 3]$ and find its fixed point (relates to $\sqrt{2}$ CF)

*Golden ratio and Fibonacci*
- Prove: if $x_1 = 1$ and $x_{n+1} = 1 + 1/x_n$, then $x_n = F_{n+1}/F_n$ where $F_n$ is the $n$th Fibonacci number
- Conclude: $F_{n+1}/F_n \to \phi$
- Prove: $F_n = (\phi^n - \psi^n)/\sqrt{5}$ where $\psi = (1 - \sqrt{5})/2$ (Binet's formula)

*Convergence rates*
- For nested radicals with $c = 1/3$, how many iterations to get within $10^{-10}$ of the limit?
- The iteration $x_{n+1} = x_n/2 + 1/x_n$ converges to $\sqrt{2}$. Verify it's a contraction and compare its rate to Babylonian.

*Non-examples*
- Show $f(x) = x^2$ on $[0, 1]$ is NOT a contraction (find points where ratio $= 1$)
- Show that $f(x) = 2x(1-x)$ on $[0, 1]$ has fixed points at $0$ and $1/2$, but is not a contraction on $[0, 1]$

### Dependencies

**Requires**: §3.3 (Cauchy criterion), §2.4 (Babylonian, nested radicals examples)

**Used in**: §4.4 (continued fractions as iterations), later chapters (fixed point methods)