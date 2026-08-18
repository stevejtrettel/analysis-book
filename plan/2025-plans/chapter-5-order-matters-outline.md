# Chapter 5: Commutativity and Limits

## Overview

Finite sums commute: a + b + c = c + a + b regardless of order. Finite limits have no "order" to worry about. But infinite sums and limits are different. Rearranging an infinite series can change its sum — or make it diverge. Swapping the order of two limits, or interchanging a limit with a sum, can produce different answers.

This chapter maps out when these operations are safe. The recurring theme: absolute convergence and domination conditions tame the wildness of infinity.

**The arc:**
> Rearrangements within one series → Iterated limits → Double sums and traversal methods → Limits interacting with sums

---

## Historical Prelude (Unnumbered)

### The Problem

Early analysts manipulated infinite series freely, swapping order of summation and interchanging limits at will. Sometimes this produced correct results. Sometimes it produced nonsense.

Euler computed Σ1/n² = π²/6 through manipulations that, strictly speaking, weren't justified. The answer was right! But similar techniques elsewhere gave contradictions. Which manipulations could be trusted?

### The Development

**Riemann (1854)** proved the most shocking result: a conditionally convergent series can be rearranged to converge to *any* real number — or to diverge. The alternating harmonic series 1 − 1/2 + 1/3 − 1/4 + ⋯ can be rearranged to equal 17, or π, or −∞.

**Cauchy** identified absolute convergence as the key condition for safe rearrangement.

**Tannery (1886)** gave precise conditions for interchanging a limit with an infinite sum: domination by a convergent series.

**Mertens** proved that multiplying series (via the Cauchy product) works when at least one factor converges absolutely.

### The Message

This chapter is about discipline. Infinite operations don't always commute. We develop precise conditions that separate safe manipulations from dangerous ones. The payoff: powerful techniques for computing with series, and a foundation for defining the exponential function in Chapter 6.

---

## 5.1 Rearrangements

### The Question

If Σaₙ converges, and we sum the terms in a different order, do we get the same answer?

### Definition

**Definition**: A *rearrangement* of Σaₙ is a series Σa_{π(n)} where π: ℕ → ℕ is a bijection.

The same terms, summed in a different order.

### Absolute Convergence Is Safe

**Theorem**: If Σaₙ converges absolutely, then every rearrangement converges to the same sum.

*Proof idea*: Let S = Σaₙ and let Tₘ be the partial sums of a rearrangement.

Given ε > 0, choose N with Σ_{n>N} |aₙ| < ε.

Choose M large enough that {1, 2, ..., N} ⊆ {π(1), π(2), ..., π(M)}.

For m > M, the partial sum Tₘ contains all of a₁, ..., aₙ plus some terms with index > N. The difference |Tₘ − Sₙ| is bounded by the tail Σ_{n>N} |aₙ| < ε.

Since Sₙ → S and ε is arbitrary, Tₘ → S.

### Conditional Convergence Is Dangerous

**Theorem (Riemann Rearrangement)**: If Σaₙ converges conditionally, then for any L ∈ ℝ ∪ {±∞}, there exists a rearrangement converging to L.

*Key observation*: Let (pₙ) be the positive terms of (aₙ) in order, and (qₙ) the absolute values of the negative terms in order. Then:
- Σpₙ = +∞ (else Σaₙ would converge absolutely)
- Σqₙ = +∞ (same reason)
- pₙ → 0 and qₙ → 0 (since aₙ → 0)

*Proof idea for finite L*:
1. Add positive terms until partial sum exceeds L
2. Subtract negative terms until partial sum falls below L
3. Repeat

Since pₙ → 0 and qₙ → 0, the overshoots shrink. The partial sums oscillate around L with decreasing amplitude, converging to L.

*For L = +∞*: Add positive terms to exceed 1, then one negative, then positives to exceed 2, then one negative, etc.

### Example: Rearranging the Alternating Harmonic Series

The alternating harmonic series: 1 − 1/2 + 1/3 − 1/4 + ⋯ = ln(2).

