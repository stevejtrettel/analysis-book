# Chapter 2: Limits

## Overview

This chapter introduces the central concept of analysis: the limit of a sequence. We develop the definition, learn to compute limits algebraically, and discover that completeness guarantees convergence for monotone bounded sequences. These tools unlock infinite processes—series, products, recursions—and show that every real number is a limit of rationals.

**The arc:**
> Definition → Compute limits → Completeness guarantees existence → Infinite processes → Every real is a limit

---

## Historical Prelude (Unnumbered)

### The Problem

What does it mean for an infinite process to "equal" something? We write 1/2 + 1/4 + 1/8 + ··· = 1, but we can never finish adding. Zeno's paradoxes (5th century BCE) challenged whether infinite processes make sense at all: to walk across a room, you must first go halfway, then half of what remains, then half again—infinitely many steps. How do you ever arrive?

### The Development

**Informal Limits (Newton, Leibniz, Euler)**

For centuries, mathematicians used limits intuitively. Euler happily wrote 1 − 1 + 1 − 1 + ··· = 1/2 by setting x = −1 in 1/(1−x) = 1 + x + x² + ···. Sometimes these manipulations gave correct answers, sometimes nonsense.

**Cauchy's Definition (1821)**

Cauchy gave the first clear definition: a sequence (aₙ) converges to L if the terms eventually stay arbitrarily close to L. "Let the difference aₙ − L be a quantity which decreases indefinitely as n increases."

**Weierstrass's Precision (1860s)**

Weierstrass made Cauchy's "arbitrarily close" precise with ε and N: for every ε > 0, there exists N such that n > N implies |aₙ − L| < ε. No more vague "decreases indefinitely"—just quantifiers and inequalities.

### The Message

The ε-N definition looks pedantic but is essential. It tells us exactly what we must verify, enables rigorous proofs, and distinguishes convergent from divergent sequences. Zeno's paradox dissolves: the infinite sum 1/2 + 1/4 + 1/8 + ··· really does equal 1, in a precise sense we can now define.

---

## 2.1 Definition

### Sequences

**Definition**: A *sequence* is a function a: ℕ → ℝ. We write aₙ for a(n) and denote the sequence by (aₙ) or (a₁, a₂, a₃, ...).

**Examples**:
- aₙ = 1/n: the sequence (1, 1/2, 1/3, 1/4, ...)
- aₙ = (−1)ⁿ: the sequence (−1, 1, −1, 1, ...)
- aₙ = n²: the sequence (1, 4, 9, 16, ...)

### The Definition of Convergence

**Definition**: A sequence (aₙ) *converges to L* if for every ε > 0, there exists N ∈ ℕ such that:

$$n > N \implies |a_n - L| < \varepsilon$$

We write aₙ → L or lim_{n→∞} aₙ = L, and call L the *limit* of the sequence.

A sequence that converges to some limit is called *convergent*. A sequence that does not converge is *divergent*.

**Unpacking the definition**:
- "For every ε > 0": no matter how small a tolerance you specify
- "There exists N": I can find a starting point
- "n > N implies |aₙ − L| < ε": after which all terms are within ε of L

### Examples from the Definition

**Example**: Prove 1/n → 0.

*Proof*: Let ε > 0. Choose N = ⌈1/ε⌉. For n > N:

$$|1/n - 0| = 1/n < 1/N \leq \varepsilon$$

∎

**Example**: Prove c → c (constant sequence).

*Proof*: Let ε > 0. Choose N = 1. For n > N:

$$|c - c| = 0 < \varepsilon$$

∎

**Example**: Prove aⁿ → 0 for |a| < 1.

*Proof*: If a = 0, trivial. Otherwise, write |a| = 1/(1+h) for some h > 0.

By Bernoulli's inequality: (1+h)ⁿ ≥ 1 + nh, so |a|ⁿ ≤ 1/(1+nh).

Given ε > 0, choose N > (1/ε − 1)/h. For n > N:

$$|a^n - 0| = |a|^n \leq \frac{1}{1+nh} < \varepsilon$$

∎

