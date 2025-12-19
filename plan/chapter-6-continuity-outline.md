# Chapter 5: Continuity

## Overview

This chapter makes rigorous the notion of continuous function. The definition is simple, but the consequences are deep: continuous functions on closed intervals are bounded, attain their bounds, and have the intermediate value property. We also study when limits of continuous functions remain continuous—crucial for understanding power series.

**The arc:**
> Definition and basic properties → Limits of continuous functions → The power of [a,b]

---

## Historical Prelude (Unnumbered)

### The Problem

What is a function? What does it mean for a function to be continuous? These seem like simple questions, but the answers evolved dramatically over two centuries—and surprising examples forced mathematicians to rethink basic intuitions.

### The Development

**From Formulas to Correspondences**

For Euler, a "function" meant a formula: y = x², y = sin(x), etc. Fourier's work on heat flow forced a broader view: the correspondence between x and y might not have a single formula. Dirichlet proposed the modern definition: a function is any rule assigning outputs to inputs.

**Dirichlet's Function (1829)**

Dirichlet defined: f(x) = 1 if x is rational, f(x) = 0 if x is irrational. Is this even a function? It has no formula, no graph you could draw. But by the new definition, it qualifies—and it's discontinuous everywhere. This wasn't pathology for its own sake; it tested whether definitions were robust.

**Weierstrass's Monster (1872)**

Weierstrass constructed a function that is continuous everywhere but differentiable nowhere—every point is a "corner." This shocked the mathematical world. Hermite called such functions a "dreadful plague." But they exist, and analysis must accommodate them.

### The Message

Continuous functions are wilder than intuition suggests. The rigorous ε-δ definition we develop isn't pedantry—it's necessary to handle the full range of functions analysis must consider. The theorems of this chapter tell us what continuous functions *can* and *cannot* do.

---

## 5.1 Definition and Properties

### The Definition

**Definition (Continuity at a point)**: A function f is *continuous at a* if for every ε > 0, there exists δ > 0 such that:

$$|x - a| < \delta \implies |f(x) - f(a)| < \varepsilon$$

**Definition (Continuity on a set)**: f is *continuous on S* if f is continuous at every point of S.

**Remark**: The δ may depend on both ε and the point a. We'll return to this in Section 5.3.

### Sequential Characterization

**Theorem**: f is continuous at a if and only if: for every sequence (xₙ) with xₙ → a, we have f(xₙ) → f(a).

*Proof*: 

(⟹) Given xₙ → a and ε > 0, choose δ from the definition. For large enough n, |xₙ - a| < δ, so |f(xₙ) - f(a)| < ε.

(⟸) Suppose f is not continuous at a. Then there exists ε > 0 such that for every δ > 0, some x has |x - a| < δ but |f(x) - f(a)| ≥ ε. Taking δ = 1/n gives a sequence xₙ → a with f(xₙ) ↛ f(a). ∎

**Remark**: The sequential characterization often makes proofs easier—we can use limit theorems from Chapter 2.

### Limits of Functions

**Definition**: We say lim_{x→a} f(x) = L if for every ε > 0, there exists δ > 0 such that:

$$0 < |x - a| < \delta \implies |f(x) - L| < \varepsilon$$

Note: we require 0 < |x - a|, so the value f(a) (if it exists) is irrelevant.

**Theorem (Sequential characterization)**: lim_{x→a} f(x) = L if and only if: for every sequence (xₙ) with xₙ → a and xₙ ≠ a, we have f(xₙ) → L.

**Theorem**: f is continuous at a ⟺ lim_{x→a} f(x) = f(a).

*Proof*: Immediate from the definitions. ∎

**Definition (One-sided limits)**:
- lim_{x→a⁺} f(x) = L: for all ε > 0, exists δ > 0 such that 0 < x - a < δ ⟹ |f(x) - L| < ε
- lim_{x→a⁻} f(x) = L: for all ε > 0, exists δ > 0 such that 0 < a - x < δ ⟹ |f(x) - L| < ε

**Theorem**: lim_{x→a} f(x) = L ⟺ lim_{x→a⁺} f(x) = lim_{x→a⁻} f(x) = L.

### Types of Discontinuities

**Definition**: Suppose f is discontinuous at a. We classify:

- **Removable discontinuity**: lim_{x→a} f(x) exists but ≠ f(a) (or f(a) undefined). Can be "fixed" by redefining f(a).

