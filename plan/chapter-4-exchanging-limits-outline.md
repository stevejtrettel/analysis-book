# Chapter 4: Exchanging Limits

## Overview

When can we swap the order of two limiting processes? This chapter confronts a fundamental danger in analysis: changing the order of limits, sums, or rearranging terms can change the answer. We develop conditions that guarantee these operations are safe.

**The arc:**
> Iterated limits can differ → Double sums need absolute convergence → Tannery tames limit-sum exchange → Rearrangements are treacherous

---

## Historical Prelude (Unnumbered)

### The Problem

Early analysts freely manipulated infinite series: swapping order of summation, interchanging limits, rearranging terms. Sometimes this worked beautifully. Sometimes it produced nonsense.

Euler computed Σ1/n² = π²/6 by manipulating infinite products and sums without justification. The answer was correct! But similar techniques applied elsewhere gave contradictions. When could you trust these manipulations?

### The Development

**Cauchy's Caution (1821)**

Cauchy recognized the danger. He showed that rearranging a series could change its sum — or make a convergent series diverge. His response: absolute convergence. If Σ|aₙ| converges, you can rearrange freely.

**Riemann's Shocking Theorem (1854)**

Riemann proved the full horror: any conditionally convergent series can be rearranged to converge to *any* real number — or to diverge to ±∞. The alternating harmonic series 1 - 1/2 + 1/3 - 1/4 + ... can be rearranged to equal 17, or π, or -∞.

**Tannery's Theorem (1886)**

When can you exchange a limit and an infinite sum? Tannery gave a clean condition: domination by a convergent series. This finally justified manipulations that analysts had used for decades.

### The Message

This chapter is about discipline. Infinite processes don't always commute. We develop precise conditions that separate safe manipulations from dangerous ones.

---

## 4.1 Iterated Limits

### Double Sequences

**Definition**: A *double sequence* is a function a: ℕ × ℕ → ℝ. We write a_{mn} for a(m,n).

Think of it as an infinite grid of numbers.

### The Order Can Matter

**Example**: Let a_{mn} = m/(m+n).

- Fix m, let n → ∞: a_{mn} → 0. Then let m → ∞: lim_m (lim_n a_{mn}) = lim_m 0 = 0.
- Fix n, let m → ∞: a_{mn} → 1. Then let n → ∞: lim_n (lim_m a_{mn}) = lim_n 1 = 1.

The iterated limits exist but are different!

**Example**: Let a_{mn} = (m - n)/(m + n).

- lim_n (lim_m a_{mn}) = lim_n 1 = 1
- lim_m (lim_n a_{mn}) = lim_m (-1) = -1

**Example**: Let a_{mn} = m·n/(m² + n²).

- lim_n (lim_m a_{mn}) = lim_n 0 = 0
- lim_m (lim_n a_{mn}) = lim_m 0 = 0

Here both iterated limits equal 0... but does the "double limit" exist?

### The Double Limit

**Definition**: We say lim_{m,n→∞} a_{mn} = L if for every ε > 0, there exists N such that:

$$m, n > N \implies |a_{mn} - L| < \varepsilon$$

This is convergence along *all* paths to infinity, not just rows then columns or columns then rows.

**Example** (continued): For a_{mn} = mn/(m² + n²), along the diagonal m = n:

$$a_{nn} = \frac{n^2}{2n^2} = \frac{1}{2}$$

So the diagonal doesn't approach 0. The double limit doesn't exist, even though both iterated limits are 0.

### When Iterated Limits Agree

**Theorem**: If lim_{m,n→∞} a_{mn} = L exists, and for each m the limit lim_n a_{mn} = b_m exists, then lim_m b_m = L.

In particular: if the double limit exists and both iterated limits exist, they must be equal.

*Proof*: Given ε > 0, choose N so that m, n > N ⟹ |a_{mn} - L| < ε/2.

For fixed m > N, taking n → ∞:

$$|b_m - L| = |\lim_n a_{mn} - L| = \lim_n |a_{mn} - L| \leq \varepsilon/2 < \varepsilon$$

So b_m → L. ∎

**Remark**: The converse is false! Equal iterated limits don't guarantee the double limit exists (as the diagonal example shows).

---

## 4.2 Double Sums and the Cauchy Product

### Double Series

**Definition**: Given a double sequence (a_{mn}), the *double series* is:

$$\sum_{m=1}^{\infty} \sum_{n=1}^{\infty} a_{mn} = \lim_{M \to \infty} \lim_{N \to \infty} \sum_{m=1}^{M} \sum_{n=1}^{N} a_{mn}$$