### Uniqueness of Limits

**Theorem**: If aₙ → L and aₙ → M, then L = M.

*Proof*: Suppose L ≠ M. Let ε = |L − M|/2 > 0.

Since aₙ → L, there exists N₁ with n > N₁ ⟹ |aₙ − L| < ε.

Since aₙ → M, there exists N₂ with n > N₂ ⟹ |aₙ − M| < ε.

For n > max(N₁, N₂):

$$|L - M| \leq |L - a_n| + |a_n - M| < \varepsilon + \varepsilon = |L - M|$$

Contradiction. ∎

### Convergent Sequences Are Bounded

**Definition**: A sequence (aₙ) is *bounded* if there exists M > 0 such that |aₙ| ≤ M for all n.

**Theorem**: Every convergent sequence is bounded.

*Proof*: Suppose aₙ → L. Choose N such that n > N ⟹ |aₙ − L| < 1.

For n > N: |aₙ| ≤ |aₙ − L| + |L| < 1 + |L|.

Let M = max(|a₁|, |a₂|, ..., |aₙ|, 1 + |L|). Then |aₙ| ≤ M for all n. ∎

**Warning**: The converse is false! (−1)ⁿ is bounded but divergent.

---

## 2.2 Limit Laws

### Limits and Inequalities

**Theorem (Preservation of Inequalities)**: If aₙ → L, bₙ → M, and aₙ ≤ bₙ for all n, then L ≤ M.

*Proof*: Suppose L > M. Let ε = (L − M)/2. For large n:

$$a_n > L - \varepsilon = \frac{L + M}{2} = M + \varepsilon > b_n$$

Contradiction. ∎

**Warning**: Strict inequality is not preserved! aₙ = 1/n < 1 for all n, but lim aₙ = 0 ≤ 1, not 0 < 1.

**Theorem (Squeeze Theorem)**: If aₙ ≤ bₙ ≤ cₙ for all n and aₙ → L, cₙ → L, then bₙ → L.

*Proof*: Given ε > 0, choose N such that n > N ⟹ |aₙ − L| < ε and |cₙ − L| < ε.

For n > N:

$$L - \varepsilon < a_n \leq b_n \leq c_n < L + \varepsilon$$

So |bₙ − L| < ε. ∎

### Limits and Algebra

**Theorem (Limit Laws)**: Suppose aₙ → L and bₙ → M. Then:
1. aₙ + bₙ → L + M
2. aₙ − bₙ → L − M
3. caₙ → cL for any constant c
4. aₙbₙ → LM
5. aₙ/bₙ → L/M (provided M ≠ 0 and bₙ ≠ 0)

*Proof of (1)*: Given ε > 0, choose N₁ with n > N₁ ⟹ |aₙ − L| < ε/2, and N₂ with n > N₂ ⟹ |bₙ − M| < ε/2.

For n > max(N₁, N₂):

$$|(a_n + b_n) - (L + M)| \leq |a_n - L| + |b_n - M| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$

∎

*Proof of (4)*: We have:

$$|a_n b_n - LM| = |a_n b_n - a_n M + a_n M - LM| \leq |a_n||b_n - M| + |M||a_n - L|$$

Since (aₙ) is bounded (say |aₙ| ≤ K), and both |bₙ − M| and |aₙ − L| become small, the product goes to 0. ∎

*Proof of (5)*: First show 1/bₙ → 1/M. Since bₙ → M ≠ 0, we have |bₙ| > |M|/2 for large n.

$$\left|\frac{1}{b_n} - \frac{1}{M}\right| = \frac{|M - b_n|}{|b_n||M|} < \frac{2|M - b_n|}{M^2}$$

This → 0. Then aₙ/bₙ = aₙ · (1/bₙ) → L · (1/M). ∎

### Applications

**Example**: Compute lim (3n² + 2n)/(n² − 1).

Divide numerator and denominator by n²:

$$\frac{3n^2 + 2n}{n^2 - 1} = \frac{3 + 2/n}{1 - 1/n^2} \to \frac{3 + 0}{1 - 0} = 3$$