- **Jump discontinuity**: Both one-sided limits exist but lim_{x→a⁺} f(x) ≠ lim_{x→a⁻} f(x).

- **Essential discontinuity**: At least one one-sided limit fails to exist (infinite or oscillatory).

**Examples**:
- f(x) = sin(x)/x at x = 0: removable (limit is 1)
- f(x) = sign(x) at x = 0: jump (limits are ±1)
- f(x) = sin(1/x) at x = 0: essential (oscillates)
- f(x) = 1/x at x = 0: essential (infinite)
- Dirichlet's function: essential at every point

### Algebra of Continuous Functions

**Theorem**: If f and g are continuous at a, then so are:
- f + g
- f - g
- cf (for any constant c)
- fg
- f/g (provided g(a) ≠ 0)

*Proof*: Use the sequential characterization and limit laws from Chapter 2. ∎

**Theorem (Composition)**: If g is continuous at a and f is continuous at g(a), then f ∘ g is continuous at a.

*Proof*: Let xₙ → a. Then g(xₙ) → g(a) by continuity of g. Then f(g(xₙ)) → f(g(a)) by continuity of f. ∎

**Corollary**: |f| is continuous wherever f is continuous.

**Corollary**: max(f, g) and min(f, g) are continuous wherever f and g are continuous.

*Proof*: max(f, g) = (f + g + |f - g|)/2. ∎

### Basic Examples

**Theorem**: Polynomials are continuous everywhere.

*Proof*: Constants and f(x) = x are continuous. Sums and products of continuous functions are continuous. ∎

**Theorem**: Rational functions p(x)/q(x) are continuous wherever q(x) ≠ 0.

**Theorem**: √x is continuous on [0, ∞).

*Proof*: At a > 0: |√x - √a| = |x - a|/(√x + √a) ≤ |x - a|/√a < ε when |x - a| < ε√a.

At a = 0: |√x| < ε when |x| < ε². ∎

---

## 5.2 Continuity and Limits of Functions

### When Limits Preserve Continuity

A natural question: if f₁, f₂, f₃, ... are continuous and fₙ → f pointwise, is f continuous?

**Definition**: A sequence of functions (fₙ) *converges pointwise* to f if for each x, fₙ(x) → f(x).

**Counterexample**: On [0, 1], let fₙ(x) = xⁿ. Each fₙ is continuous, and:

$$f(x) = \lim_{n \to \infty} x^n = \begin{cases} 0 & x \in [0, 1) \\ 1 & x = 1 \end{cases}$$

The pointwise limit is discontinuous at x = 1.

**Remark**: What condition guarantees continuity is preserved? We'll answer this fully in Chapter 10, where we study function spaces. For now, we focus on the most important case: power series.

### Power Series Are Continuous

**Recall** (from Chapter 4): A power series Σ aₙxⁿ has a radius of convergence R. For |x| < R, the series converges absolutely.

**Theorem**: If f(x) = Σ_{n=0}^∞ aₙxⁿ has radius of convergence R > 0, then f is continuous on (-R, R).

*Proof*: Fix a with |a| < R. Choose r with |a| < r < R. For |x| ≤ r:

$$|f(x) - f(a)| = \left| \sum_{n=0}^{\infty} a_n(x^n - a^n) \right|$$

We want to show this → 0 as x → a. By Tannery's theorem (Chapter 4), it suffices to show:

1. For each n: aₙ(xⁿ - aⁿ) → 0 as x → a. ✓ (polynomials are continuous)

2. There exists a summable bound: |aₙ(xⁿ - aⁿ)| ≤ |aₙ|(|x|ⁿ + |a|ⁿ) ≤ 2|aₙ|rⁿ, and Σ|aₙ|rⁿ converges since r < R. ✓

Therefore lim_{x→a} f(x) = Σ aₙ lim_{x→a}(xⁿ - aⁿ) + Σ aₙaⁿ = f(a). ∎

**Corollary**: Power series define continuous functions on the interior of their interval of convergence.

### Behavior at the Boundary: Abel's Theorem

What happens at x = R or x = -R? The series may converge, diverge, or oscillate. But if it converges, continuity extends to the boundary:

**Theorem (Abel's Theorem)**: Suppose Σ aₙ converges (to some value S). Then:

$$\lim_{x \to 1^-} \sum_{n=0}^{\infty} a_n x^n = S = \sum_{n=0}^{\infty} a_n$$

That is, f(x) = Σ aₙxⁿ is left-continuous at x = 1.

*Proof*: Write Sₙ = Σ_{k=0}^n aₖ for the partial sums, with Sₙ → S.

**Abel's summation formula** (summation by parts): For any sequence (bₙ):

$$\sum_{k=0}^{n} a_k b_k = S_n b_n - \sum_{k=0}^{n-1} S_k (b_{k+1} - b_k)$$

Apply with bₖ = xᵏ:

$$\sum_{k=0}^{n} a_k x^k = S_n x^n - \sum_{k=0}^{n-1} S_k (x^{k+1} - x^k) = S_n x^n - (x - 1)\sum_{k=0}^{n-1} S_k x^k$$

As n → ∞, since Sₙ is bounded and |x| < 1, we have Sₙxⁿ → 0. Thus:

$$f(x) = \sum_{k=0}^{\infty} a_k x^k = (1-x) \sum_{k=0}^{\infty} S_k x^k$$

Now we show f(x) → S as x → 1⁻. Given ε > 0, choose N so |Sₖ - S| < ε for k > N.

$$f(x) - S = (1-x)\sum_{k=0}^{\infty} S_k x^k - S = (1-x)\sum_{k=0}^{\infty} (S_k - S) x^k$$

(using (1-x)Σxᵏ = 1). Split the sum:

$$|f(x) - S| \leq (1-x)\sum_{k=0}^{N} |S_k - S| x^k + (1-x)\sum_{k=N+1}^{\infty} |S_k - S| x^k$$

The first sum is bounded by (1-x) · M · (N+1) → 0 as x → 1⁻.

The second sum is bounded by (1-x) · ε · Σ_{k>N} xᵏ < ε.

Thus |f(x) - S| < 2ε for x sufficiently close to 1. ∎

**Example**: The series 1 - 1/2 + 1/3 - 1/4 + ... converges (alternating series test). Abel's theorem says:

$$\ln(2) = \lim_{x \to 1^-} \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} x^n = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}$$

