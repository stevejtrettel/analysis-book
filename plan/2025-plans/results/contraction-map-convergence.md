## 3.4 Contraction Mappings — Convergence Rates Addition

**Add to Section 3.4 after the general theory:**

---

### Application: Convergence Rates and Error Bounds

The MCT tells us *that* a sequence converges, but not *how fast*. Contraction mappings give explicit rates.

**The Contraction Rate Theorem** (consequence of main theorem):

If $f: I \to I$ is a contraction with constant $c < 1$ and fixed point $L$, then:
$$|x_n - L| \leq c^n |x_0 - L|$$

This is *geometric convergence*: the error shrinks by factor $c$ each step.

---

### Example: Golden Ratio — New Error Bounds

The iteration $x_{n+1} = \sqrt{1 + x_n}$ converges to $\phi = (1 + \sqrt{5})/2$ (proved in 2.4 via MCT).

**But MCT gave no error estimate!** Can we bound $|x_n - \phi|$?

**Claim**: $f(x) = \sqrt{1 + x}$ is a contraction on $[1, 2]$ with constant $c = \frac{1}{2\sqrt{2}} \approx 0.354$.

*Proof*: For $x, y \in [1, 2]$:
$$|f(x) - f(y)| = |\sqrt{1+x} - \sqrt{1+y}| = \frac{|x - y|}{\sqrt{1+x} + \sqrt{1+y}} \leq \frac{|x-y|}{2\sqrt{2}}$$

since $\sqrt{1+x} \geq \sqrt{2}$ for $x \geq 1$. ∎

**Corollary**: Starting from $x_0 = 1$:
$$|x_n - \phi| \leq \left(\frac{1}{2\sqrt{2}}\right)^n |1 - \phi| \approx (0.354)^n \cdot 0.618$$

After 10 iterations: $|x_{10} - \phi| < 2 \times 10^{-5}$.

**This is new information!** MCT alone couldn't tell us this.

---

### Example: Archimedes' π — Comparing Error Bounds

In Section 2.4, we proved $r_n = a_n/b_n \to 1$ via MCT, and concluded $\pi$ is well-defined.

The iteration $r_{n+1} = g(r_n) = \sqrt{(r_n + 1)/2}$ is also a contraction with $c = \frac{1}{2\sqrt{2}}$.

*Proof* (same calculation as for golden ratio):
$$|g(r) - g(s)| = \frac{|r - s|/2}{\sqrt{(r+1)/2} + \sqrt{(s+1)/2}} \leq \frac{|r-s|}{2\sqrt{2}}$$
since each square root is at least $1/\sqrt{2}$ for $r, s \in [0,1]$. ∎

**Corollary**: 
$$|r_n - 1| \leq \left(\frac{1}{2\sqrt{2}}\right)^n |r_0 - 1|$$

Starting from $r_0 = a_6/b_6 = 3/(2\sqrt{3}) = \sqrt{3}/2 \approx 0.866$:
$$|r_n - 1| \leq (0.354)^n \cdot 0.134$$

**Comparing Error Bounds for π**:

We have TWO sources of error bounds:

| Source | Bound on error |
|--------|---------------|
| **Geometric** (from 2.4) | $a_n < \pi < b_n$, so error $< b_n - a_n$ |
| **Contraction** (from 3.4) | $\|r_n - 1\| \leq c^n \|r_0 - 1\|$ |