**Example**: Prove √(n+1) − √n → 0.

Multiply by conjugate:

$$\sqrt{n+1} - \sqrt{n} = \frac{(n+1) - n}{\sqrt{n+1} + \sqrt{n}} = \frac{1}{\sqrt{n+1} + \sqrt{n}} \to 0$$

**Example**: Prove nᵏ/aⁿ → 0 for a > 1, k fixed.

Write a = 1 + h for h > 0. By the binomial theorem:

$$a^n = (1+h)^n \geq \binom{n}{k+1} h^{k+1} \geq \frac{(n-k)^{k+1}}{(k+1)!} h^{k+1}$$

for large n. So:

$$\frac{n^k}{a^n} \leq \frac{n^k (k+1)!}{(n-k)^{k+1} h^{k+1}} \to 0$$

∎

### Computing √2: The Babylonian Method

**Setup**: Define the sequence:
- x₁ = 1
- xₙ₊₁ = (xₙ + 2/xₙ)/2

**Claim**: If this converges to L, then L = √2.

*Proof*: Taking limits: L = (L + 2/L)/2 ⟹ 2L = L + 2/L ⟹ L = 2/L ⟹ L² = 2.

Since xₙ > 0 for all n (check!), L > 0, so L = √2. ∎

**But does it converge?** We'll prove this in Section 2.3 using MCT.

**A complete proof via Pell's equation**: Define integer sequences by:
- p₁ = 1, q₁ = 1
- pₙ₊₁ = pₙ + 2qₙ, qₙ₊₁ = pₙ + qₙ

**Claim**: pₙ/qₙ → √2.

**Key identity** (verify by induction): pₙ² − 2qₙ² = (−1)ⁿ.

Therefore:

$$\left(\frac{p_n}{q_n}\right)^2 = 2 + \frac{(-1)^n}{q_n^2} \to 2$$

Since pₙ/qₙ > 0, we have pₙ/qₙ → √2. ∎

**Remark**: The Pell sequences and Babylonian sequences are related (exercise).

---

## 2.3 Monotone Convergence

### The Theorem

**Definition**: A sequence (aₙ) is:
- *increasing* if aₙ ≤ aₙ₊₁ for all n
- *strictly increasing* if aₙ < aₙ₊₁ for all n
- *decreasing* if aₙ ≥ aₙ₊₁ for all n
- *monotone* if it is increasing or decreasing

**Theorem (Monotone Convergence Theorem)**: A monotone bounded sequence converges.

Moreover:
- If (aₙ) is increasing and bounded above, then aₙ → sup{aₙ : n ∈ ℕ}
- If (aₙ) is decreasing and bounded below, then aₙ → inf{aₙ : n ∈ ℕ}

*Proof*: Suppose (aₙ) is increasing and bounded above. Let L = sup{aₙ}.

Given ε > 0, by definition of sup, there exists N with aₙ > L − ε.

For n > N: L − ε < aₙ ≤ aₙ ≤ L < L + ε (using monotonicity and L = sup).

So |aₙ − L| < ε. ∎

**Remark**: This theorem uses completeness! The sup exists because ℝ is complete. The theorem fails in ℚ: the sequence 1, 1.4, 1.41, 1.414, ... is monotone and bounded but has no rational limit.

### The Babylonian Sequence Converges

**Claim**: The Babylonian sequence xₙ₊₁ = (xₙ + 2/xₙ)/2 with x₁ = 1 converges.

*Proof*: 

**Step 1**: xₙ ≥ √2 for n ≥ 2.

By AM-GM: xₙ₊₁ = (xₙ + 2/xₙ)/2 ≥ √(xₙ · 2/xₙ) = √2.

**Step 2**: (xₙ) is decreasing for n ≥ 2.

xₙ₊₁ ≤ xₙ ⟺ (xₙ + 2/xₙ)/2 ≤ xₙ ⟺ xₙ + 2/xₙ ≤ 2xₙ ⟺ 2/xₙ ≤ xₙ ⟺ xₙ² ≥ 2. ✓

