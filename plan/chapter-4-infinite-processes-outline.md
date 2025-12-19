# Chapter 4: Infinite Processes

## Overview

Series, products, recursive iterations, continued fractions — these are all instances of "doing something infinitely many times." But they're all just sequences in disguise: sequences of partial sums, partial products, or iterates. This chapter develops specialized techniques for these infinite processes, applying the general theory from Chapters 2–3.

The techniques divide into two types: *finding hidden monotonicity* (decomposing into monotone pieces) and *comparison* (dominating by something we understand). The contraction mapping theorem synthesizes both, using geometric comparison and Cauchy completeness to guarantee convergence with explicit rates.

We then showcase these techniques on two crown jewels: continued fractions (completing the √2 story and revealing φ as the "most irrational" number) and Archimedes' calculation of π.

**The arc:**
> Monotone decomposition → Comparison techniques → Contraction mappings → Continued fractions → Archimedes' π

---

## Historical Prelude (Unnumbered)

### The Problem

Euler manipulated infinite series with breathtaking boldness. He computed Σ1/n² = π²/6 by factoring sin(x) as an infinite product — a move with no rigorous justification. Sometimes his methods gave correct answers. Sometimes they gave nonsense.

Which manipulations can we trust? When does an infinite sum, product, or iteration converge?

### The Development

**Cauchy (1821)** brought discipline to the chaos. His comparison, ratio, and root tests detect convergence without computing the sum. The key insight: compare your series to one you already understand (usually geometric).

**The alternating series test** handles signs: if terms alternate and decrease to zero, the series converges. The partial sums zig-zag toward the limit.

**Contraction mappings** explain why Newton's method and other iterations converge: if a function shrinks distances, repeated application must reach a fixed point.

### The Message

This chapter transforms infinite processes from art to science. Every series, product, and iteration is a sequence — and we have a theory of sequences. The techniques here are workhorses of analysis, applicable far beyond their first examples.

---

## 4.1 Finding Monotonicity

### The Idea

Not every sequence is monotone, but some decompose into monotone pieces. If the pieces all converge to the same limit, so does the whole sequence.

### The Even-Odd Lemma

**Lemma**: Suppose (aₙ) is a sequence such that:
1. The even-indexed subsequence (a₂ₖ) converges to L
2. The odd-indexed subsequence (a₂ₖ₊₁) converges to L

Then aₙ → L.

*Proof idea*: Given ε, eventually all even terms are within ε of L, and all odd terms are within ε of L. So eventually all terms are within ε of L.

**Generalization**: If (aₙ) decomposes into k subsequences, each converging to L, then aₙ → L. (State; assign as exercise.)

### The Alternating Series Test

**Theorem (Leibniz)**: If (bₙ) is decreasing and bₙ → 0, then Σ(−1)ⁿ⁺¹bₙ converges.

*Proof outline*:
- Let Sₙ = Σₖ₌₁ⁿ (−1)ᵏ⁺¹bₖ be the partial sums
- Even partial sums S₂ₙ: show increasing (S₂ₙ₊₂ − S₂ₙ = b₂ₙ₊₁ − b₂ₙ₊₂ ≥ 0)
- Odd partial sums S₂ₙ₊₁: show decreasing
- Show S₂ₙ ≤ S₂ₘ₊₁ for all n, m (every even ≤ every odd)
- Gap: S₂ₙ₊₁ − S₂ₙ = b₂ₙ₊₁ → 0
- MCT gives S₂ₙ → L and S₂ₙ₊₁ → L′ with L ≤ L′
- Gap → 0 implies L = L′
- Even-odd lemma: Sₙ → L

**Example**: The alternating harmonic series Σ(−1)ⁿ⁺¹/n converges.

**Remark**: This series converges *conditionally* (not absolutely, since Σ1/n diverges). We'll see the significance in Chapter 5.

### Continued Fraction Example: √2

**Definition preview**: A continued fraction [a₀; a₁, a₂, ...] represents:
$$a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cdots}}}$$

**Example**: √2 = [1; 2, 2, 2, ...] = [1; 2̄].