**Rearrangement to (3/2)ln(2)**: Take two positive terms, then one negative:
$$(1 + \frac{1}{3}) - \frac{1}{2} + (\frac{1}{5} + \frac{1}{7}) - \frac{1}{4} + (\frac{1}{9} + \frac{1}{11}) - \frac{1}{6} + \cdots$$

This converges to (3/2)ln(2) ≈ 1.04 instead of ln(2) ≈ 0.69.

*Proof outline*: After 3n terms, we've used positive terms up to 1/(2n−1) and negative terms up to −1/n. Careful analysis using properties of harmonic partial sums shows the limit is (3/2)ln(2).

### The Moral

**Absolute convergence** = robust. Order doesn't matter; the sum is well-defined.

**Conditional convergence** = fragile. The "sum" depends on the order; it's not an intrinsic property of the set of terms.

---

## 5.2 Iterated Limits

### Double Sequences

**Definition**: A *double sequence* is a function a: ℕ × ℕ → ℝ. We write a_{mn} for a(m, n).

Think of it as an infinite grid of numbers.

### Iterated Limits

**Definition**: The *iterated limits* are:
- lim_{m→∞} lim_{n→∞} a_{mn}: first let n → ∞ for each fixed m, then let m → ∞
- lim_{n→∞} lim_{m→∞} a_{mn}: the other order

### The Order Can Matter

**Example**: a_{mn} = m/(m + n).

- Fix m, let n → ∞: a_{mn} → 0. Then lim_m 0 = 0.
- Fix n, let m → ∞: a_{mn} → 1. Then lim_n 1 = 1.

The iterated limits are 0 and 1 — different!

**Example**: a_{mn} = (m − n)/(m + n).

- lim_n (lim_m a_{mn}) = lim_n 1 = 1
- lim_m (lim_n a_{mn}) = lim_m (−1) = −1

**Example**: a_{mn} = mn/(m² + n²).

- lim_n (lim_m a_{mn}) = lim_n 0 = 0
- lim_m (lim_n a_{mn}) = lim_m 0 = 0

Both iterated limits are 0. But does the "double limit" exist?

### The Double Limit

**Definition**: We say lim_{m,n→∞} a_{mn} = L if for every ε > 0, there exists N such that:
$$m, n > N \implies |a_{mn} - L| < \varepsilon$$

This is convergence along *all* paths to infinity, not just rows-then-columns or columns-then-rows.

**Example (continued)**: For a_{mn} = mn/(m² + n²), along the diagonal m = n:
$$a_{nn} = \frac{n^2}{2n^2} = \frac{1}{2}$$

The diagonal doesn't approach 0. So the double limit doesn't exist, even though both iterated limits are 0.

### When Iterated Limits Agree

**Theorem**: If lim_{m,n→∞} a_{mn} = L exists, and for each m the limit lim_n a_{mn} = bₘ exists, then lim_m bₘ = L.

In particular: if the double limit exists and both iterated limits exist, they must be equal.

*Proof idea*: Given ε > 0, choose N so that m, n > N implies |a_{mn} − L| < ε/2.

For fixed m > N, taking n → ∞:
$$|b_m - L| = |\lim_n a_{mn} - L| = \lim_n |a_{mn} - L| \leq \varepsilon/2 < \varepsilon$$

So bₘ → L.

**Warning**: The converse is false! Equal iterated limits don't guarantee the double limit exists (as the diagonal example shows).

### Sufficient Conditions

**Theorem**: If a_{mn} → L as m + n → ∞, then the double limit exists and equals L, and both iterated limits (if they exist) equal L.

**Theorem**: If the double limit exists and one iterated limit exists, then the other iterated limit exists and they're all equal.

---

## 5.3 Double Sums

### Double Series

**Definition**: Given a double sequence (a_{mn}), the *double series* Σ_m Σ_n a_{mn} means:
$$\lim_{M→∞} \lim_{N→∞} \sum_{m=1}^{M} \sum_{n=1}^{N} a_{mn}$$
if this iterated limit exists.

