# Chapter 3: Detecting Convergence

## Overview

In Chapter 2, proving convergence and computing the limit were often the same act: limit laws gave both existence and value. But many sequences resist explicit computation. How do we prove convergence when we don't know what the sequence converges *to*?

This chapter develops two complementary approaches, then synthesizes them.

**Part A** extends the monotone convergence theorem. If we can dominate a sequence by something monotone and convergent, we inherit convergence. These *comparison techniques* are practical tools that reduce new problems to solved ones.

**Part B** asks a deeper question: what does completeness say about arbitrary bounded sequences that may have no monotone structure at all? This leads to Bolzano-Weierstrass and a complete understanding of subsequential limits.

**Part C** extracts an intrinsic criterion from Part B. Examining what "limsup equals liminf" really means, we discover the Cauchy condition—a characterization using only *distances*, not order. We then step back and observe that all our convergence theorems are equivalent faces of completeness.

**Part D** synthesizes both threads. The contraction mapping theorem combines comparison with geometric series (Part A) and Cauchy completeness (Part C) to guarantee convergence of iterative processes—and tells us *how fast* they converge.

---

## Historical Prelude (Unnumbered)

### The Problem
- Grandi's series: $1 - 1 + 1 - 1 + \cdots$ "sums" to 0, 1, or 1/2
- Euler's bold computations: sometimes right, sometimes wrong
- Riemann rearrangement: even convergent series can sum to anything
- Which series can we trust?

### The Development
- **Cauchy's tests (1821)**: comparison, ratio, root—detect convergence without computing sums
- **The Cauchy criterion**: terms getting close to *each other* guarantees convergence
- **Absolute vs conditional convergence**: the key distinction for safe manipulation
- **Bolzano (1817)**: bounded sequences have accumulation points
- **The unity**: by century's end, all these notions recognized as equivalent

### The Message
This chapter develops tools to detect convergence from the sequence itself and discovers that all our existence theorems are secretly the same theorem.

---

# Part A: Monotone Methods

**Theme:** We already have MCT. Extend its reach by reducing new problems to this solved case.

## 3.1 Comparison

### The Master Technique
- For nonnegative series: convergence ⟺ bounded partial sums (MCT!)
- Strategy: compare to series we already understand

### Comparison Test
- **Theorem**: $0 \le a_n \le b_n$ and $\sum b_n$ converges ⟹ $\sum a_n$ converges
- Proof via MCT on partial sums
- **Example**: $\sum 1/n^2$ converges (compare to telescoping $\sum 1/n(n-1)$)
- **Example**: $\sum 1/n$ diverges (grouping argument)
- **Remark**: We proved $\sum 1/n^2$ converges without computing its value—the paradigm of this chapter

### Limit Comparison
- **Theorem**: $a_n, b_n > 0$, $a_n/b_n \to L \in (0, \infty)$ ⟹ $\sum a_n$ and $\sum b_n$ share convergence behavior
- **Example**: $\sum (n^2 + 1)/(n^4 + 3n)$ via comparison to $1/n^2$

### Comparison with Geometric Series
- Geometric series $\sum r^n$: converges iff $|r| < 1$
- **Ratio Test**: $|a_{n+1}/a_n| \to L < 1$ ⟹ convergence
- **Root Test**: $|a_n|^{1/n} \to L < 1$ ⟹ convergence
- Both detect "essentially geometric" behavior
- **Example**: $\sum n!/n^n$ converges (ratio $\to 1/e$)
- **Remark**: Root test often stronger; will strengthen further with limsup in §3.2

### Absolute and Conditional Convergence
- **Definition**: Absolute convergence ($\sum |a_n|$ converges) vs conditional
- **Theorem**: Absolute convergence ⟹ convergence
- Proof: $0 \le a_n + |a_n| \le 2|a_n|$, then comparison
- **Why it matters**: Absolutely convergent series can be rearranged freely; conditionally convergent cannot (Riemann)