For $n = 96$ (Archimedes' stopping point):
- Geometric: $b_{96} - a_{96} \approx 0.0017$
- Contraction on ratio: $|r_{96} - 1| < 10^{-20}$ (much stronger!)

But the contraction bound is on the *ratio*, not directly on $\pi$. The geometric bounds give direct intervals $[a_n, b_n]$ containing $\pi$.

**Moral**: Different tools give different information. Both are useful!

---

### Example: Babylonian Sequence — Quadratic Convergence

The iteration $x_{n+1} = (x_n + 2/x_n)/2$ converges to $\sqrt{2}$.

**Claim**: This is even better than a contraction—it has *quadratic* convergence!

One can show directly that:
$$x_{n+1} - \sqrt{2} = \frac{(x_n - \sqrt{2})^2}{2x_n}$$

*Proof*: Let $e_n = x_n - \sqrt{2}$. Then $x_n = \sqrt{2} + e_n$, so:
$$x_{n+1} = \frac{x_n + 2/x_n}{2} = \frac{x_n^2 + 2}{2x_n} = \frac{(\sqrt{2} + e_n)^2 + 2}{2(\sqrt{2} + e_n)} = \frac{2 + 2\sqrt{2}e_n + e_n^2 + 2}{2(\sqrt{2} + e_n)}$$
$$= \frac{4 + 2\sqrt{2}e_n + e_n^2}{2(\sqrt{2} + e_n)} = \frac{2(2 + \sqrt{2}e_n) + e_n^2}{2(\sqrt{2} + e_n)}$$
$$= \frac{2(\sqrt{2} + e_n)\sqrt{2} + e_n^2}{2(\sqrt{2} + e_n)} = \sqrt{2} + \frac{e_n^2}{2(\sqrt{2} + e_n)} = \sqrt{2} + \frac{e_n^2}{2x_n}$$

So $e_{n+1} = e_n^2/(2x_n)$, i.e., $x_{n+1} - \sqrt{2} = (x_n - \sqrt{2})^2/(2x_n)$. ∎

**Consequence**: Since $x_n \geq \sqrt{2}$ for $n \geq 1$:
$$|x_{n+1} - \sqrt{2}| \leq \frac{|x_n - \sqrt{2}|^2}{2\sqrt{2}}$$

Error *squares* each step! Starting from $x_1 = 3/2$ with $|x_1 - \sqrt{2}| \approx 0.086$:
- $|x_2 - \sqrt{2}| \lesssim 0.003$
- $|x_3 - \sqrt{2}| \lesssim 0.000003$
- $|x_4 - \sqrt{2}| \lesssim 10^{-12}$

**This is much faster than contraction convergence!**

---

### Summary: What Contraction Theory Adds

| Example | MCT (Ch 2) gives... | Contraction (Ch 3.4) adds... |
|---------|---------------------|------------------------------|
| **φ** (golden ratio) | Exists, equals $(1+\sqrt{5})/2$ | Error bound: $\|x_n - \phi\| \leq c^n$ |
| **π** (Archimedes) | Exists, $a_n < \pi < b_n$ | Rate for ratio: $\|r_n - 1\| \leq c^n$ |
| **√2** (Babylonian) | Exists, equals $\sqrt{2}$ | Quadratic rate (even faster!) |

**The hierarchy of convergence rates**:
1. **Sublinear**: error shrinks, but slowly (e.g., $1/n$)
2. **Linear/Geometric**: $|e_{n+1}| \leq c|e_n|$ for $c < 1$ (contractions)
3. **Quadratic**: $|e_{n+1}| \leq C|e_n|^2$ (Babylonian, Newton's method)

Quadratic convergence doubles correct digits each step—much faster than geometric!

---

### Connection to Newton's Method (Preview)

The Babylonian iteration $x_{n+1} = (x_n + 2/x_n)/2$ is Newton's method for $f(x) = x^2 - 2$.

In general, Newton's method has quadratic convergence when:
1. The derivative $f'$ is nonzero at the root
2. The iteration starts sufficiently close to the root

We'll develop this fully in Chapter 6 (Differentiation).

---

**Additional Exercises for 3.4**

(Convergence rate exercises)

X. For the golden ratio iteration $f(x) = \sqrt{1+x}$, compute how many iterations are needed to guarantee $|x_n - \phi| < 10^{-10}$.

X+1. For the Archimedes ratio iteration, compute $r_6, r_{12}, r_{24}$ numerically and verify they approach 1. Compare $|r_n - 1|$ to the theoretical bound $c^n|r_0 - 1|$.

X+2. Verify the quadratic convergence formula $x_{n+1} - \sqrt{2} = (x_n - \sqrt{2})^2/(2x_n)$ for the Babylonian sequence by computing $x_1, x_2, x_3, x_4$ starting from $x_0 = 2$.

X+3. Starting from $x_0 = 2$, how many Babylonian iterations are needed to get $|x_n - \sqrt{2}| < 10^{-100}$? Compare to the golden ratio iteration.

X+4. ★ Show that if a contraction $f$ satisfies $f'(L) = 0$ at the fixed point (where defined), the convergence is actually quadratic, not just linear.

X+5. ★ The AGM iteration is NOT a contraction (the Lipschitz constant blows up near 0), yet converges quadratically. Verify quadratic convergence for AGM$(1, 1/2)$ numerically.

X+6. ★ Compare convergence rates: Babylonian for $\sqrt{2}$, Pell convergents for $\sqrt{2}$, and Archimedes for $\pi$. Which is fastest? Which gives the best error bounds per iteration?