### Order Can Matter

**Example**: Let a_{mn} be:
- Row 1: 1, −1, 0, 0, 0, ...
- Row 2: 0, 1, −1, 0, 0, ...
- Row 3: 0, 0, 1, −1, 0, ...
- etc.

Sum by rows: each row sums to 0, so Σ_m (Σ_n a_{mn}) = 0.

Sum by columns: column 1 sums to 1, others to 0, so Σ_n (Σ_m a_{mn}) = 1.

The order of summation matters!

### Absolute Convergence Over the Grid

**Definition**: The double series *converges absolutely* if:
$$\sum_{m=1}^{\infty} \sum_{n=1}^{\infty} |a_{mn}| < \infty$$

**Theorem**: If Σ_{m,n} |a_{mn}| < ∞, then:
1. Both iterated sums converge
2. They are equal
3. In fact, *any* ordering of the terms gives the same sum

*Proof idea*: Absolute convergence provides "room to spare." Partial sums of any arrangement are bounded by the total absolute sum. The triangle inequality controls errors.

### Summation Techniques

Under absolute convergence, we're free to traverse the grid in any order. Different traversals are useful for different problems.

**Rows**: Σ_m (Σ_n a_{mn}) — sum each row, then sum the row sums.

**Columns**: Σ_n (Σ_m a_{mn}) — sum each column, then sum the column sums.

**Expanding squares**: S_N = Σ_{m,n ≤ N} a_{mn}, then take N → ∞.

**Anti-diagonals**: Group by m + n = k. This gives the Cauchy product.

### The Cauchy Product

When we multiply two series, we're summing over a 2D grid.

**Definition**: The *Cauchy product* of Σaₙ and Σbₙ is Σcₙ where:
$$c_n = \sum_{k=0}^{n} a_k b_{n-k} = a_0 b_n + a_1 b_{n-1} + \cdots + a_n b_0$$

**Geometric interpretation**: We're summing the grid (aⱼbₖ) along anti-diagonals (j + k = n).

**Theorem**: If Σaₙ and Σbₙ both converge absolutely, then their Cauchy product converges absolutely to (Σaₙ)(Σbₙ).

*Proof idea*: The partial sum Σ_{n=0}^{N} |cₙ| sums over a triangle, which is contained in the square {(j,k) : j, k ≤ N}. Bound by (Σ|aⱼ|)(Σ|bₖ|) < ∞.

For the value: the triangle and square sums both approach (Σaₙ)(Σbₙ).

**Theorem (Mertens)**: If Σaₙ converges absolutely and Σbₙ converges (possibly conditionally), then the Cauchy product converges to (Σaₙ)(Σbₙ).

*Proof*: More delicate; uses summation by parts.

### Application: Squaring the Geometric Series

**Claim**: For |x| < 1:
$$\left(\sum_{n=0}^{\infty} x^n\right)^2 = \sum_{n=0}^{\infty} (n+1)x^n$$

*Proof*: Take aₙ = bₙ = xⁿ. Both converge absolutely for |x| < 1.

The Cauchy product has:
$$c_n = \sum_{k=0}^{n} x^k \cdot x^{n-k} = \sum_{k=0}^{n} x^n = (n+1)x^n$$

By the theorem:
$$\left(\frac{1}{1-x}\right)^2 = \sum_{n=0}^{\infty} (n+1)x^n = \frac{1}{(1-x)^2}$$

This can be verified independently by differentiating Σxⁿ = 1/(1−x).

### Application: A Remarkable Series Identity

**Claim**: 
$$\left(\sum_{n=0}^{\infty} \frac{x^n}{n!}\right) \cdot \left(\sum_{n=0}^{\infty} \frac{y^n}{n!}\right) = \sum_{n=0}^{\infty} \frac{(x+y)^n}{n!}$$

*Proof*: Both series converge absolutely for all x, y ∈ ℝ (ratio test).