(We'll prove ln(1+x) = Σ(-1)^{n+1}xⁿ/n in Chapter 8.)

### Uniqueness of Power Series

**Theorem**: If Σ aₙxⁿ = Σ bₙxⁿ for all x in some neighborhood of 0, then aₙ = bₙ for all n.

*Proof*: Let f(x) = Σ aₙxⁿ = Σ bₙxⁿ. Setting x = 0 gives a₀ = f(0) = b₀.

Consider g(x) = (f(x) - a₀)/x = Σ_{n=1}^∞ aₙxⁿ⁻¹ = Σ_{n=1}^∞ bₙxⁿ⁻¹ for x ≠ 0.

By continuity (from our theorem above), as x → 0:

$$a_1 = \lim_{x \to 0} g(x) = b_1$$

Continue by induction. ∎

**Remark**: This is why Taylor series are unique—if a function equals a power series, the coefficients are forced.

---

## 5.3 Continuous Functions on Intervals

Continuous functions on closed bounded intervals [a,b] have remarkable properties. This section develops the main theorems.

### The Intermediate Value Theorem

**Theorem (IVT)**: If f is continuous on [a,b] and y lies between f(a) and f(b), then f(c) = y for some c ∈ (a,b).

*Proof*: Assume f(a) < y < f(b) (the other case is symmetric).

Define S = {x ∈ [a,b] : f(x) < y}. Then S is nonempty (a ∈ S) and bounded above by b.

Let c = sup S. We claim f(c) = y.

**f(c) ≥ y**: There exist xₙ ∈ S with xₙ → c. Then f(xₙ) < y for all n. By continuity, f(c) = lim f(xₙ) ≤ y.

**f(c) ≤ y**: If f(c) < y, then by continuity f(x) < y for x in some interval [c, c+δ). This contradicts c = sup S.

Therefore f(c) = y. ∎

**Remark**: The proof uses completeness of ℝ (existence of sup). IVT fails for continuous functions on ℚ.

### Applications of IVT

**Theorem (Existence of nth roots)**: For a > 0 and n ∈ ℕ, there exists unique x > 0 with xⁿ = a.

*Proof*: Let f(x) = xⁿ on [0, max(1,a)]. Then f(0) = 0 < a and f(max(1,a)) ≥ a. By IVT, f(c) = a for some c. Uniqueness: f is strictly increasing. ∎

**Theorem (Fixed Point Theorem)**: If f: [a,b] → [a,b] is continuous, then f(c) = c for some c ∈ [a,b].

*Proof*: Define g(x) = f(x) - x. Then g(a) = f(a) - a ≥ 0 and g(b) = f(b) - b ≤ 0. By IVT, g(c) = 0 for some c. ∎

**Theorem**: Continuous image of an interval is an interval.

*Proof*: Let J = f([a,b]). Suppose y₁, y₂ ∈ J with y₁ < y < y₂. Then y₁ = f(x₁), y₂ = f(x₂) for some x₁, x₂ ∈ [a,b]. By IVT applied to f on [min(x₁,x₂), max(x₁,x₂)], we have y = f(c) ∈ J. ∎

### Boundedness and the Extreme Value Theorem

**Theorem**: If f is continuous on [a,b], then f is bounded.

*Proof*: Suppose f is unbounded. Then for each n, there exists xₙ ∈ [a,b] with |f(xₙ)| > n.

By Bolzano-Weierstrass, (xₙ) has a convergent subsequence xₙₖ → c ∈ [a,b].

By continuity, f(xₙₖ) → f(c). But |f(xₙₖ)| > nₖ → ∞. Contradiction. ∎

**Theorem (Extreme Value Theorem)**: If f is continuous on [a,b], then f attains its maximum and minimum. That is, there exist c, d ∈ [a,b] with:

$$f(c) \leq f(x) \leq f(d) \quad \text{for all } x \in [a,b]$$

*Proof*: By boundedness, M = sup{f(x) : x ∈ [a,b]} exists and is finite.

By definition of sup, there exist xₙ with f(xₙ) → M.

By Bolzano-Weierstrass, some subsequence xₙₖ → d ∈ [a,b].

By continuity, f(d) = lim f(xₙₖ) = M. So f attains its maximum.

Similarly for the minimum. ∎

### Uniform Continuity

**Definition**: f is *uniformly continuous* on a set S if for every ε > 0, there exists δ > 0 such that for all x, y ∈ S:

$$|x - y| < \delta \implies |f(x) - f(y)| < \varepsilon$$

**Key difference**: In ordinary continuity, δ depends on ε and the point. In uniform continuity, δ depends only on ε—one δ works for all points simultaneously.

**Example**: f(x) = 1/x is continuous on (0,1) but not uniformly continuous. Near 0, we need smaller and smaller δ.

**Example**: f(x) = x² is continuous on ℝ but not uniformly continuous. As x → ∞, the function changes faster and faster.

**Theorem**: Uniformly continuous ⟹ continuous.

*Proof*: Take the δ that works for all points; it works at any particular point. ∎

**Theorem**: If f is continuous on [a,b], then f is uniformly continuous on [a,b].

*Proof*: Suppose not. Then there exists ε > 0 such that for every δ > 0, there exist x, y ∈ [a,b] with |x - y| < δ but |f(x) - f(y)| ≥ ε.

Taking δ = 1/n: there exist xₙ, yₙ with |xₙ - yₙ| < 1/n but |f(xₙ) - f(yₙ)| ≥ ε.

By Bolzano-Weierstrass, some subsequence xₙₖ → c ∈ [a,b]. Since |xₙₖ - yₙₖ| < 1/nₖ → 0, also yₙₖ → c.

By continuity: f(xₙₖ) → f(c) and f(yₙₖ) → f(c). So |f(xₙₖ) - f(yₙₖ)| → 0.

But |f(xₙₖ) - f(yₙₖ)| ≥ ε for all k. Contradiction. ∎

### Continuous Extension

**Theorem**: If f is uniformly continuous on (a,b), then f extends to a continuous function on [a,b].

*Proof*: We show lim_{x→a⁺} f(x) exists.

Let (xₙ) be any sequence in (a,b) with xₙ → a. We show (f(xₙ)) is Cauchy.

Given ε > 0, let δ be from uniform continuity. For large m, n: |xₘ - xₙ| < δ (since xₙ → a), so |f(xₘ) - f(xₙ)| < ε.

Thus (f(xₙ)) is Cauchy, hence convergent. The limit is independent of the sequence (similar argument), so L = lim_{x→a⁺} f(x) exists.

Define f(a) = L. By construction, f is continuous at a. Similarly at b. ∎

**Corollary**: A uniformly continuous function on a bounded set is bounded.

**Remark**: The converse is false—continuous on (a,b) does not imply uniformly continuous.

### Monotone Functions and Inverses

**Definition**: f is *increasing* on I if x < y ⟹ f(x) ≤ f(y). f is *strictly increasing* if x < y ⟹ f(x) < f(y). Similarly for decreasing.

**Definition**: f is *monotone* if f is increasing or decreasing.

**Theorem**: If f is monotone on (a,b), then one-sided limits exist at every point.

*Proof*: Suppose f is increasing. For c ∈ (a,b), the set {f(x) : x < c} is bounded above by f(c).

Let L = sup{f(x) : x < c}. Given ε > 0, there exists x₀ < c with f(x₀) > L - ε. For x₀ < x < c:

$$L - \varepsilon < f(x_0) \leq f(x) \leq L$$

So lim_{x→c⁻} f(x) = L. Similarly for the right-sided limit. ∎

**Corollary**: Monotone functions have only jump discontinuities.

**Theorem**: Strictly monotone ⟹ injective.

*Proof*: If x ≠ y, then f(x) ≠ f(y). ∎

**Theorem**: If f is strictly monotone and continuous on [a,b], then f⁻¹ exists on [f(a), f(b)] (or [f(b), f(a)]) and is continuous.

*Proof*: f is injective (by strict monotonicity) and surjective onto its range (by IVT). So f⁻¹ exists.

For continuity: Suppose f is strictly increasing. Let yₙ → y₀ in the range, and let xₙ = f⁻¹(yₙ), x₀ = f⁻¹(y₀).

The sequence (xₙ) is bounded (lives in [a,b]). Let L be any subsequential limit: xₙₖ → L.

By continuity of f: f(L) = lim f(xₙₖ) = lim yₙₖ = y₀.

So L = f⁻¹(y₀) = x₀. Every subsequential limit equals x₀, so xₙ → x₀.

Therefore f⁻¹ is continuous. ∎

**Remark**: The inverse of a strictly monotone continuous function is automatically continuous—no need to check separately!

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Functions are wilder than expected |
| 5.1 Definition | ε-δ, sequences, function limits, algebra |
| 5.2 Limits of Functions | When limits preserve continuity; power series |
| 5.3 Functions on Intervals | IVT, EVT, uniform continuity, inverses |

## Key Theorems

1. **Sequential characterization**: f continuous at a ⟺ (xₙ → a ⟹ f(xₙ) → f(a))
2. **Algebra**: Sums, products, quotients, compositions of continuous functions are continuous
3. **Power series continuous**: via Tannery's theorem
4. **Abel's theorem**: Continuity at boundary when series converges
5. **IVT**: Continuous image of interval is interval
6. **EVT**: Continuous on [a,b] ⟹ bounded and attains bounds
7. **Uniform continuity**: Continuous on [a,b] ⟹ uniformly continuous
8. **Continuous extension**: Uniformly continuous on (a,b) extends to [a,b]
9. **Monotone inverses**: Strictly monotone + continuous ⟹ continuous inverse

## Exercises (Selected)

### Section 5.1
- Prove f(x) = x sin(1/x) (with f(0) = 0) is continuous at 0
- Show Dirichlet's function is discontinuous everywhere
- Classify discontinuities of f(x) = ⌊x⌋ (floor function)
- If f and g are continuous and f = g on a dense set, prove f = g everywhere

### Section 5.2
- Show fₙ(x) = x/(1 + nx²) converges pointwise to a discontinuous limit
- Use Abel's theorem to evaluate Σ(-1)ⁿ/(2n+1) = π/4 (assuming arctan series)
- If Σaₙxⁿ = 0 for all x in (-r, r), prove aₙ = 0 for all n

### Section 5.3
- Prove every polynomial of odd degree has a real root
- Show f(x) = x + sin(x) has a unique fixed point
- Give an example of a continuous function on (0,1) that is not uniformly continuous
- Prove f(x) = √x is uniformly continuous on [0, ∞)
- If f is continuous and strictly increasing on [a,b], prove f⁻¹ is strictly increasing

## Dependencies

**Requires from earlier chapters**:
- Completeness of ℝ, sup/inf (Chapter 1)
- Sequences, Bolzano-Weierstrass, Cauchy sequences (Chapter 2)
- Series, radius of convergence, Tannery's theorem (Chapters 3-4)

**Sets up for later chapters**:
- Chapter 6: EVT → Rolle → MVT; Inverse function derivative
- Chapter 7: Uniform continuity → continuous functions are integrable
- Chapter 10: Full treatment of uniform convergence in function spaces
