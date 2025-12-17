# Chapter 3: Detecting Convergence

## Overview

In Chapter 2, proving convergence and computing the limit were often the same act: limit laws gave both existence and value. But many sequences resist explicit computation. This chapter develops tools that detect convergence from the sequence itself — without knowing the limit. The capstone: all these tools are secretly equivalent, different faces of completeness.

**The arc:**
> Series tests (comparison in disguise) → Subsequences → Cauchy criterion → Contractions → The unity of completeness

---

## Historical Prelude (Unnumbered)

### The Problem

Infinite series are dangerous. Grandi's series 1 − 1 + 1 − 1 + ··· can be "summed" to 0, 1, or 1/2 depending on how you group terms. Euler boldly computed Σ1/n² = π²/6 using infinite product manipulations that weren't justified. Sometimes he was right, sometimes wrong. Riemann showed that even convergent series can be rearranged to give *any* sum.

Which series can we trust? When are our manipulations valid?

### The Development

**Cauchy's Tests (1821)**

Cauchy's *Cours d'analyse* brought order to chaos. He defined convergence precisely (Chapter 2) and gave the first rigorous tests: comparison, ratio, root. These detect convergence without computing the sum.

Most remarkably, his "Cauchy criterion" said: if terms of a sequence get close to *each other*, convergence is guaranteed. You don't need to know what they're approaching.

**Absolute Convergence**

The key distinction emerged: a series Σaₙ is *absolutely convergent* if Σ|aₙ| converges. Such series behave well — you can rearrange terms, multiply series, manipulate freely. Euler's methods worked for absolutely convergent series.

*Conditionally convergent* series (convergent but not absolutely) are treacherous. The alternating harmonic series converges to ln(2), but rearrangements give any number you want.

**The Unity of Completeness**

Meanwhile, Bolzano (1817) proved bounded sequences have accumulation points. By century's end, mathematicians realized: Cauchy's criterion, Bolzano-Weierstrass, monotone convergence — all equivalent! Each captures completeness of ℝ differently.

### The Message

This chapter develops tools to detect convergence from the sequence itself. We'll prove tests that work without knowing the limit, and discover that all our existence theorems are secretly the same theorem — different views of completeness.

---

## 3.1 Series Tests

### The Master Technique: Comparison

For nonnegative series, the key insight is simple: convergence is equivalent to bounded partial sums (MCT!). So we compare to series we already understand.

### Absolute Convergence

**Definition**: A series Σaₙ *converges absolutely* if Σ|aₙ| converges. It *converges conditionally* if Σaₙ converges but Σ|aₙ| diverges.

**Theorem**: Absolute convergence implies convergence.

*Proof*: Note that 0 ≤ aₙ + |aₙ| ≤ 2|aₙ|.

If Σ|aₙ| converges, then Σ(aₙ + |aₙ|) converges by comparison.

Thus Σaₙ = Σ(aₙ + |aₙ|) − Σ|aₙ| converges (difference of convergent series). ∎

**Why absolute convergence matters**: Absolutely convergent series can be rearranged freely — any rearrangement converges to the same sum. Conditionally convergent series cannot: Riemann proved any conditionally convergent series can be rearranged to converge to any value (or diverge).

### The Comparison Test

**Theorem (Comparison Test)**: Suppose 0 ≤ aₙ ≤ bₙ for all n.
- If Σbₙ converges, then Σaₙ converges.
- If Σaₙ diverges, then Σbₙ diverges.

*Proof*: Let Aₙ = Σₖ₌₁ⁿ aₖ and Bₙ = Σₖ₌₁ⁿ bₖ. Then Aₙ ≤ Bₙ for all n.

If Σbₙ converges, then (Bₙ) is bounded, so (Aₙ) is bounded. Since aₙ ≥ 0, (Aₙ) is increasing. By MCT, Σaₙ converges.

The divergence statement is the contrapositive. ∎