**Step 3**: By MCT, (xₙ) converges. By Section 2.2, the limit is √2. ∎

### Series with Nonnegative Terms

**Definition**: An *infinite series* Σ_{n=1}^∞ aₙ is the limit of partial sums Sₙ = Σ_{k=1}^n aₖ, if it exists.

**Theorem**: If aₙ ≥ 0 for all n, then Σaₙ converges if and only if the partial sums are bounded.

*Proof*: Partial sums Sₙ = a₁ + a₂ + ··· + aₙ are increasing (since aₙ ≥ 0).

By MCT: (Sₙ) converges ⟺ (Sₙ) is bounded. ∎

**Example**: Σ1/n² converges.

*Proof*: For n ≥ 2: 1/n² < 1/n(n−1) = 1/(n−1) − 1/n.

So Sₙ = 1 + Σₖ₌₂ⁿ 1/k² < 1 + Σₖ₌₂ⁿ (1/(k−1) − 1/k) = 1 + (1 − 1/n) < 2.

Partial sums bounded ⟹ converges. ∎

**Example**: Σ1/n diverges (the harmonic series).

*Proof*: Group terms:

$$1 + \frac{1}{2} + \left(\frac{1}{3} + \frac{1}{4}\right) + \left(\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}\right) + \cdots$$

$$> 1 + \frac{1}{2} + \frac{2}{4} + \frac{4}{8} + \cdots = 1 + \frac{1}{2} + \frac{1}{2} + \frac{1}{2} + \cdots$$

Partial sums unbounded ⟹ diverges. ∎

### The Number e

**Definition/Theorem**: The sequence (1 + 1/n)ⁿ is increasing, bounded above by 3, and therefore converges. Its limit is denoted *e*.

*Proof of increasing*: By the AM-GM inequality applied to n copies of (1 + 1/n) and one copy of 1:

$$\frac{n(1 + 1/n) + 1}{n+1} \geq \sqrt[n+1]{(1 + 1/n)^n \cdot 1}$$

$$\frac{n + 1 + 1}{n+1} = 1 + \frac{1}{n+1} \geq \sqrt[n+1]{(1 + 1/n)^n}$$

$$\left(1 + \frac{1}{n+1}\right)^{n+1} \geq (1 + 1/n)^n$$

∎

*Proof of bounded*: By the binomial theorem:

$$(1 + 1/n)^n = \sum_{k=0}^{n} \binom{n}{k} \frac{1}{n^k} = \sum_{k=0}^{n} \frac{1}{k!} \cdot \frac{n(n-1)\cdots(n-k+1)}{n^k}$$

$$< \sum_{k=0}^{n} \frac{1}{k!} < 1 + 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \cdots = 3$$

(using k! ≥ 2^{k-1} for k ≥ 1). ∎

**Numerical value**: e ≈ 2.71828...

**Historical note**: This limit arose from compound interest. If you invest $1 at 100% annual interest, compounded n times per year, you have (1 + 1/n)ⁿ dollars at year's end. Bernoulli (~1683) noticed this approaches a limit as n → ∞.

**Remark**: The significance of e—why it deserves a name—will become clear in Chapter 6, where we discover it's the base of the "natural" exponential.

### Exponentials as Limits

In Chapter 1, we defined aˣ = sup{a^r : r ∈ ℚ, r < x} for a > 1 and x ∈ ℝ. This is conceptually clean but hard to compute with. Here's a more practical characterization:

**Theorem**: For a > 0 and x ∈ ℝ, if (rₙ) is any sequence of rationals with rₙ → x, then a^{rₙ} → aˣ.

*Proof*: We prove for a > 1 and x > 0 (other cases similar).

**Step 1**: If rₙ ↑ x (increasing to x), then a^{rₙ} ↑ aˣ.

The sequence (a^{rₙ}) is increasing (since a > 1 and rₙ increasing). By definition of aˣ as sup, a^{rₙ} ≤ aˣ for all n. Given ε > 0, by definition of sup, there exists rational r < x with a^r > aˣ − ε. Eventually rₙ > r, so a^{rₙ} > a^r > aˣ − ε. By MCT, a^{rₙ} → aˣ.