### Alternating Series Test
- **Theorem (Leibniz)**: $b_n \searrow 0$ ⟹ $\sum (-1)^{n+1} b_n$ converges
- Proof: Even partial sums increasing, odd decreasing, gap → 0, MCT + recombination
- **Example**: Alternating harmonic series converges (conditionally)
- **Remark**: Unlike comparison, this uses MCT directly on partial sums

### The Limits of Monotone Methods
- All these techniques rely on monotonicity *somewhere*
- What about sequences that simply bounce around?
- What does completeness say about them?

---

# Part B: Bounded Sequences

**Theme:** What can completeness tell us about the *structure* of an arbitrary bounded sequence?

## 3.2 Subsequences and Subsequential Limits

### Subsequences
- **Definition**: Subsequence $(a_{n_k})$ with $n_1 < n_2 < n_3 < \cdots$
- **Theorem**: $a_n \to L$ ⟹ every subsequence $\to L$
- **Contrapositive**: Two subsequences with different limits ⟹ divergence
- **Example**: $((-1)^n)$ diverges
- **Definition**: Subsequential limit / accumulation point

### Bolzano-Weierstrass Theorem
- **Theorem**: Every bounded sequence has a convergent subsequence
- Proof via bisection → nested intervals (completeness!)
- **Remark**: Fails in ℚ (decimal approximations to π)

### Two Subsequential Limits ⟹ Divergence
- **Theorem**: Bounded sequence with exactly one subsequential limit converges to it
- So divergence of bounded sequences means multiple subsequential limits
- To understand divergence, study the *set* of subsequential limits

### Limsup and Liminf
- **Definition**: 
  - $\limsup a_n = \lim_{n \to \infty} \sup_{k \ge n} a_k$
  - $\liminf a_n = \lim_{n \to \infty} \inf_{k \ge n} a_k$
- **Why they exist**: $M_n = \sup_{k \ge n} a_k$ is decreasing and bounded below → MCT
- **Theorem**: $\limsup a_n$ = largest subsequential limit; $\liminf a_n$ = smallest
- Proof that limsup is achieved: construct subsequence via $a_{k_n} > M_n - 1/n$
- **Theorem**: $a_n \to L$ ⟺ $\limsup a_n = \liminf a_n = L$

### Root Test Revisited
- **Theorem (Strong Form)**: Let $L = \limsup |a_n|^{1/n}$. Then $L < 1$ ⟹ convergence; $L > 1$ ⟹ divergence
- Works even when limit doesn't exist—only need limsup
- **Application**: Radius of convergence $R = 1/\limsup |a_n|^{1/n}$

### Riemann Rearrangement Theorem
- **Theorem**: If $\sum a_n$ converges conditionally, then for any $L \in \mathbb{R} \cup \{\pm\infty\}$, some rearrangement converges to $L$
- Proof sketch: positive and negative parts both diverge; alternate to hit any target
- **Moral**: Conditional convergence is fragile; absolute convergence is robust

---

# Part C: The Cauchy Criterion

**Theme:** Can we detect convergence using only *distances*, not order?

## 3.3 From Oscillation to Cauchy

### The Oscillation of the Tail
- We have: $a_n \to L$ ⟺ $\limsup a_n = \liminf a_n$
- Define tail oscillation: $\omega_n = \sup_{k \ge n} a_k - \inf_{k \ge n} a_k$
- **Observation 1**: Convergence ⟺ $\omega_n \to 0$
- **Observation 2**: $\omega_n < \varepsilon$ means all pairs $j, k \ge n$ satisfy $|a_j - a_k| < \varepsilon$
- We've *derived* an intrinsic condition using only distances!

### The Cauchy Condition
- **Definition**: $(a_n)$ is Cauchy if $\forall \varepsilon > 0$, $\exists N$: $m, n > N \Longrightarrow |a_m - a_n| < \varepsilon$
- **Remark**: Intrinsic (no external limit), metric (no order)
- Doesn't require boundedness as hypothesis—Cauchy ⟹ bounded

### Cauchy Sequences Converge
- **Theorem**: A sequence converges ⟺ it is Cauchy
- Proof (⟸): Cauchy ⟹ bounded ⟹ BW gives convergent subsequence ⟹ whole sequence converges to same limit
- **Corollary (Cauchy criterion for series)**: $\sum a_n$ converges ⟺ partial sums are Cauchy
- **Corollary**: $\sum a_n$ converges ⟹ $a_n \to 0$ (but not conversely!)