**Example**: Σ1/n² converges.

*Proof*: For n ≥ 2: 1/n² < 1/n(n−1) = 1/(n−1) − 1/n.

So Σₙ₌₂^N 1/n² < Σₙ₌₂^N (1/(n−1) − 1/n) = 1 − 1/N < 1.

Partial sums bounded by 1 + 1 = 2 ⟹ converges. ∎

**Remark**: We've proved Σ1/n² converges but haven't computed its value! This is the paradigm of Chapter 3: existence without explicit computation. (The value is π²/6, first computed by Euler.)

**Example**: Σ1/n diverges (the harmonic series).

*Proof*: Group terms:

$$1 + \frac{1}{2} + \left(\frac{1}{3} + \frac{1}{4}\right) + \left(\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}\right) + \cdots$$

$$> 1 + \frac{1}{2} + \frac{2}{4} + \frac{4}{8} + \cdots = 1 + \frac{1}{2} + \frac{1}{2} + \frac{1}{2} + \cdots$$

Partial sums unbounded ⟹ diverges. ∎

### Limit Comparison

**Theorem (Limit Comparison Test)**: Suppose aₙ, bₙ > 0 and:

$$\lim_{n \to \infty} \frac{a_n}{b_n} = L$$

where 0 < L < ∞. Then Σaₙ converges if and only if Σbₙ converges.

*Proof*: Since aₙ/bₙ → L, for large n:

$$\frac{L}{2} < \frac{a_n}{b_n} < 2L$$

So (L/2)bₙ < aₙ < 2Lbₙ. Apply comparison. ∎

**Example**: Does Σ(n² + 1)/(n⁴ + 3n) converge?

Compare to 1/n²: 

$$\frac{(n^2+1)/(n^4+3n)}{1/n^2} = \frac{n^2(n^2+1)}{n^4+3n} = \frac{n^4+n^2}{n^4+3n} \to 1$$

Since Σ1/n² converges, so does Σ(n²+1)/(n⁴+3n). ∎

### Comparison with Geometric Series: Ratio and Root Tests

The geometric series Σrⁿ converges for |r| < 1 and diverges for |r| ≥ 1. The ratio and root tests detect when a series is "essentially geometric."

**Theorem (Ratio Test)**: Let aₙ > 0 and suppose:

$$L = \lim_{n \to \infty} \frac{a_{n+1}}{a_n}$$

exists (possibly infinite). Then:
- If L < 1, then Σaₙ converges.
- If L > 1, then Σaₙ diverges.
- If L = 1, the test is inconclusive.

*Proof of convergence*: Choose r with L < r < 1. For large n, aₙ₊₁/aₙ < r.

So aₙ₊₁ < raₙ < r²aₙ₋₁ < ··· < rⁿ⁻ᴺaₙ for n > N.

Thus aₙ < Crⁿ for some constant C. Comparison with geometric series gives absolute convergence, hence convergence.

*Proof of divergence*: If L > 1, then aₙ₊₁ > aₙ for large n, so aₙ ↛ 0. Series diverges.

*Inconclusive*: Σ1/n has ratio n/(n+1) → 1 and diverges. Σ1/n² has ratio n²/(n+1)² → 1 and converges. ∎

**Example**: Σn!/nⁿ converges.

$$\frac{a_{n+1}}{a_n} = \frac{(n+1)!/(n+1)^{n+1}}{n!/n^n} = \frac{n^n}{(n+1)^n} = \left(\frac{n}{n+1}\right)^n = \frac{1}{(1+1/n)^n} \to \frac{1}{e} < 1$$

∎

**Theorem (Root Test)**: Let:

$$L = \lim_{n \to \infty} |a_n|^{1/n}$$

(if it exists). Then:
- If L < 1, then Σaₙ converges absolutely.
- If L > 1, then Σaₙ diverges.
- If L = 1, the test is inconclusive.