**Step 2**: For general rₙ → x, squeeze between increasing and decreasing rational sequences converging to x. ∎

**Remark**: This theorem says we can compute aˣ as a limit of "computable" quantities a^{p/q}.

---

## 2.4 Infinite Processes

This section studies sequences built by infinite iteration: adding infinitely many terms (series), multiplying infinitely many factors (products), or repeatedly applying a function (recursion).

### Series as Sequences

**Definition**: Given a sequence (aₙ), the *infinite series* Σ_{n=1}^∞ aₙ is defined as:

$$\sum_{n=1}^{\infty} a_n = \lim_{N \to \infty} \sum_{n=1}^{N} a_n = \lim_{N \to \infty} S_N$$

if this limit exists. The Sₙ are called *partial sums*.

**Remark**: A series is just a sequence (of partial sums) in disguise. All our theorems about sequences apply.

### Telescoping Series

**Technique**: If aₙ = bₙ − bₙ₊₁, then:

$$S_N = \sum_{n=1}^{N} (b_n - b_{n+1}) = b_1 - b_{N+1}$$

**Example**: Σ_{n=1}^∞ 1/(n(n+1)) = 1.

*Proof*: 1/(n(n+1)) = 1/n − 1/(n+1).

So Sₙ = (1 − 1/2) + (1/2 − 1/3) + ··· + (1/N − 1/(N+1)) = 1 − 1/(N+1) → 1. ∎

**Example**: Σ_{n=2}^∞ 1/(n² − 1) = 3/4.

*Proof*: 1/(n² − 1) = 1/((n−1)(n+1)) = (1/2)(1/(n−1) − 1/(n+1)).

This is "telescoping with step 2." Work out the partial sums (exercise). ∎

### Geometric Series

**Theorem**: For |x| < 1:

$$\sum_{n=0}^{\infty} x^n = \frac{1}{1-x}$$

*Proof*: The finite sum has closed form:

$$S_N = 1 + x + x^2 + \cdots + x^N = \frac{1 - x^{N+1}}{1 - x}$$

(Proof: multiply Sₙ by (1−x) and observe cancellation.)

Since |x| < 1, we have x^{N+1} → 0, so:

$$S_N \to \frac{1 - 0}{1 - x} = \frac{1}{1-x}$$

∎

**Remark**: This is our first *power series*—the sum depends on a parameter x. The formula only works for |x| < 1; at x = 1, the series 1 + 1 + 1 + ··· diverges.

**Example**: 0.999... = 1.

*Proof*: 0.999... = 9/10 + 9/100 + 9/1000 + ··· = (9/10) · 1/(1 − 1/10) = (9/10) · (10/9) = 1. ∎

### Computing Logarithms: Briggs's Method

**Historical context**: In Chapter 1, we defined log_a(x) as the unique y with aʸ = x. But how do we *compute* logarithms?

Henry Briggs (1624) computed 30,000 logarithms to 14 decimal places using only arithmetic and square roots. Here's his method for log₁₀(2):

**The algorithm**: Compare 2 to 10^{1/2}, 10^{1/4}, 10^{1/8}, ... successively.

- 10^{1/2} ≈ 3.16... > 2, so log₁₀(2) < 1/2. First bit: 0.
- 10^{1/4} ≈ 1.78... < 2, so log₁₀(2) > 1/4. Second bit: 1.
- 10^{3/8} = 10^{1/4} · 10^{1/8} ≈ 2.37... > 2, so log₁₀(2) < 3/8. Third bit: 0.
- Continue...

**Output**: log₁₀(2) = 0.0100110001... in binary, i.e., log₁₀(2) = 1/4 + 1/8 + 1/32 + ...

**Convergence**: The partial sums differ from log₁₀(2) by at most 1/2ᵏ after k steps (geometric series!).

**Remark**: Computing 10^{1/2ᵏ} requires only repeated square roots. Briggs's tables enabled practical astronomical calculations for centuries.

### Infinite Products