The *convergents* are the finite truncations:
- p₀/q₀ = 1
- p₁/q₁ = 1 + 1/2 = 3/2
- p₂/q₂ = 1 + 1/(2 + 1/2) = 7/5
- p₃/q₃ = 1 + 1/(2 + 1/(2 + 1/2)) = 17/12
- ...

**Claim**: The convergents converge to √2.

*Proof outline*:
- Even convergents p₀/q₀, p₂/q₂, p₄/q₄, ... are increasing
- Odd convergents p₁/q₁, p₃/q₃, p₅/q₅, ... are decreasing
- Every even convergent < every odd convergent
- Gap: |pₙ/qₙ − pₙ₋₁/qₙ₋₁| = 1/(qₙqₙ₋₁) → 0 (since qₙ → ∞)
- By even-odd lemma: convergents → some L
- (In §4.4: verify L = √2)

**Observation**: After the first term, the CF for √2 is [2; 2, 2, ...]. This "tail" satisfies t = 2 + 1/t. We'll exploit this in §4.3.

### The Wallis Product

**Theorem**: The Wallis product converges:
$$\frac{\pi}{2} = \prod_{n=1}^{\infty} \frac{4n^2}{4n^2 - 1} = \frac{2}{1} \cdot \frac{2}{3} \cdot \frac{4}{3} \cdot \frac{4}{5} \cdot \frac{6}{5} \cdot \frac{6}{7} \cdots$$

*Proof of convergence* (not that it equals π/2):
- Partial products Pₙ zig-zag: factors alternate > 1 and < 1
- Odd partial products P₁, P₃, P₅, ... are decreasing
- Even partial products P₂, P₄, P₆, ... are increasing
- Every even < every odd
- Gap: P₂ₙ₊₁/P₂ₙ = (2n+2)/(2n+1) → 1, so gap → 0
- By even-odd lemma: Pₙ converges

**Remark**: Proving the limit equals π/2 requires integration (Chapter 7).

---

## 4.2 Comparison

### The Comparison Test

**Theorem (Comparison Test)**: If 0 ≤ aₙ ≤ bₙ for all n and Σbₙ converges, then Σaₙ converges.

*Proof idea*: Partial sums of Σaₙ are increasing and bounded above by Σbₙ. Apply MCT.

**Theorem (Limit Comparison)**: If aₙ, bₙ > 0 and aₙ/bₙ → L with 0 < L < ∞, then Σaₙ and Σbₙ have the same convergence behavior.

*Proof idea*: Eventually aₙ/bₙ ∈ (L/2, 2L), so (L/2)bₙ < aₙ < 2Lbₙ. Apply comparison both ways.

### Absolute Convergence

**Definition**: Σaₙ *converges absolutely* if Σ|aₙ| converges.

**Definition**: Σaₙ *converges conditionally* if it converges but not absolutely.

**Theorem**: Absolute convergence implies convergence.

*Proof idea*: Write aₙ = aₙ⁺ − aₙ⁻ where aₙ⁺ = max(aₙ, 0) and aₙ⁻ = max(−aₙ, 0). Both aₙ⁺ ≤ |aₙ| and aₙ⁻ ≤ |aₙ|. By comparison, Σaₙ⁺ and Σaₙ⁻ converge. Then Σaₙ = Σaₙ⁺ − Σaₙ⁻ converges.

**Remark**: Absolute convergence is "safe" — absolutely convergent series can be rearranged freely (Chapter 5). Conditional convergence is "fragile."

### Ratio and Root Tests

Both tests compare to geometric series.

**Theorem (Ratio Test)**: Consider Σaₙ with aₙ ≠ 0.
- If |aₙ₊₁/aₙ| → L < 1, the series converges absolutely
- If |aₙ₊₁/aₙ| → L > 1, the series diverges
- If L = 1, the test is inconclusive

*Proof idea (L < 1)*: Choose r with L < r < 1. Eventually |aₙ₊₁/aₙ| < r, so |aₙ| < Crⁿ. Compare to geometric series.

**Theorem (Root Test)**: Consider Σaₙ.
- If |aₙ|^{1/n} → L < 1, the series converges absolutely
- If |aₙ|^{1/n} → L > 1, the series diverges
- If L = 1, the test is inconclusive