*Proof*: If L < 1, choose r with L < r < 1. For large n, |aₙ|^{1/n} < r, so |aₙ| < rⁿ. Comparison with geometric series gives absolute convergence.

If L > 1, then |aₙ| > 1 for large n, so aₙ ↛ 0. Divergence. ∎

**Example**: Σ(n/(2n+1))ⁿ converges.

$$|a_n|^{1/n} = \frac{n}{2n+1} \to \frac{1}{2} < 1$$

∎

**Remark**: The root test is often stronger than the ratio test. When both limits exist and are finite, they're equal, but the root test limit may exist when the ratio test limit doesn't.

### The Alternating Series Test

For series with signs, comparison doesn't directly apply. But cancellation can help:

**Theorem (Leibniz)**: If (bₙ) is decreasing with bₙ → 0, then Σ(−1)ⁿ⁺¹bₙ converges.

Moreover, the partial sums satisfy: S₂ₙ is increasing, S₂ₙ₊₁ is decreasing, and the limit lies between any consecutive partial sums.

*Proof*: 

S₂ₙ₊₂ = S₂ₙ + (b₂ₙ₊₁ − b₂ₙ₊₂) ≥ S₂ₙ (since bₙ decreasing).

S₂ₙ₊₃ = S₂ₙ₊₁ − (b₂ₙ₊₂ − b₂ₙ₊₃) ≤ S₂ₙ₊₁.

Also S₂ₙ = S₂ₙ₊₁ − b₂ₙ₊₁ ≤ S₂ₙ₊₁, so every even partial sum is below every odd one.

By MCT, S₂ₙ → L₊ and S₂ₙ₊₁ → L₋ with L₊ ≤ L₋.

But S₂ₙ₊₁ − S₂ₙ = b₂ₙ₊₁ → 0, so L₊ = L₋. ∎

**Example**: The alternating harmonic series Σ(−1)ⁿ⁺¹/n converges.

Note: Σ1/n diverges, so this is conditionally convergent.

**Remark**: Unlike the other tests, the alternating series test uses MCT directly, not comparison.

---

## 3.2 Subsequences

### Subsequential Limits

**Definition**: A *subsequence* of (aₙ) is a sequence (aₙₖ) where n₁ < n₂ < n₃ < ···.

**Theorem**: If aₙ → L, then every subsequence aₙₖ → L.

*Proof*: Given ε > 0, choose N with n > N ⟹ |aₙ − L| < ε. For k large enough, nₖ > N, so |aₙₖ − L| < ε. ∎

**Contrapositive**: If two subsequences have different limits, the original sequence diverges.

**Example**: (−1)ⁿ diverges because the subsequences a₂ₖ = 1 and a₂ₖ₊₁ = −1 have different limits.

**Definition**: L is a *subsequential limit* (or *accumulation point*) of (aₙ) if some subsequence converges to L.

### Bolzano-Weierstrass Theorem

**Theorem (Bolzano-Weierstrass)**: Every bounded sequence has a convergent subsequence.

*Proof*: Let (aₙ) be bounded, say aₙ ∈ [A, B] for all n.

**Bisection construction**: Divide [A, B] in half. At least one half contains infinitely many terms. Call it I₁.

Divide I₁ in half. At least one half contains infinitely many terms. Call it I₂.

Continue: get nested intervals I₁ ⊃ I₂ ⊃ I₃ ⊃ ··· with |Iₖ| = (B−A)/2ᵏ, each containing infinitely many terms.

Pick n₁ with aₙ₁ ∈ I₁. Pick n₂ > n₁ with aₙ₂ ∈ I₂. Continue.

By nested intervals (completeness), ∩Iₖ = {L} for some L. Since aₙₖ ∈ Iₖ and |Iₖ| → 0, we have aₙₖ → L. ∎

**Remark**: This theorem fails in ℚ. The sequence 3, 3.1, 3.14, 3.141, 3.1415, ... (decimal approximations to π) is bounded in ℚ but has no rational subsequential limit.