### The Significance of Cauchy
- **Intrinsic**: Examines only the sequence itself
- **Metric**: Uses only distances, not order
- **Necessary and sufficient**: Unlike comparison tests
- Generalizes to spaces without order (function spaces, $\mathbb{R}^n$)

## 3.4 The Many Faces of Completeness

### The Equivalences
We've seen completeness manifest as:
- Least Upper Bound (the axiom)
- Monotone Convergence Theorem
- Nested Intervals Property
- Bolzano-Weierstrass
- Cauchy Completeness

**Theorem**: For an ordered field $F$, the following are equivalent:
1. (LUB) Every nonempty set bounded above has a supremum
2. (MCT) Every monotone bounded sequence converges
3. (Nested Intervals + Archimedean) Nested intervals with shrinking length have nonempty intersection
4. (BW) Every bounded sequence has a convergent subsequence
5. (Cauchy) Every Cauchy sequence converges

### Proof of Equivalences
- (1) ⟹ (2): Proved in Chapter 2
- (2) ⟹ (3): Both endpoint sequences converge by MCT; gap → 0 forces same limit
- (3) ⟹ (4): Bisection proof of BW
- (4) ⟹ (5): Our proof that Cauchy ⟹ convergent
- (5) ⟹ (1): Bisection construction of sup via Cauchy sequence

### The Significance
- **Philosophical**: Completeness isn't just "sup exists"—it manifests in many equivalent ways
- **Practical**: Choose whichever characterization fits the problem
- **Forward-looking**: Cauchy completeness generalizes to metric spaces without order

---

# Part D: Contraction Mappings

**Theme:** Synthesize both threads—comparison with geometric series (Part A) + Cauchy completeness (Part C)—to analyze iterative processes.

## 3.5 The Contraction Mapping Theorem

### The Setup
- Recall from Chapter 2: if $a_{n+1} = f(a_n)$ converges to $L$, then $L = f(L)$
- But *when* does it converge?
- Key insight: if $f$ "shrinks distances," convergence is guaranteed

### Contractions
- **Definition**: $f: I \to I$ is a contraction with constant $c \in (0,1)$ if $|f(x) - f(y)| \le c|x - y|$ for all $x, y \in I$

### The Theorem
**Theorem (Contraction Mapping Theorem)**: If $f: I \to I$ is a contraction with constant $c$, then:
1. $f$ has a unique fixed point $L \in I$
2. For any $a_1 \in I$, the sequence $a_{n+1} = f(a_n)$ converges to $L$
3. **Convergence rate**: $|a_n - L| \le c^{n-1}|a_1 - L|$

**Proof**:
- Step 1: $|a_{n+1} - a_n| \le c^{n-1}|a_2 - a_1|$ (contraction property)
- Step 2: Comparison with geometric series ⟹ $(a_n)$ is Cauchy
- Step 3: Cauchy completeness ⟹ $(a_n) \to L$
- Step 4: Continuity of $f$ (Lipschitz ⟹ continuous) ⟹ $L = f(L)$
- Step 5: Uniqueness from contraction property

**Remark**: The proof combines Part A (geometric comparison) with Part C (Cauchy completeness).

### Revisiting Chapter 2: Convergence Rates

The contraction mapping theorem doesn't just prove convergence—it tells us *how fast*. Let's revisit three iterative processes from Chapter 2.

#### Example 1: Nested Radicals for φ

The nested radical $\sqrt{1 + \sqrt{1 + \sqrt{1 + \cdots}}}$ comes from $f(x) = \sqrt{1 + x}$.

**Claim**: $f$ is a contraction on $[1, 2]$ with constant $c = 1/(2\sqrt{2})$.

*Verification that $f: [1,2] \to [1,2]$*:
- $f(1) = \sqrt{2} \approx 1.414$ ✓
- $f(2) = \sqrt{3} \approx 1.732$ ✓