**Definition**: The *infinite product* Π_{n=1}^∞ aₙ is:

$$\prod_{n=1}^{\infty} a_n = \lim_{N \to \infty} \prod_{n=1}^{N} a_n$$

if this limit exists and is nonzero.

**Example**: Π_{n=2}^∞ (1 − 1/n²) = 1/2.

*Proof*: 

$$\prod_{n=2}^{N} \left(1 - \frac{1}{n^2}\right) = \prod_{n=2}^{N} \frac{(n-1)(n+1)}{n^2} = \prod_{n=2}^{N} \frac{n-1}{n} \cdot \prod_{n=2}^{N} \frac{n+1}{n}$$

$$= \frac{1}{N} \cdot \frac{N+1}{2} = \frac{N+1}{2N} \to \frac{1}{2}$$

∎

### Products Reduce to Series

**Key observation**: Taking logarithms converts products to sums.

For finite products: log(Π aₙ) = Σ log(aₙ).

For infinite products: we want log(lim Pₙ) = lim log(Pₙ). This is true if log is continuous—which we'll prove in Chapter 5.

**Consequence**: Most questions about infinite product convergence reduce to series questions.

### Recursive Sequences

**Setup**: Define a sequence by:
- a₁ = (some starting value)
- aₙ₊₁ = f(aₙ)

**Method for finding limits**: If aₙ → L and f is continuous, then L = f(L). Solve for L.

**Example**: Let a₁ = 1, aₙ₊₁ = √(2 + aₙ). Find the limit (assuming it exists).

If aₙ → L, then L = √(2 + L), so L² = 2 + L, giving L² − L − 2 = 0, so L = 2 or L = −1.

Since aₙ > 0 for all n, L = 2.

**Proving convergence**: Use MCT! Show (aₙ) is monotone and bounded.
- Bounded: Show 0 < aₙ < 2 by induction.
- Increasing: aₙ₊₁ > aₙ ⟺ √(2 + aₙ) > aₙ ⟺ 2 + aₙ > aₙ² ⟺ aₙ² − aₙ − 2 < 0, true for aₙ < 2.

### Fibonacci and the Golden Ratio

**Definition**: The Fibonacci sequence is F₁ = 1, F₂ = 1, Fₙ₊₁ = Fₙ + Fₙ₋₁.

**Theorem (Binet's Formula)**:

$$F_n = \frac{\varphi^n - \psi^n}{\sqrt{5}}$$

where φ = (1 + √5)/2 ≈ 1.618 and ψ = (1 − √5)/2 ≈ −0.618.

*Proof*: Verify by induction, using φ² = φ + 1 and ψ² = ψ + 1. ∎

**Theorem**: Fₙ₊₁/Fₙ → φ.

*Proof*: 

$$\frac{F_{n+1}}{F_n} = \frac{\varphi^{n+1} - \psi^{n+1}}{\varphi^n - \psi^n} = \varphi \cdot \frac{1 - (\psi/\varphi)^{n+1}}{1 - (\psi/\varphi)^n}$$

Since |ψ/φ| = |ψ|/φ < 1, we have (ψ/φ)ⁿ → 0, so the ratio → φ · (1/1) = φ. ∎

**Remark**: The golden ratio φ = [1; 1, 1, 1, ...] as a continued fraction—we'll see this in Section 2.5.

---

## 2.5 Representing Real Numbers

Every real number is a limit of rationals. This section gives two canonical ways to represent any real as such a limit: decimal expansions and continued fractions.

### Density of Rationals

**Theorem**: Between any two real numbers lies a rational.

*Proof*: Given a < b, choose n with 1/n < b − a (Archimedean property). Consider the rationals k/n for k ∈ ℤ. Some k/n lies in (a, b). ∎

**Corollary**: Every real is a limit of rationals.

*Proof*: For any x ∈ ℝ, use density to find rₙ ∈ ℚ with x − 1/n < rₙ < x + 1/n. Then rₙ → x. ∎

**Remark**: This is non-constructive—we know rationals exist but haven't produced them. Decimals and continued fractions give explicit constructions.

### Decimal Expansions

**Theorem**: Every real x ∈ [0, 1) has a decimal expansion:

$$x = \sum_{n=1}^{\infty} \frac{d_n}{10^n} = 0.d_1 d_2 d_3 \ldots$$

where each dₙ ∈ {0, 1, ..., 9}.

*Proof*: Define the digits by the greedy algorithm:
- d₁ = ⌊10x⌋
- d₂ = ⌊10²x⌋ − 10d₁ = ⌊10(10x − d₁)⌋
- In general: dₙ = ⌊10ⁿx⌋ − 10⌊10ⁿ⁻¹x⌋

Let Sₙ = Σₖ₌₁ⁿ dₖ/10ᵏ. Then:
- Sₙ is increasing (dₙ ≥ 0)
- Sₙ ≤ x for all n (by construction)
- Sₙ ≤ S_{n+1} ≤ ··· ≤ x < Sₙ + 1/10ⁿ

By MCT, Sₙ → L ≤ x. But x < Sₙ + 1/10ⁿ → L, so x ≤ L. Thus L = x. ∎

**Uniqueness**: Decimal expansions are almost unique. The only ambiguity: 0.999... = 1.000..., and similarly. Every real has either one or two decimal expansions.

**Characterizing rationals**: x is rational if and only if its decimal expansion eventually repeats.

*Proof*: (⟸) Repeating decimals are geometric series, hence rational.

(⟹) Long division of p/q cycles through at most q remainders, so must eventually repeat. ∎

### Continued Fractions

**Definition**: A *continued fraction* is an expression:

$$[a_0; a_1, a_2, a_3, \ldots] = a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cdots}}}$$