### Limsup and Liminf

**Definition**: For a bounded sequence (aₙ):

$$\limsup_{n \to \infty} a_n = \lim_{n \to \infty} \sup_{k \geq n} a_k$$

$$\liminf_{n \to \infty} a_n = \lim_{n \to \infty} \inf_{k \geq n} a_k$$

**Why these exist**: Let sₙ = sup{aₖ : k ≥ n}. Then (sₙ) is decreasing (sup over smaller set) and bounded below. By MCT, sₙ → limsup. Similarly for liminf.

**Theorem**: For a bounded sequence (aₙ):
1. limsup aₙ = largest subsequential limit
2. liminf aₙ = smallest subsequential limit

*Proof of (1)*: Let L = limsup aₙ and sₙ = sup{aₖ : k ≥ n}.

**L is a subsequential limit**: For each n, there exists kₙ ≥ n with aₖₙ > sₙ − 1/n (by definition of sup). Since sₙ → L, we have aₖₙ → L.

**L is largest**: If aₙₘ → M, then aₙₘ ≤ sₙₘ, so M = lim aₙₘ ≤ lim sₙₘ = L. ∎

**Theorem**: aₙ → L if and only if limsup aₙ = liminf aₙ = L.

*Proof*: (⟹) If aₙ → L, then L is the only subsequential limit.

(⟸) If limsup = liminf = L, then:

$$\inf_{k \geq n} a_k \leq a_n \leq \sup_{k \geq n} a_k$$

Both bounds → L, so by squeeze, aₙ → L. ∎

### The Root Test Revisited

**Theorem (Root Test, Strong Form)**: Let L = limsup |aₙ|^{1/n}. Then:
- If L < 1, then Σaₙ converges absolutely.
- If L > 1, then Σaₙ diverges.

*Proof*: If L < 1, choose r with L < r < 1. By definition of limsup, |aₙ|^{1/n} < r for all sufficiently large n. So |aₙ| < rⁿ. Comparison with geometric series gives convergence.

If L > 1, then |aₙ|^{1/n} > 1 for infinitely many n (since L is a subsequential limit of |aₙ|^{1/n}). So |aₙ| > 1 infinitely often, meaning aₙ ↛ 0. Divergence. ∎

### Radius of Convergence

**Definition**: For a power series Σaₙxⁿ, the *radius of convergence* is:

$$R = \frac{1}{\limsup |a_n|^{1/n}}$$

with conventions 1/0 = ∞ and 1/∞ = 0.

**Theorem**: The power series Σaₙxⁿ:
- Converges absolutely for |x| < R
- Diverges for |x| > R

*Proof*: Apply the strong root test to Σaₙxⁿ. We have:

$$\limsup |a_n x^n|^{1/n} = |x| \limsup |a_n|^{1/n} = |x|/R$$

This is < 1 when |x| < R (convergence) and > 1 when |x| > R (divergence). ∎

**Remark**: At |x| = R, anything can happen — need case-by-case analysis.

---

## 3.3 Cauchy Sequences

### Motivation

We've seen:
- MCT: monotone + bounded ⟹ converges (limit = sup)
- BW: bounded ⟹ has convergent subsequence

But what if the sequence isn't monotone and we can't identify the limit or bound?

**Key observation**: In a convergent sequence, terms get close to *each other*:

$$|a_m - a_n| \leq |a_m - L| + |L - a_n| < \varepsilon/2 + \varepsilon/2 = \varepsilon$$

for large m, n. Can we reverse this?

### The Definition

**Definition**: A sequence (aₙ) is *Cauchy* if for every ε > 0, there exists N such that:

$$m, n > N \implies |a_m - a_n| < \varepsilon$$

**Remark**: This is an *intrinsic* condition — it refers only to the sequence itself, not to any external limit.

### Cauchy Sequences Converge