*Finding the contraction constant* (conjugate trick):
$$|\sqrt{1+x} - \sqrt{1+y}| = \frac{|x - y|}{\sqrt{1+x} + \sqrt{1+y}}$$

On $[1, 2]$: $\sqrt{1+x} \ge \sqrt{2}$, so denominator $\ge 2\sqrt{2}$.

Thus $|f(x) - f(y)| \le \dfrac{1}{2\sqrt{2}}|x - y|$ with $c = \dfrac{1}{2\sqrt{2}} \approx 0.354$.

#### Example 2: Continued Fractions for φ

The continued fraction $[1; 1, 1, 1, \ldots]$ comes from $f(x) = 1 + 1/x$.

**Claim**: $f$ is a contraction on $[1.5, 2]$ with constant $c = 4/9$.

*Verification that $f: [1.5, 2] \to [1.5, 2]$*:
- $f(1.5) = 5/3 \approx 1.667$ ✓
- $f(2) = 1.5$ ✓

*Finding the contraction constant*:
$$\left|\frac{1}{x} - \frac{1}{y}\right| = \frac{|x - y|}{xy}$$

On $[1.5, 2]$: $xy \ge 2.25$, so $|f(x) - f(y)| \le \dfrac{4}{9}|x - y|$.

**Remark**: On $[1, 2]$, we only get $c \le 1$—not a contraction! The domain matters.

#### Example 3: Archimedes' Ratio for π

The ratio $r_n = a_n/b_n$ satisfies $r_{2n} = g(r_n)$ where $g(r) = \sqrt{(r+1)/2}$.

**Claim**: $g$ is a contraction on $[0, 1]$ with constant $c = 1/(2\sqrt{2})$.

*Verification that $g: [0, 1] \to [0, 1]$*:
- $g(0) = 1/\sqrt{2} \approx 0.707$ ✓
- $g(1) = 1$ ✓

*Finding the contraction constant* (conjugate trick):
$$\left|\sqrt{\frac{x+1}{2}} - \sqrt{\frac{y+1}{2}}\right| = \frac{|x - y|/2}{\sqrt{(x+1)/2} + \sqrt{(y+1)/2}}$$

On $[0, 1]$: $\sqrt{(x+1)/2} \ge 1/\sqrt{2}$, so denominator $\ge \sqrt{2}$.

Thus $|g(x) - g(y)| \le \dfrac{1}{2\sqrt{2}}|x - y|$.

#### Comparison of Convergence Rates

| Method | Map | Domain | Contraction Constant |
|--------|-----|--------|---------------------|
| Nested radical for $\phi$ | $\sqrt{1+x}$ | $[1, 2]$ | $1/(2\sqrt{2}) \approx 0.354$ |
| Continued fraction for $\phi$ | $1 + 1/x$ | $[1.5, 2]$ | $4/9 \approx 0.444$ |
| Archimedes ratio | $\sqrt{(r+1)/2}$ | $[0, 1]$ | $1/(2\sqrt{2}) \approx 0.354$ |

**Interpretation**: Smaller $c$ = faster convergence. After $n$ iterations, error is multiplied by $c^n$.

**The algebraic trick**: Both square root examples used the conjugate identity $|\sqrt{a} - \sqrt{b}| = |a-b|/(\sqrt{a} + \sqrt{b})$. This transforms differences of square roots into quotients where we can bound the denominator. A useful technique for proving Lipschitz bounds without calculus.

### Applications

**Example**: $a_{n+1} = \cos(a_n)$ converges for any $a_1 \in [0, 1]$.

Show $\cos: [0,1] \to [0,1]$ is a contraction:
- $\cos(0) = 1$, $\cos(1) \approx 0.54$, both in $[0,1]$ ✓
- $|\cos x - \cos y| = 2|\sin(\frac{x+y}{2})||\sin(\frac{x-y}{2})| \le 2 \cdot 1 \cdot |x-y|/2 = |x-y| \cdot \sin(1)$
- Actually: use $|\cos x - \cos y| \le |x - y|$ (mean value intuition) with $c = \sin(1) \approx 0.84 < 1$