if this iterated limit exists.

**Question**: Does the order matter? When does Σ_m Σ_n a_{mn} = Σ_n Σ_m a_{mn}?

### Absolute Convergence Saves Us

**Definition**: The double series Σ_{m,n} a_{mn} *converges absolutely* if:

$$\sum_{m=1}^{\infty} \sum_{n=1}^{\infty} |a_{mn}| < \infty$$

**Theorem**: If Σ_{m,n} |a_{mn}| < ∞, then:
1. Both iterated sums Σ_m Σ_n a_{mn} and Σ_n Σ_m a_{mn} converge
2. They are equal
3. In fact, any ordering of the terms gives the same sum

*Proof sketch*: Absolute convergence means we have "room to spare" — partial sums of any arrangement are bounded by the total absolute sum. The triangle inequality controls errors. ∎

**Example** (where order matters): Consider a_{mn} where:
- Row 1: a_{1n} = 1, -1, 0, 0, 0, ...
- Row 2: a_{2n} = 0, 1, -1, 0, 0, ...
- Row 3: a_{3n} = 0, 0, 1, -1, 0, ...
- etc.

Sum by rows: each row sums to 0, so Σ_m (Σ_n a_{mn}) = 0.

Sum by columns: column 1 sums to 1, others to 0, so Σ_n (Σ_m a_{mn}) = 1.

This is *not* absolutely convergent.

### The Cauchy Product

When we multiply two series, we're really summing over a 2D grid.

**Definition**: The *Cauchy product* of Σaₙ and Σbₙ is Σcₙ where:

$$c_n = \sum_{k=0}^{n} a_k b_{n-k} = a_0 b_n + a_1 b_{n-1} + \cdots + a_n b_0$$

**Geometric interpretation**: We're summing the grid (aⱼbₖ) along anti-diagonals (j + k = n).

**Theorem**: If Σaₙ and Σbₙ both converge absolutely, then their Cauchy product converges absolutely to (Σaₙ)(Σbₙ).

*Proof*: Let A = Σ|aₙ| and B = Σ|bₙ|.

$$\sum_{n=0}^{N} |c_n| \leq \sum_{n=0}^{N} \sum_{k=0}^{n} |a_k||b_{n-k}|$$

This is a sum over the triangle {(j,k) : j + k ≤ N}, which is contained in the square {(j,k) : j, k ≤ N}.

$$\leq \sum_{j=0}^{N} \sum_{k=0}^{N} |a_j||b_k| = \left(\sum_{j=0}^{N}|a_j|\right)\left(\sum_{k=0}^{N}|b_k|\right) \leq AB$$

So Σ|cₙ| converges.

For the value: the triangle and square sums both approach (Σaₙ)(Σbₙ) as N → ∞, and the triangle sum equals Σcₙ. ∎

**Theorem (Mertens)**: If Σaₙ converges absolutely and Σbₙ converges (possibly conditionally), then the Cauchy product converges to (Σaₙ)(Σbₙ).

*Proof*: More delicate; uses summation by parts. ∎

### Example: Squaring the Geometric Series

**Claim**: For |x| < 1:

$$\left(\sum_{n=0}^{\infty} x^n\right)^2 = \sum_{n=0}^{\infty} (n+1)x^n$$

*Proof*: Take aₙ = bₙ = xⁿ. Both series converge absolutely for |x| < 1.

The Cauchy product has:

$$c_n = \sum_{k=0}^{n} x^k \cdot x^{n-k} = \sum_{k=0}^{n} x^n = (n+1)x^n$$

By the theorem:

$$\left(\frac{1}{1-x}\right)^2 = \sum_{n=0}^{\infty} (n+1)x^n = \frac{1}{(1-x)^2}$$

This can be verified independently by differentiating Σxⁿ = 1/(1-x). ∎

**Remark**: In Chapter 6, we'll use the Cauchy product to prove exp(x)exp(y) = exp(x+y) by multiplying Σxⁿ/n! by Σyⁿ/n!.

---

## 4.3 Dominated Convergence (Tannery's Theorem)

### The Problem

When can we exchange a limit and an infinite sum?

$$\lim_{n \to \infty} \sum_{k=0}^{\infty} a_k(n) \stackrel{?}{=} \sum_{k=0}^{\infty} \lim_{n \to \infty} a_k(n)$$

### The Danger

**Example**: Let a_k(n) = 1/n if k ≤ n, and 0 otherwise.