The Cauchy product has:
$$c_n = \sum_{k=0}^{n} \frac{x^k}{k!} \cdot \frac{y^{n-k}}{(n-k)!} = \frac{1}{n!} \sum_{k=0}^{n} \binom{n}{k} x^k y^{n-k} = \frac{(x+y)^n}{n!}$$

using the binomial theorem.

**Remark**: This series has a remarkable property: the product of the series at x and y equals the series at x + y. This "functional equation" is the defining property of the exponential function. We'll pursue this in Chapter 6.

---

## 5.4 Limits and Sums (Tannery's Theorem)

### The Problem

When can we interchange a limit and an infinite sum?
$$\lim_{n→∞} \sum_{k=0}^{\infty} a_k(n) \stackrel{?}{=} \sum_{k=0}^{\infty} \lim_{n→∞} a_k(n)$$

### The Danger

**Example**: Let a_k(n) = 1/n if k ≤ n, and 0 otherwise.

- For each k: lim_n a_k(n) = 0.
- So Σ_k (lim_n a_k(n)) = 0.

But:
- Σ_k a_k(n) = n · (1/n) = 1 for all n.
- So lim_n (Σ_k a_k(n)) = 1.

The limit and sum don't commute!

**What went wrong?**: The terms a_k(n) are small (→ 0), but there are many of them (n terms), and n · (1/n) = 1 doesn't vanish.

### Tannery's Theorem

**Theorem (Tannery / Dominated Convergence for Series)**: Suppose:
1. For each k, lim_n a_k(n) = L_k exists
2. There exist Mₖ ≥ 0 with |a_k(n)| ≤ Mₖ for all n
3. ΣMₖ < ∞

Then:
$$\lim_{n→∞} \sum_{k=0}^{\infty} a_k(n) = \sum_{k=0}^{\infty} L_k$$

*Proof outline*: Let S(n) = Σ_k a_k(n) and S = Σ_k L_k.

Given ε > 0, choose K such that Σ_{k>K} Mₖ < ε/3.

For n large enough, |a_k(n) − L_k| < ε/(3(K+1)) for each k ≤ K (finitely many limits).

Then:
$$|S(n) - S| \leq \underbrace{\sum_{k=0}^{K} |a_k(n) - L_k|}_{< \varepsilon/3} + \underbrace{\sum_{k>K} |a_k(n)|}_{< \varepsilon/3} + \underbrace{\sum_{k>K} |L_k|}_{< \varepsilon/3}$$

The last two use |a_k(n)| ≤ Mₖ and |L_k| ≤ Mₖ.

**Key insight**: The dominating sequence Mₖ provides uniform control over all n.

**Why the counterexample fails**: There's no dominating sequence. The terms 1/n for k ≤ n can't be bounded by Mₖ independent of n with ΣMₖ < ∞.

### The Big Application: Connecting Two Definitions of e

**Theorem**: For all x ∈ ℝ:
$$\lim_{n→∞} \left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$$

*Proof*: By the binomial theorem:
$$\left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{n} \binom{n}{k} \frac{x^k}{n^k}$$

Define a_k(n) for all k by:
$$a_k(n) = \begin{cases} \binom{n}{k} \frac{x^k}{n^k} = \frac{x^k}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k} & k \leq n \\ 0 & k > n \end{cases}$$

**Step 1**: For each fixed k, lim_n a_k(n) = xᵏ/k!.

The factor n(n−1)⋯(n−k+1)/nᵏ = 1·(1−1/n)·(1−2/n)⋯(1−(k−1)/n) → 1.

**Step 2**: Find a dominating sequence.

For k ≤ n:
$$|a_k(n)| = \frac{|x|^k}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k} \leq \frac{|x|^k}{k!}$$

Let Mₖ = |x|ᵏ/k!. Then ΣMₖ = e^{|x|} < ∞.

**Step 3**: Apply Tannery.

$$\lim_{n→∞} \left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$$