where a₀ ∈ ℤ and aₙ ∈ ℕ for n ≥ 1.

**Definition**: The *n-th convergent* is:

$$\frac{p_n}{q_n} = [a_0; a_1, \ldots, a_n]$$

**Theorem (Recurrence)**: The convergents satisfy:
- p₋₁ = 1, p₀ = a₀, pₙ = aₙpₙ₋₁ + pₙ₋₂
- q₋₁ = 0, q₀ = 1, qₙ = aₙqₙ₋₁ + qₙ₋₂

*Proof*: Induction. ∎

**Theorem**: pₙqₙ₋₁ − pₙ₋₁qₙ = (−1)ⁿ⁻¹.

*Proof*: Induction using the recurrence. ∎

**Corollary**: 

$$\frac{p_n}{q_n} - \frac{p_{n-1}}{q_{n-1}} = \frac{(-1)^{n-1}}{q_n q_{n-1}}$$

### Convergence of Continued Fractions

**Theorem**: The even convergents p₀/q₀, p₂/q₂, p₄/q₄, ... are increasing. The odd convergents p₁/q₁, p₃/q₃, ... are decreasing. Every even convergent is less than every odd convergent.

*Proof*: From the corollary:
- p₂ₖ/q₂ₖ − p₂ₖ₋₂/q₂ₖ₋₂ = (p₂ₖ/q₂ₖ − p₂ₖ₋₁/q₂ₖ₋₁) + (p₂ₖ₋₁/q₂ₖ₋₁ − p₂ₖ₋₂/q₂ₖ₋₂) > 0

(Work out signs from (−1)ⁿ⁻¹.) Similarly for odd. ∎

**Theorem**: Every continued fraction converges.

*Proof*: Even convergents are increasing and bounded above (by any odd convergent). By MCT, they converge to some L₊.

Odd convergents are decreasing and bounded below. By MCT, they converge to some L₋.

Since |pₙ/qₙ − pₙ₋₁/qₙ₋₁| = 1/(qₙqₙ₋₁) → 0 (as qₙ → ∞), we have L₊ = L₋. ∎

**Theorem**: Every real has a continued fraction expansion.

*Proof*: Given x, define:
- a₀ = ⌊x⌋, x₁ = 1/(x − a₀) if x ∉ ℤ
- aₙ = ⌊xₙ⌋, xₙ₊₁ = 1/(xₙ − aₙ) if xₙ ∉ ℤ