- For each k: lim_n a_k(n) = 0.
- So Σ_k lim_n a_k(n) = 0.

But:

- Σ_k a_k(n) = n · (1/n) = 1 for all n.
- So lim_n Σ_k a_k(n) = 1.

The limit and sum don't commute!

### Tannery's Theorem

**Theorem (Tannery / Dominated Convergence for Series)**: Suppose:
1. For each k, lim_n a_k(n) = L_k exists
2. There exist Mₖ ≥ 0 with |a_k(n)| ≤ Mₖ for all n
3. Σ Mₖ < ∞

Then:

$$\lim_{n \to \infty} \sum_{k=0}^{\infty} a_k(n) = \sum_{k=0}^{\infty} L_k$$

*Proof*: Let S(n) = Σ_k a_k(n) and S = Σ_k L_k.

Given ε > 0, choose K such that Σ_{k>K} Mₖ < ε/3.

For n large enough, |a_k(n) - L_k| < ε/(3(K+1)) for each k ≤ K (finitely many limits).

Then:

$$|S(n) - S| \leq \underbrace{\sum_{k=0}^{K} |a_k(n) - L_k|}_{< \varepsilon/3} + \underbrace{\sum_{k>K} |a_k(n)|}_{< \varepsilon/3} + \underbrace{\sum_{k>K} |L_k|}_{< \varepsilon/3}$$

The last two use |a_k(n)| ≤ Mₖ and |L_k| ≤ Mₖ. ∎

**Remark**: The key is the *dominating sequence* Mₖ that bounds all terms uniformly in n.

### The Big Example: (1 + x/n)ⁿ = Σxᵏ/k!

This connects Chapter 2's compound interest definition of e to the power series.

**Theorem**: For all x ∈ ℝ:

$$\lim_{n \to \infty} \left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$$

*Proof*: By the binomial theorem:

$$\left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{n} \binom{n}{k} \frac{x^k}{n^k}$$

Extend to an infinite series by setting a_k(n) = 0 for k > n:

$$a_k(n) = \begin{cases} \binom{n}{k} \frac{x^k}{n^k} = \frac{x^k}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k} & k \leq n \\ 0 & k > n \end{cases}$$

**Step 1**: For each fixed k, lim_n a_k(n) = xᵏ/k!.

$$\frac{n(n-1)\cdots(n-k+1)}{n^k} = 1 \cdot \left(1 - \frac{1}{n}\right) \cdot \left(1 - \frac{2}{n}\right) \cdots \left(1 - \frac{k-1}{n}\right) \to 1$$

**Step 2**: Find a dominating sequence.

For n ≥ 2|x|:

$$|a_k(n)| = \frac{|x|^k}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k} \leq \frac{|x|^k}{k!} \cdot 1 = \frac{|x|^k}{k!}$$

Let Mₖ = |x|ᵏ/k!. Then Σ Mₖ = e^{|x|} < ∞.

**Step 3**: Apply Tannery:

$$\lim_{n \to \infty} \left(1 + \frac{x}{n}\right)^n = \sum_{k=0}^{\infty} \frac{x^k}{k!}$$

∎

**Corollary**: Setting x = 1:

$$e = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = \sum_{k=0}^{\infty} \frac{1}{k!}$$

The compound interest limit equals the series!

---

## 4.4 Rearrangements

### The Question

If Σaₙ converges, and we sum the terms in a different order, do we get the same answer?

**Definition**: A *rearrangement* of Σaₙ is a series Σa_{π(n)} where π: ℕ → ℕ is a bijection.

### Absolute Convergence Is Safe

**Theorem**: If Σaₙ converges absolutely, then every rearrangement converges to the same sum.

*Proof*: Let Σaₙ = S and let Σa_{π(n)} be a rearrangement with partial sums Tₘ.

Given ε > 0, choose N such that Σ_{n>N} |aₙ| < ε.

Choose M large enough that {1, 2, ..., N} ⊆ {π(1), π(2), ..., π(M)}.

For m > M, the partial sum Tₘ contains all of a₁, ..., aₙ plus some terms with index > N.

So |Tₘ - Sₙ| ≤ Σ_{n>N} |aₙ| < ε.

Since Sₙ → S and ε is arbitrary, Tₘ → S. ∎

### Conditional Convergence Is Dangerous

**Theorem (Riemann Rearrangement Theorem)**: If Σaₙ converges conditionally, then for any L ∈ ℝ (or L = ±∞), there exists a rearrangement converging to L.

*Proof*: 