**Corollary**: Setting x = 1:
$$e = \lim_{n→∞} \left(1 + \frac{1}{n}\right)^n = \sum_{k=0}^{\infty} \frac{1}{k!}$$

The compound interest limit from Chapter 2 equals the series!

**Remark**: Combined with §5.3, we now know this series satisfies (Σxⁿ/n!)(Σyⁿ/n!) = Σ(x+y)ⁿ/n!. In Chapter 6, we define exp(x) = Σxⁿ/n! and derive all properties of the exponential function.

---

## Chapter Summary

| Section | Question | Condition for Safety |
|---------|----------|---------------------|
| 5.1 Rearrangements | Can we reorder terms in a series? | Absolute convergence |
| 5.2 Iterated Limits | Can we swap order of two limits? | Double limit exists |
| 5.3 Double Sums | Can we swap order of two sums? | Absolute convergence over grid |
| 5.4 Tannery | Can we swap a limit and a sum? | Domination by convergent series |

## Key Theorems

1. **Rearrangement (absolute)**: Same sum regardless of order
2. **Riemann Rearrangement**: Conditionally convergent series can be rearranged to any value
3. **Iterated limits**: If double limit exists and iterated limits exist, they agree
4. **Double sums**: Absolute convergence ⟹ can swap order
5. **Cauchy product**: Absolute convergence of both factors ⟹ product converges absolutely to product of sums
6. **Mertens**: One absolute + one convergent ⟹ Cauchy product converges
7. **Tannery**: Dominated by convergent series ⟹ limit and sum commute
8. **(1 + x/n)ⁿ = Σxᵏ/k!**: The compound interest limit equals the exponential series

---

## Exercises (Selected)

### Section 5.1
- Construct a rearrangement of 1 − 1/2 + 1/3 − 1/4 + ⋯ that converges to 0
- Construct a rearrangement that diverges to +∞
- Prove: if Σaₙ converges absolutely, then Σaₙ² converges
- Show that Σ(−1)ⁿ/√n converges conditionally; describe how to rearrange it to converge to 100
- ★ Prove the Riemann rearrangement theorem in detail

### Section 5.2
- Find both iterated limits for a_{mn} = n/(m + n)
- Find both iterated limits for a_{mn} = (−1)^{m+n}mn/(m² + n²)
- Give an example where both iterated limits are 0 but the double limit doesn't exist
- Prove: if a_{mn} → L as m + n → ∞, then the double limit is L
- Give an example where lim_m lim_n a_{mn} exists but lim_n lim_m a_{mn} doesn't

### Section 5.3
- Verify (Σxⁿ)² = Σ(n+1)xⁿ by differentiating 1/(1−x)
- Compute the Cauchy product of Σxⁿ/n! with itself; verify it equals Σ(2x)ⁿ/n!
- Give an example where the Cauchy product diverges even though both series converge
- Prove: if both series converge absolutely, the Cauchy product converges absolutely
- ★ Prove Mertens' theorem

### Section 5.4
- Verify the domination bound in the (1+x/n)ⁿ proof
- Why does Tannery fail in the counterexample a_k(n) = 1/n for k ≤ n?
- Apply Tannery to prove: lim_n Σ_{k=1}^{n} k/n² · 1/(1 + k/n) = ∫₀¹ 1/(1+x) dx (if you know integrals)
- Prove directly that e = Σ1/n! lies between 2 and 3
- ★ Use Tannery to prove: lim_n (1 + x/n + y/n²)ⁿ = eˣ for any fixed y

---

## Dependencies

**Requires from earlier chapters**:
- Chapter 2: Convergence, series, geometric series, e = lim(1+1/n)ⁿ
- Chapter 3: Cauchy sequences, absolute convergence
- Chapter 4: Comparison test, absolute vs conditional convergence

**Sets up for later chapters**:
- Chapter 6: exp(x) = Σxⁿ/n! defined; functional equation proven; all properties derived
- Chapter 7: Interchange theorems for integrals (analogous to Tannery)
- Chapter 8: Uniform convergence (the function-space version of these ideas)