**Theorem (Root Test, Strong Form)**: Let L = limsup |aₙ|^{1/n}.
- If L < 1, the series converges absolutely
- If L > 1, the series diverges

*Remark*: The strong form works even when the limit doesn't exist — only the limsup matters.

**Application**: The *radius of convergence* of a power series Σaₙxⁿ is R = 1/limsup|aₙ|^{1/n}.

### The Viète Product

**Viète's Formula**:
$$\frac{2}{\pi} = \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2+\sqrt{2}}}{2} \cdot \frac{\sqrt{2+\sqrt{2+\sqrt{2}}}}{2} \cdots$$

Let vₖ denote the k-th factor. Let rₖ be the nested radical: r₁ = √2, rₖ₊₁ = √(2 + rₖ).

**Claim**: The Viète product converges.

*Proof outline*:
- From Chapter 2: rₖ → 2, and the convergence is geometric (|rₖ − 2| ≤ c^k for some c < 1)
- So vₖ = rₖ/2 → 1, and |vₖ − 1| decays geometrically
- Partial products form a Cauchy sequence (geometric comparison)
- By Cauchy completeness: product converges

*Proof that it equals 2/π*: Derived from Archimedes' polygon method in §4.5.

**Remark**: For products with factors approaching 1, the general principle is: Πaₙ converges iff Σlog(aₙ) converges. But log isn't developed until Chapter 6, so we use direct comparison here.

---

## 4.3 Contraction Mappings

### The Setup

Consider a recursive sequence: a₁ given, aₙ₊₁ = f(aₙ).

**Question**: When does such a sequence converge? To what?

**Key insight**: If f "shrinks distances," the sequence must converge.

### Contractions

**Definition**: Let I ⊆ ℝ be an interval. A function f: I → I is a *contraction* with *constant* c ∈ (0, 1) if:
$$|f(x) - f(y)| \leq c|x - y| \quad \text{for all } x, y \in I$$

**Remark**: The constant c measures how much f shrinks distances. Smaller c = faster convergence.

### The Contraction Mapping Theorem

**Theorem**: Let f: I → I be a contraction with constant c. Then:
1. f has a unique fixed point L ∈ I (i.e., f(L) = L)
2. For any a₁ ∈ I, the sequence aₙ₊₁ = f(aₙ) converges to L
3. **Convergence rate**: |aₙ − L| ≤ cⁿ⁻¹|a₁ − L|

*Proof outline*:

**Step 1**: |aₙ₊₁ − aₙ| ≤ cⁿ⁻¹|a₂ − a₁| (induction using contraction property).

**Step 2**: (aₙ) is Cauchy. For m > n:
$$|a_m - a_n| \leq |a_{n+1} - a_n| + \cdots + |a_m - a_{m-1}| \leq |a_2 - a_1|(c^{n-1} + \cdots + c^{m-2})$$
This is bounded by |a₂ − a₁| · cⁿ⁻¹/(1−c), which → 0 as n → ∞.

**Step 3**: By Cauchy completeness (Chapter 3), aₙ → L for some L ∈ I.

**Step 4**: L is a fixed point. From aₙ₊₁ = f(aₙ), take limits: L = f(L).

**Step 5**: Uniqueness. If f(L) = L and f(L′) = L′, then |L − L′| = |f(L) − f(L′)| ≤ c|L − L′|. Since c < 1, this forces L = L′.

**Remark**: The proof combines comparison with geometric series (Step 2) and Cauchy completeness (Step 3) — synthesizing techniques from earlier chapters.

### Revisiting Chapter 2 Examples

**Babylonian sequence for √2**: xₙ₊₁ = (xₙ + 2/xₙ)/2 = f(xₙ).

On [1, 2]: f is a contraction (exercise: find the constant using calculus or direct estimation).

Convergence rate: error roughly squares each iteration (even faster than geometric!). This "quadratic convergence" is special to Newton-type methods.

**Nested radicals**: aₙ₊₁ = √(2 + aₙ) = f(aₙ).