**Theorem (Cauchy Criterion)**: A sequence converges if and only if it is Cauchy.

*Proof*:

(⟹) Already shown above.

(⟸) Suppose (aₙ) is Cauchy.

**Step 1**: (aₙ) is bounded.

Take ε = 1. There exists N with m, n > N ⟹ |aₘ − aₙ| < 1.

So |aₙ| ≤ |aₙ − aₙ₊₁| + |aₙ₊₁| < 1 + |aₙ₊₁| for n > N.

Thus |aₙ| ≤ max(|a₁|, ..., |aₙ|, 1 + |aₙ₊₁|) for all n.

**Step 2**: By Bolzano-Weierstrass, (aₙ) has a convergent subsequence aₙₖ → L.

**Step 3**: aₙ → L.

Given ε > 0, choose N such that:
- m, n > N ⟹ |aₘ − aₙ| < ε/2 (Cauchy)
- nₖ > N ⟹ |aₙₖ − L| < ε/2 (subsequence converges)

For n > N, choose k with nₖ > N. Then:

$$|a_n - L| \leq |a_n - a_{n_k}| + |a_{n_k} - L| < \varepsilon/2 + \varepsilon/2 = \varepsilon$$

∎

### The Cauchy Criterion for Series

**Corollary**: Σaₙ converges if and only if for every ε > 0, there exists N such that:

$$m > n > N \implies |a_{n+1} + a_{n+2} + \cdots + a_m| < \varepsilon$$

*Proof*: Apply Cauchy criterion to partial sums. ∎

**Corollary**: If Σaₙ converges, then aₙ → 0.

*Proof*: Take m = n + 1 in the Cauchy criterion. ∎

**Warning**: The converse is false! aₙ = 1/n → 0, but Σ1/n diverges.

---

## 3.4 Contraction Mappings

### The Setup

Recall from Chapter 2: for a recursive sequence aₙ₊₁ = f(aₙ), if the sequence converges to L, then L = f(L). But *when* does it converge?

**Key insight**: If f "shrinks distances," convergence is guaranteed.

### The Contraction Mapping Theorem

**Definition**: A function f: I → I (where I is a closed interval) is a *contraction* if there exists c ∈ (0, 1) such that:

$$|f(x) - f(y)| \leq c|x - y| \quad \text{for all } x, y \in I$$

**Theorem (Contraction Mapping Theorem)**: If f: I → I is a contraction, then:
1. f has a unique fixed point L ∈ I (i.e., f(L) = L)
2. For any a₁ ∈ I, the sequence aₙ₊₁ = f(aₙ) converges to L
3. The convergence is geometric: |aₙ − L| ≤ cⁿ⁻¹|a₁ − L|

*Proof*:

**Existence**: Let a₁ ∈ I and aₙ₊₁ = f(aₙ). We show (aₙ) is Cauchy.

|aₙ₊₁ − aₙ| = |f(aₙ) − f(aₙ₋₁)| ≤ c|aₙ − aₙ₋₁| ≤ ··· ≤ cⁿ⁻¹|a₂ − a₁|

For m > n:

$$|a_m - a_n| \leq |a_m - a_{m-1}| + \cdots + |a_{n+1} - a_n|$$
$$\leq (c^{m-2} + \cdots + c^{n-1})|a_2 - a_1| = c^{n-1} \frac{1 - c^{m-n}}{1-c}|a_2 - a_1|$$
$$< \frac{c^{n-1}}{1-c}|a_2 - a_1| \to 0$$

So (aₙ) is Cauchy, hence converges to some L.

Since aₙ₊₁ = f(aₙ) and f is continuous (Lipschitz ⟹ continuous), L = f(L).

**Uniqueness**: If f(L) = L and f(M) = M, then:

$$|L - M| = |f(L) - f(M)| \leq c|L - M|$$

Since c < 1, this implies |L − M| = 0. ∎

### Connection to Derivative