The sequence converges to the unique solution of $x = \cos(x)$.

**Example**: Newton's method for $\sqrt{2}$.

$x_{n+1} = (x_n + 2/x_n)/2 = f(x_n)$.

On $[1, 2]$: Show $f$ is a contraction (exercise). This explains the rapid convergence observed in Chapter 2.

**Preview**: Contraction mappings appear in Chapter 6 (Newton's method analysis) and Chapter 11 (Picard iteration for ODEs).

---

## Chapter Summary

| Part | Theme | Key Results |
|------|-------|-------------|
| **A: Monotone Methods** | Reduce to MCT | Comparison, ratio, root tests |
| **B: Bounded Sequences** | Structure of subsequential limits | Bolzano-Weierstrass, limsup/liminf |
| **C: Cauchy Criterion** | Intrinsic metric characterization | Cauchy ⟺ convergent; equivalence of completeness notions |
| **D: Contractions** | Synthesis + convergence rates | Fixed points via geometric comparison + Cauchy |

---

## Key Theorems

1. **Comparison test**: $0 \le a_n \le b_n$ and $\sum b_n$ converges ⟹ $\sum a_n$ converges
2. **Ratio/root tests**: Comparison with geometric series
3. **Absolute convergence ⟹ convergence**
4. **Alternating series test**: $b_n \searrow 0$ ⟹ $\sum(-1)^n b_n$ converges
5. **Bolzano-Weierstrass**: Bounded ⟹ has convergent subsequence
6. **Limsup/liminf characterization**: $a_n \to L$ ⟺ $\limsup a_n = \liminf a_n = L$
7. **Cauchy criterion**: Cauchy ⟺ convergent
8. **Equivalence of completeness**: LUB ⟺ MCT ⟺ Nested Intervals ⟺ BW ⟺ Cauchy
9. **Contraction mapping theorem**: Contractions have unique fixed points; all orbits converge geometrically

---

## Exercises (Selected)

### Section 3.1 (Comparison)
- Prove $\sum 1/(n \log n)$ diverges
- Test: $\sum n^2/2^n$, $\sum n!/n^n$, $\sum (2n)!/(n!)^2$
- Show ratio test is inconclusive for all $p$-series
- Prove Cauchy condensation test

### Section 3.2 (Subsequences)
- Find all subsequential limits of $((-1)^n(1 + 1/n))$
- Prove $\limsup(a_n + b_n) \le \limsup a_n + \limsup b_n$
- Find radius of convergence: $\sum n^n x^n / n!$, $\sum x^n/(n \cdot 2^n)$
- Prove Riemann rearrangement theorem

### Section 3.3 (Cauchy)
- Prove directly that Cauchy sequences are bounded
- Show $(\sin n)$ is not Cauchy
- Prove: Cauchy sequence with convergent subsequence converges to that subsequence's limit

### Section 3.4 (Equivalences)
- Prove (3) ⟹ (4) in detail
- Give example of non-Archimedean ordered field where nested intervals fail
- Outline construction of ℝ from ℚ via Cauchy sequences

### Section 3.5 (Contractions)
- Verify $f(x) = (x + 2/x)/2$ is a contraction on $[1, 2]$ (find constant)
- Prove: if $f$ has contraction constant $c$, then $|a_n - L| \le c^{n-1}/(1-c) \cdot |a_2 - a_1|$
- Find fixed point of $f(x) = (x^2 + 1)/3$ on $[0, 1]$
- Compare: How many iterations of nested radical vs continued fraction are needed to approximate $\phi$ to 6 decimal places?

---

## Dependencies

**Requires from earlier chapters**:
- Chapter 1: Completeness axiom, sup/inf, Archimedean property, nested intervals
- Chapter 2: Convergence definition, limit laws, MCT, geometric series, the iterative sequences for $\phi$ and $\pi$

**Sets up for later chapters**:
- Chapter 4: Limit interchange theorems
- Chapter 5: Sequential characterization of continuity, compactness via BW
- Chapter 6: Contraction ↔ $|f'| < 1$, Newton's method analysis
- Chapter 11: Picard iteration for ODEs via contraction mapping