On [1, 2]: |f(x) − f(y)| = |x − y|/(√(2+x) + √(2+y)) ≤ |x − y|/(2√3).

So c = 1/(2√3) ≈ 0.29. Convergence rate: error multiplied by ~0.29 each step.

### √2 Continued Fraction Revisited

From §4.1: √2 = [1; 2̄]. The tail t = [2; 2̄] satisfies t = 2 + 1/t.

**The iteration**: f(x) = 2 + 1/x.

**Claim**: f is a contraction on [2, 3] with constant c = 1/4.

*Proof*:
- f maps [2, 3] into itself: f(2) = 2.5, f(3) = 7/3 ≈ 2.33
- |f(x) − f(y)| = |1/x − 1/y| = |x − y|/(xy) ≤ |x − y|/4 on [2, 3]

**Fixed point**: t = 2 + 1/t gives t² − 2t − 1 = 0, so t = 1 + √2.

**Conclusion**: The tail convergents approach 1 + √2, so the full convergents approach √2 = t − 1. Same convergence rate.

**Preview**: This pattern — periodic CF gives contraction iteration — underlies Lagrange's theorem (§4.4).

### A Calculus Example

**Remark**: For those who know calculus, consider xₙ₊₁ = cos(xₙ).

Starting from any x₁ ∈ [0, 1], this converges to the unique solution of x = cos(x).

Try it on a calculator! The fixed point is approximately 0.739085...

---

## 4.4 Continued Fractions

### Definitions

**Definition**: A *continued fraction* (CF) is an expression:
$$[a_0; a_1, a_2, a_3, \ldots] = a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cdots}}}$$

**Conventions**: 
- a₀ ∈ ℤ (can be negative or zero)
- aₙ ∈ ℤ₊ for n ≥ 1 (positive integers)
- The aₙ are called *partial quotients*

**Definition**: The *n-th convergent* is the finite truncation:
$$\frac{p_n}{q_n} = [a_0; a_1, \ldots, a_n]$$

### The Recurrence Relations

**Theorem**: The convergents satisfy:
- p₋₁ = 1, p₀ = a₀, pₙ = aₙpₙ₋₁ + pₙ₋₂
- q₋₁ = 0, q₀ = 1, qₙ = aₙqₙ₋₁ + qₙ₋₂

*Proof*: Induction.

**Example (√2 = [1; 2̄])**:
| n | aₙ | pₙ | qₙ | pₙ/qₙ |
|---|----|----|----|----|
| −1 | — | 1 | 0 | — |
| 0 | 1 | 1 | 1 | 1 |
| 1 | 2 | 3 | 2 | 1.5 |
| 2 | 2 | 7 | 5 | 1.4 |
| 3 | 2 | 17 | 12 | 1.4167 |
| 4 | 2 | 41 | 29 | 1.4138 |

### The Key Identity

**Theorem**: pₙqₙ₋₁ − pₙ₋₁qₙ = (−1)ⁿ⁻¹.

*Proof*: Induction using the recurrence.

**Corollary**: gcd(pₙ, qₙ) = 1. (Convergents are always in lowest terms.)

**Corollary**: 
$$\frac{p_n}{q_n} - \frac{p_{n-1}}{q_{n-1}} = \frac{(-1)^{n-1}}{q_n q_{n-1}}$$

### Convergence

**Theorem**: Every continued fraction converges.

*Proof*:
- Even convergents increasing (use the corollary above)
- Odd convergents decreasing
- Every even < every odd
- Gap |pₙ/qₙ − pₙ₋₁/qₙ₋₁| = 1/(qₙqₙ₋₁) → 0 (since qₙ ≥ Fₙ → ∞)
- By the even-odd lemma (§4.1): convergents converge

### Existence and Uniqueness

**Theorem**: Every real number has a continued fraction expansion.

*Construction (Greedy algorithm)*:
- a₀ = ⌊x⌋
- If x ∉ ℤ: set x₁ = 1/(x − a₀), then a₁ = ⌊x₁⌋
- Continue: xₙ₊₁ = 1/(xₙ − aₙ), aₙ₊₁ = ⌊xₙ₊₁⌋
- Process terminates iff x is rational