**Key observation**: Let pₙ be the positive terms of aₙ (in order) and qₙ the absolute values of negative terms. Then:
- Σpₙ = ∞ (else Σaₙ would converge absolutely)
- Σqₙ = ∞ (same reason)
- pₙ → 0 and qₙ → 0 (since aₙ → 0)

**Construction for finite L**: 
1. Add positive terms until the partial sum exceeds L.
2. Add negative terms until it falls below L.
3. Repeat.

Since pₙ → 0 and qₙ → 0, the overshoots get smaller. The partial sums oscillate around L with decreasing amplitude, converging to L.

**For L = +∞**: Add enough positive terms to exceed 1, then one negative term, then positive terms to exceed 2, then one negative term, etc. ∎

### Example: Rearranging the Alternating Harmonic Series

The alternating harmonic series 1 - 1/2 + 1/3 - 1/4 + ... = ln(2).

**Rearrangement to 3/2 · ln(2)**: Take two positive terms, then one negative:

$$\left(1 + \frac{1}{3}\right) - \frac{1}{2} + \left(\frac{1}{5} + \frac{1}{7}\right) - \frac{1}{4} + \left(\frac{1}{9} + \frac{1}{11}\right) - \frac{1}{6} + \cdots$$

This converges to (3/2)ln(2) ≈ 1.04 instead of ln(2) ≈ 0.69.

*Proof*: Let Sₙ be the partial sums of the original series, Tₙ the rearranged.

After 3n terms of the rearrangement, we've used positive terms up to 1/(2n-1) and negative terms up to -1/n.

$$T_{3n} = \sum_{k=1}^{2n} \frac{1}{2k-1} - \sum_{k=1}^{n} \frac{1}{2k}$$

By careful analysis (using Sₙ → ln(2) and properties of harmonic partial sums), T_{3n} → (3/2)ln(2). ∎

**Moral**: The same terms, summed differently, give a different answer. Conditional convergence means the order carries information.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Manipulating series: when safe, when dangerous |
| 4.1 Iterated Limits | Double sequences; order can matter |
| 4.2 Double Sums | Absolute convergence allows swapping; Cauchy product |
| 4.3 Tannery | Dominated convergence for limit-sum exchange |
| 4.4 Rearrangements | Absolute: safe. Conditional: anything can happen |

## Key Theorems

1. **Iterated limits**: If double limit exists, iterated limits agree
2. **Double sums**: Absolute convergence ⟹ can swap order
3. **Cauchy product**: Absolute convergence of both factors ⟹ product converges
4. **Tannery**: Dominated by convergent series ⟹ can exchange limit and sum
5. **(1 + x/n)ⁿ = Σxᵏ/k!**: The compound interest limit equals the exponential series
6. **Rearrangement (absolute)**: Same sum regardless of order
7. **Rearrangement (conditional)**: Can rearrange to any value

## Exercises (Selected)

### Section 4.1
- Find lim_m lim_n and lim_n lim_m for a_{mn} = n/(m+n)
- Give an example where both iterated limits equal 0 but the double limit doesn't exist
- Prove: if a_{mn} → L as m+n → ∞, then both iterated limits exist and equal L

### Section 4.2
- Verify (Σxⁿ)² = Σ(n+1)xⁿ by differentiating 1/(1-x)
- Compute the Cauchy product of Σxⁿ/n! with itself (you'll verify this equals Σ(2x)ⁿ/n! in Chapter 6)
- Give an example where the Cauchy product diverges even though both series converge

### Section 4.3
- Verify the domination bound in the (1+x/n)ⁿ proof
- Apply Tannery to prove: lim_n Σₖ₌₁ⁿ 1/(n+k) = ln(2)
- Why does Tannery fail in the example a_k(n) = 1/n for k ≤ n?

### Section 4.4
- Construct a rearrangement of 1 - 1/2 + 1/3 - 1/4 + ... that converges to 0
- Prove: if Σaₙ converges absolutely, then Σaₙ² converges
- Show that Σ(-1)ⁿ/√n converges conditionally, and describe how to rearrange it to converge to 100

## Dependencies

**Requires from earlier chapters**:
- Chapter 2: Convergence, series, geometric series, e = lim(1+1/n)ⁿ
- Chapter 3: Absolute vs conditional convergence, comparison test

**Sets up for later chapters**:
- Chapter 5: Power series continuity (Tannery applied to Σaₙxⁿ)
- Chapter 6: exp(x)exp(y) = exp(x+y) via Cauchy product; term-by-term differentiation