**Theorem**: If f is differentiable on [a, b] with |f'(x)| ≤ c < 1 for all x, and f: [a,b] → [a,b], then f is a contraction.

*Proof*: By the Mean Value Theorem:

$$|f(x) - f(y)| = |f'(\xi)||x - y| \leq c|x - y|$$

∎

**Remark**: This connects to Chapter 6 — the contraction condition becomes a derivative condition.

### Applications

**Example**: Show that aₙ₊₁ = cos(aₙ) converges for any starting value a₁ ∈ [0, 1].

On [0, 1]: |cos'(x)| = |sin(x)| ≤ sin(1) ≈ 0.84 < 1.

Also cos: [0, 1] → [cos(1), 1] ⊂ [0, 1].

So cos is a contraction on [0, 1]. The sequence converges to the unique solution of x = cos(x). ∎

**Example**: Newton's method for √2.

xₙ₊₁ = (xₙ + 2/xₙ)/2 = f(xₙ).

On [1, 2]: f'(x) = (1 − 2/x²)/2. At x = √2, f'(√2) = 0.

For x ∈ [1, 2]: |f'(x)| = |1 − 2/x²|/2 ≤ 1/2 < 1.

So f is a contraction near √2, explaining the rapid convergence. ∎

**Preview**: In Chapter 6 (Newton's method) and Chapter 11 (Picard iteration for ODEs), contractions guarantee existence of solutions.

---

## 3.5 The Many Faces of Completeness

### The Equivalences

We have proved convergence theorems using completeness in different guises:
- **MCT** (Chapter 2): uses sup/inf
- **Bolzano-Weierstrass**: uses nested intervals
- **Cauchy criterion**: uses BW

These are all *equivalent* to completeness! Any one can be taken as the definition of ℝ.

**Theorem**: The following are equivalent for an ordered field F:
1. **(Completeness)** Every nonempty subset bounded above has a supremum
2. **(MCT)** Every monotone bounded sequence converges
3. **(Nested Intervals + Archimedean)** If [aₙ, bₙ] are nested with bₙ − aₙ → 0, then ∩[aₙ, bₙ] is a single point
4. **(Bolzano-Weierstrass)** Every bounded sequence has a convergent subsequence
5. **(Cauchy)** Every Cauchy sequence converges

### Proof of Equivalences

**(1) ⟹ (2)**: We proved this in Chapter 2. If (aₙ) is increasing and bounded, then sup{aₙ} exists and equals the limit.

**(2) ⟹ (3)**: The sequence (aₙ) is increasing and bounded above (by any bₘ). By MCT, aₙ → L. Similarly bₙ → M. Since aₙ ≤ bₙ, we have L ≤ M. Since bₙ − aₙ → 0, L = M. So ∩[aₙ, bₙ] = {L}.

**(3) ⟹ (4)**: This is exactly the proof of Bolzano-Weierstrass by bisection.

**(4) ⟹ (5)**: This is exactly our proof that Cauchy sequences converge.

**(5) ⟹ (1)**: Let S be nonempty and bounded above. We construct a Cauchy sequence converging to sup S.

Since S is nonempty, pick a₁ ∈ S. Since S is bounded above, pick b₁ an upper bound.

Bisect [a₁, b₁]. If the midpoint is an upper bound for S, let b₂ = midpoint, a₂ = a₁. Otherwise, there's an element of S greater than midpoint; let a₂ be such an element, b₂ = b₁.

Continue: get (aₙ) ∈ S with aₙ increasing, (bₙ) upper bounds with bₙ decreasing, and bₙ − aₙ → 0.

Both sequences are Cauchy (check!). By (5), aₙ → L.

**Claim**: L = sup S.

L is an upper bound: if x > L, then x > bₙ for large n (since bₙ → L), and bₙ is an upper bound.

L is least: if M < L, then M < aₙ for large n, but aₙ ∈ S, so M is not an upper bound. ∎

### The Significance

**Philosophical point**: Completeness isn't just "sup exists." It's a property that manifests in many equivalent ways:
- Algebraically (sup)
- Sequentially (MCT, BW, Cauchy)
- Geometrically (nested intervals)

Each form is useful in different contexts. The real numbers are *uniquely* characterized by being a complete ordered field.

**Historical point**: Cauchy sequences provide a *construction* of ℝ from ℚ. Start with ℚ, form equivalence classes of Cauchy sequences, define arithmetic, verify completeness. This is how we *know* ℝ exists!

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | The danger of divergent series; the search for rigor |
| 3.1 Series Tests | Comparison (direct and with geometric), alternating |
| 3.2 Subsequences | Bolzano-Weierstrass, limsup/liminf |
| 3.3 Cauchy Sequences | Intrinsic criterion for convergence |
| 3.4 Contraction Mappings | Fixed points via shrinking |
| 3.5 Many Faces | All equivalent to completeness |

## Key Theorems

1. **Absolute convergence ⟹ convergence**
2. **Comparison test**: 0 ≤ aₙ ≤ bₙ and Σbₙ converges ⟹ Σaₙ converges
3. **Ratio test**: |aₙ₊₁/aₙ| → L < 1 ⟹ convergence
4. **Root test**: |aₙ|^{1/n} → L < 1 ⟹ convergence
5. **Alternating series test**: bₙ ↓ 0 ⟹ Σ(−1)ⁿbₙ converges
6. **Bolzano-Weierstrass**: bounded ⟹ has convergent subsequence
7. **Cauchy criterion**: Cauchy ⟺ convergent
8. **Contraction mapping theorem**: contractions have unique fixed points
9. **Equivalence**: MCT ⟺ BW ⟺ Cauchy ⟺ completeness

## Exercises (Selected)

### Section 3.1
- Prove Σ1/(n log n) diverges (hint: creative grouping)
- Test: Σn²/2ⁿ, Σn!/nⁿ, Σ(2n)!/(n!)²
- Show ratio test is inconclusive for all p-series
- **(Extended)** Prove Cauchy condensation: for decreasing aₙ ≥ 0, Σaₙ converges ⟺ Σ2ⁿa_{2ⁿ} converges
- **(Extended)** Use Cauchy condensation to prove: Σ1/nᵖ converges ⟺ p > 1

### Section 3.2
- Find all subsequential limits of ((−1)ⁿ(1 + 1/n))
- Prove limsup(aₙ + bₙ) ≤ limsup aₙ + limsup bₙ (when does equality hold?)
- Find radius of convergence: Σnⁿxⁿ/n!, Σxⁿ/(n·2ⁿ)

### Section 3.3
- Prove directly (without BW) that Cauchy sequences are bounded
- Show (sin n) is not Cauchy
- Prove: if (aₙ) is Cauchy and has a subsequence converging to L, then aₙ → L

### Section 3.4
- Show f(x) = (x + 2/x)/2 is a contraction on [1, 2]
- Prove: if f is a contraction with constant c, then |aₙ − L| ≤ cⁿ/(1−c)|a₂ − a₁|
- Find the fixed point of f(x) = (x² + 1)/3 on [0, 1]

### Section 3.5
- Prove (3) ⟹ (4) in detail (the bisection argument)
- Show the Archimedean property is needed: give an example of a non-Archimedean ordered field where nested intervals can have empty intersection
- Outline the construction of ℝ from ℚ via Cauchy sequences

## Dependencies

**Requires from earlier chapters**:
- Chapter 1: Completeness, sup/inf, Archimedean property
- Chapter 2: Convergence definition, limit laws, MCT, geometric series

**Sets up for later chapters**:
- Chapter 4: Tannery/dominated convergence
- Chapter 5: Sequential characterization of continuity, BW for compactness
- Chapter 6: Contraction ↔ |f'| < 1, Newton's method
- Chapter 11: Picard iteration via contraction mapping