**Theorem**: The convergents of this CF converge to x.

**Theorem**: CF expansions are unique (with the convention that finite CFs don't end in 1).

### Characterizing Rationals and Quadratics

**Theorem**: x ∈ ℚ if and only if its CF expansion is finite.

**Theorem (Lagrange)**: x is a quadratic irrational (root of ax² + bx + c = 0 with a, b, c ∈ ℤ, a ≠ 0, and irrational) if and only if its CF expansion is eventually periodic.

*Connection to contractions*: A periodic tail [a; a, a, ...] satisfies t = a + 1/t. An eventually periodic tail satisfies a similar relation. The periodicity creates a contraction iteration.

**Examples**:
- √2 = [1; 2̄] (period 1)
- √3 = [1; 1, 2̄] (period 2)
- √5 = [2; 4̄] (period 1)
- (1 + √5)/2 = [1; 1̄] (period 1)

### Best Rational Approximation

**Theorem**: Convergents give best approximations:
$$\left|x - \frac{p_n}{q_n}\right| < \frac{1}{q_n q_{n+1}} < \frac{1}{q_n^2}$$

**Theorem**: Among all fractions with denominator ≤ qₙ, the convergent pₙ/qₙ is closest to x.

### The Pell Connection

**Theorem**: The convergents pₙ/qₙ of √N (for non-square N) satisfy:
$$p_n^2 - N q_n^2 = (-1)^{n+1}$$

*Proof idea*: Use the key identity and the specific structure of the CF for √N.

**The √2 story complete**:
- Chapter 1: Defined √2 = sup{r ∈ ℚ : r² < 2}
- Chapter 2: Babylonian sequence converges to √2 (MCT)
- §4.1: CF convergents converge (even-odd)
- §4.3: CF iteration is a contraction (convergence rate)
- §4.4: CF is [1; 2̄], convergents are Pell solutions, *explains why* the patterns work

### The Golden Ratio Surprise

**The golden ratio**: φ = (1 + √5)/2 ≈ 1.618...

**Theorem**: φ = [1; 1, 1, 1, ...] = [1; 1̄].

**The convergents**: 1/1, 2/1, 3/2, 5/3, 8/5, 13/8, ...

These are ratios of consecutive Fibonacci numbers! Fₙ₊₁/Fₙ → φ.

**The surprise**: φ is the "most irrational" number.

*Why?*: Best approximation quality depends on how fast qₙ grows. The recurrence qₙ = aₙqₙ₋₁ + qₙ₋₂ shows: larger partial quotients = faster growth = better approximation.

All partial quotients of φ equal 1 — the smallest possible. So qₙ grows as slowly as possible (Fibonacci growth), making φ the *hardest* real number to approximate by rationals.

**Theorem**: For any irrational x and any c < 1/√5, there are infinitely many rationals p/q with |x − p/q| < c/q². But for φ, the constant 1/√5 is sharp.

---

## 4.5 Archimedes' π

### The Setup

Consider a circle of radius 1.

**Definition**:
- aₙ = half-perimeter of regular n-gon inscribed in the circle
- bₙ = half-perimeter of regular n-gon circumscribed about the circle

**Geometric facts**:
- aₙ < (half-circumference) < bₙ
- aₙ = n sin(π/n), bₙ = n tan(π/n) — but we don't assume knowledge of trig!

**Starting values** (hexagon, n = 6):
- a₆ = 3 (inscribed hexagon has perimeter 6)
- b₆ = 2√3 ≈ 3.464

So already: 3 < (half-circumference) < 3.465.

### The Doubling Recurrence

When we double the number of sides:

**Theorem**:
- b₂ₙ = H(aₙ, bₙ) = 2aₙbₙ/(aₙ + bₙ) (harmonic mean)
- a₂ₙ = G(aₙ, b₂ₙ) = √(aₙ · b₂ₙ) (geometric mean)

*Derivation*: Geometric argument using similar triangles (or trig identities as exercise).

### Monotonicity

**Theorem**: Along the doubling sequence n = 6, 12, 24, 48, ...:
- (aₙ) is increasing
- (bₙ) is decreasing
- aₙ < bₙ for all n

*Proof*: From the AM-GM-HM inequality: H(a,b) < G(a,b) < A(a,b), with the values lying strictly between a and b when a ≠ b.

### Separate Convergence

**Corollary**: Both sequences converge by MCT.
- (aₙ) increasing, bounded above by b₆ → converges to some Lₐ
- (bₙ) decreasing, bounded below by a₆ → converges to some L_b
- Lₐ ≤ L_b

**Question**: Do they converge to the *same* limit?

### The Ratio Trick

**Definition**: rₙ = aₙ/bₙ ∈ (0, 1).

**Theorem**: r₂ₙ = g(rₙ) where g(r) = √((r+1)/2).

*Proof*:
$$\frac{a_n}{b_{2n}} = \frac{a_n(a_n + b_n)}{2a_n b_n} = \frac{a_n + b_n}{2b_n} = \frac{r_n + 1}{2}$$
$$r_{2n} = \frac{a_{2n}}{b_{2n}} = \frac{\sqrt{a_n \cdot b_{2n}}}{b_{2n}} = \sqrt{\frac{a_n}{b_{2n}}} = \sqrt{\frac{r_n + 1}{2}}$$

**Theorem**: rₙ → 1.

*Proof outline*:
- g maps (0, 1] into itself
- g is a contraction on [0, 1] (verify |g(r) − g(s)| ≤ (1/2√2)|r − s|)
- Or direct: rₙ is increasing (check g(r) > r for r < 1), bounded by 1, MCT gives rₙ → L
- Taking limits in L = √((L+1)/2): L² = (L+1)/2, so 2L² − L − 1 = 0, giving (2L+1)(L−1) = 0
- Since L > 0, we have L = 1

**Conclusion**: Lₐ/L_b = lim(aₙ/bₙ) = 1, so Lₐ = L_b.

### The Definition of π

**Definition**: π = lim aₙ = lim bₙ.

**Corollary**: aₙ < π < bₙ for all n. (Rigorous error bounds!)

**Corollary**: The circumference of a circle of radius r is 2πr.

**Corollary**: The area of a circle of radius r is πr². 

*Proof idea*: The area of the circumscribed n-gon is bₙ · 1 = bₙ (base times height for triangles from center). Taking limits: area = π.

**Theorem (Archimedes)**: Area = (1/2) × Circumference × Radius.

### Deriving Viète's Formula

Recall from §4.2: Viète's product converges. Now we prove it equals 2/π.

**The connection**: When doubling from n to 2n sides:
$$\frac{a_{2n}}{a_n} = \frac{\sqrt{a_n \cdot b_{2n}}}{a_n} = \sqrt{\frac{b_{2n}}{a_n}} = \sqrt{\frac{H(a_n, b_n)}{a_n}}$$

Starting from the square (n = 4): a₄ = 2√2.

After k doublings:
$$a_{4 \cdot 2^k} = a_4 \cdot \prod_{j=0}^{k-1} \frac{a_{4 \cdot 2^{j+1}}}{a_{4 \cdot 2^j}}$$

Taking k → ∞ and using a₄·₂^∞ → π:
$$\pi = 2\sqrt{2} \cdot \prod_{j=0}^{\infty} \frac{a_{4 \cdot 2^{j+1}}}{a_{4 \cdot 2^j}}$$

The factors relate to nested radicals (exercise: work out the details). The result:
$$\frac{2}{\pi} = \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2+\sqrt{2}}}{2} \cdot \frac{\sqrt{2+\sqrt{2+\sqrt{2}}}}{2} \cdots$$