This terminates (giving a finite continued fraction) iff x is rational. ∎

**Theorem (Best Approximation)**: The convergents give the best rational approximations:

$$\left| x - \frac{p_n}{q_n} \right| < \frac{1}{q_n q_{n+1}}$$

and if p/q is closer to x than pₙ/qₙ, then q > qₙ.

### Examples

**Example**: √2 = [1; 2, 2, 2, ...].

*Proof*: Let x = √2. Then a₀ = 1, and:

$$x_1 = \frac{1}{\sqrt{2} - 1} = \frac{\sqrt{2} + 1}{(\sqrt{2} - 1)(\sqrt{2} + 1)} = \sqrt{2} + 1$$

So a₁ = 2, and x₂ = 1/(√2 + 1 − 2) = 1/(√2 − 1) = √2 + 1 = x₁.

The pattern repeats: √2 = [1; 2, 2, 2, ...]. ∎

**Convergents**: 1/1, 3/2, 7/5, 17/12, 41/29, ...

These are precisely the solutions to the Pell equation p² − 2q² = ±1!

**Example**: φ = (1 + √5)/2 = [1; 1, 1, 1, ...].

The convergents are Fₙ₊₁/Fₙ—Fibonacci ratios.

**Example**: e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8, ...].

The pattern is [2; 1, 2k, 1] for k = 1, 2, 3, ... (remarkable but proof is beyond our scope).

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | From Zeno to Weierstrass |
| 2.1 Definition | ε-N definition, uniqueness, boundedness |
| 2.2 Limit Laws | Algebra and inequalities; computing limits |
| 2.3 MCT | Completeness guarantees convergence; the number e |
| 2.4 Infinite Processes | Series, products, recursion |
| 2.5 Representing Reals | Decimals and continued fractions |

## Key Theorems

1. **Uniqueness**: Limits are unique
2. **Convergent ⟹ bounded**
3. **Limit laws**: Sum, product, quotient of limits
4. **Squeeze theorem**
5. **MCT**: Monotone bounded sequences converge
6. **Geometric series**: Σxⁿ = 1/(1−x) for |x| < 1
7. **(1 + 1/n)ⁿ → e**
8. **aˣ = lim a^{rₙ}** for rₙ → x
9. **Every real has a decimal expansion**
10. **Continued fractions converge**

## Exercises (Selected)

### Section 2.1
- Prove directly: (n² + 1)/(n² + n) → 1
- Find the flaw: "Let L = 1 + 1 + 1 + ···. Then L = 1 + L, so 0 = 1."
- Prove: if aₙ → L and aₙ ≥ 0, then L ≥ 0

### Section 2.2
- Prove: √(n² + n) − n → 1/2
- Compute: lim (1 + 2 + ··· + n)/n²
- Show pₙ/qₙ from Pell's equation equals every other term of the Babylonian sequence

### Section 2.3
- Prove (1 + 1/n)^{n+1} is decreasing (so e is trapped between increasing and decreasing sequences)
- Show Σ1/n! converges and equals e
- Prove: if aₙ is increasing and has a convergent subsequence, then aₙ converges

### Section 2.4
- Compute: Σ n/2ⁿ
- Compute: Σ 1/(n² + 3n + 2)
- Prove Wallis's product: Π (4n²)/(4n² − 1) = π/2 (assuming knowledge of π)
- Find the limit of a₁ = 1, aₙ₊₁ = (aₙ + 3)/(aₙ + 1)

### Section 2.5
- Find the continued fraction for √3
- Prove: x is rational iff its continued fraction is finite
- Find the first 5 convergents of π = [3; 7, 15, 1, 292, ...]

## Dependencies

**Requires from Chapter 1**:
- Completeness (sup/inf exist)
- Archimedean property
- aˣ defined as sup of rational powers
- log defined as inverse of exponential

**Sets up for later chapters**:
- Chapter 3: Comparison tests, Cauchy, Bolzano-Weierstrass
- Chapter 5: Sequential characterization of continuity
- Chapter 6: Exponential series Σxⁿ/n!