### Archimedes' Bounds

**Computation**: Using the recurrence from n = 6:

| n | aₙ | bₙ |
|---|----|----|
| 6 | 3 | 3.4641... |
| 12 | 3.1058... | 3.2154... |
| 24 | 3.1326... | 3.1596... |
| 48 | 3.1393... | 3.1460... |
| 96 | 3.1410... | 3.1427... |

**Archimedes' result** (96-gon):
$$3\frac{10}{71} < \pi < 3\frac{1}{7}$$

That is: 3.1408... < π < 3.1429...

---

## Chapter Summary

| Section | Technique | Key Examples |
|---------|-----------|--------------|
| 4.1 Finding Monotonicity | Decompose into monotone subsequences | Alternating series, √2 CF, Wallis |
| 4.2 Comparison | Dominate by known series | Ratio/root tests, Viète convergence |
| 4.3 Contraction Mappings | Shrinking maps have fixed points | Babylonian, nested radicals, √2 CF tail |
| 4.4 Continued Fractions | Full theory | √2 complete, φ as "most irrational" |
| 4.5 Archimedes' π | Coupled sequences, ratio trick | Definition of π, Viète derived |

## Key Theorems

1. **Even-Odd Lemma**: Subsequences both → L implies full sequence → L
2. **Alternating Series Test**: bₙ ↘ 0 implies Σ(−1)ⁿbₙ converges
3. **Comparison Test**: 0 ≤ aₙ ≤ bₙ and Σbₙ converges implies Σaₙ converges
4. **Absolute convergence implies convergence**
5. **Ratio Test**: |aₙ₊₁/aₙ| → L < 1 implies absolute convergence
6. **Root Test**: |aₙ|^{1/n} → L < 1 implies absolute convergence
7. **Contraction Mapping Theorem**: Contractions have unique fixed points; all orbits converge geometrically
8. **Every CF converges**
9. **Lagrange**: Quadratic irrationals ↔ eventually periodic CFs
10. **Best approximation**: Convergents are optimal
11. **Pell equation**: Convergents of √N solve p² − Nq² = ±1
12. **π = lim aₙ = lim bₙ** (Archimedes)

---

## Exercises (Selected)

### Section 4.1
- Prove the even-odd lemma
- Generalize: k subsequences all → L implies full sequence → L
- Verify the Wallis partial products zig-zag as claimed
- Compute the first 6 convergents of √3 = [1; 1, 2̄] and verify the zig-zag pattern

### Section 4.2
- Test for convergence: Σn²/2ⁿ, Σn!/nⁿ, Σ(2n)!/(n!)²
- Prove the ratio test
- Prove the root test
- Show the ratio test is inconclusive for Σ1/nᵖ (all p)
- Verify the Viète factors satisfy |vₖ − 1| ≤ Mcᵏ for some M, c < 1

### Section 4.3
- Verify f(x) = (x + 2/x)/2 is a contraction on [1, 2]; find the constant
- Verify f(x) = √(2 + x) is a contraction on [1, 2]; find the constant
- Verify f(x) = 2 + 1/x is a contraction on [2, 3]; find the constant
- Compare: how many iterations needed to approximate √2 to 6 decimals via Babylonian vs CF?
- Prove the convergence rate bound |aₙ − L| ≤ cⁿ⁻¹|a₁ − L|

### Section 4.4
- Prove the recurrence relations for pₙ, qₙ by induction
- Prove pₙqₙ₋₁ − pₙ₋₁qₙ = (−1)ⁿ⁻¹ by induction
- Find CF expansions for √5, √7, √10
- Verify Pell equation for first 5 convergents of √3
- Prove qₙ ≥ Fₙ (Fibonacci), so qₙ → ∞
- ★ Prove Lagrange's theorem (one direction): eventually periodic CF implies quadratic irrational

### Section 4.5
- Verify a₆ = 3 and b₆ = 2√3 geometrically
- Derive the doubling recurrence using trig identities
- Verify the ratio recurrence r₂ₙ = √((rₙ+1)/2)
- Compute Archimedes' bounds from the 96-gon
- ★ Derive Viète's formula from the polygon method
- ★ Prove the area formula: area of circumscribed n-gon equals bₙ

---

## Dependencies

**Requires from earlier chapters**:
- Chapter 2: Convergence, limit laws, MCT, geometric series, nested radicals, Babylonian sequence
- Chapter 3: Cauchy sequences, Cauchy completeness, limsup

**Sets up for later chapters**:
- Chapter 5: Rearrangements use absolute vs conditional (§4.2); Tannery connects to series
- Chapter 6: Power series use ratio/root tests; exp(x) defined via series
- Chapter 7: Wallis product proven = π/2 via integration