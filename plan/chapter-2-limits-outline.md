# Chapter 2: Limits

## Overview

Chapter 1 ended with a revelation: ℝ is uncountable. There are vastly more real numbers than we can name with finite descriptions. The rationals, the algebraics, even the computable numbers — all are countable dust in an uncountable ocean.

How do we access the rest? **Sequences are our tools.** A sequence of rationals can converge to an irrational. A sequence of known values can pin down an unknown. Every real number — even the unnameable ones — is the limit of a sequence of rationals.

This chapter develops the theory of sequences as tools for exploring ℝ.

**The arc:**
> Sequences as tools → What is convergence? → Limit laws from ordered field axioms → MCT from completeness → Every real can be reached

---

## Historical Prelude (Unnumbered)

### The Second Crisis

The irrationality of √2 was the first crisis. The second came two millennia later: what *is* a limit?

Newton's fluxions and Leibniz's infinitesimals built calculus on intuition about quantities "approaching" values or being "infinitely small." The results were spectacular. The foundations were incoherent.

Berkeley's famous criticism (1734): infinitesimals are "ghosts of departed quantities." Are they zero or not? If zero, you can't divide by them. If nonzero, you can't discard them. The calculus worked, but nobody could say why.

### The Resolution

Cauchy and Weierstrass (19th century) replaced vague intuition with precise quantification. A sequence "approaches" L doesn't mean the terms get mystically closer — it means: *for any tolerance you demand, eventually all terms fall within that tolerance*.

The ε-N definition transforms philosophy into calculation.

### The Message

This chapter develops the ε-N framework and discovers its power. Limits aren't just technically useful — they're *necessary*. The real numbers are uncountable, but our descriptions are finite. Limits bridge the gap: infinite processes let finite creatures name infinite objects.

---

## 2.1 Sequences and Series

### Tools for Reaching Real Numbers

Chapter 1 showed ℝ is uncountable, but finite descriptions are countable. How do we access the vast majority of real numbers?

**Key insight**: Infinite processes bridge the gap.

Sequences let us *name* numbers we can't write down finitely. We'll prove by chapter's end: every real is the limit of a sequence of rationals.

### What Is a Sequence?

**Definition**: A *sequence* is a function a: ℕ → ℝ. We write aₙ for a(n) and denote the sequence by (aₙ) or (a₁, a₂, a₃, ...).

**Two ways to specify**:
- *Closed form*: aₙ = 1/n, aₙ = n²/(n² + 1), aₙ = (-1)ⁿ
- *Recursive*: a₁ = 2, aₙ₊₁ = (aₙ + 2/aₙ)/2

### Many Objects Are Secretly Sequences

**Series**: An infinite sum Σaₙ = a₁ + a₂ + a₃ + ⋯ is really the sequence of *partial sums*:
$$S_n = a_1 + a_2 + \cdots + a_n$$

The series "equals" L means the sequence (Sₙ) converges to L.

**Products**: An infinite product Πaₙ = a₁ · a₂ · a₃ · ⋯ is really the sequence of *partial products*:
$$P_n = a_1 \cdot a_2 \cdot \cdots \cdot a_n$$

**Recursive processes**: Given a₁ and a rule aₙ₊₁ = f(aₙ), we get a sequence.

**Unifying principle**: Master sequences, master them all.

### Historical Examples: Tools in Action

**Archimedes and the Parabola**

Archimedes computed the area under a parabola by inscribing triangles. If T is the area of the first triangle, he showed the total area is:
$$T + \frac{T}{4} + \frac{T}{16} + \frac{T}{64} + \cdots$$

This is a series. The partial sums Sₙ = T(1 + 1/4 + ⋯ + 1/4ⁿ) form a sequence. Archimedes claimed S = 4T/3.

**The Babylonians and √2**

The Babylonians (~1800 BCE) computed √2 by iteration:
- Start with x₁ = 2
- Compute x₂ = (x₁ + 2/x₁)/2 = 1.5
- Compute x₃ = (x₂ + 2/x₂)/2 = 1.4167...
- Continue: x₄ = 1.41422...

This is a recursive sequence. It "approaches" √2 — but what does that mean?

**The question**: Both examples produce sequences that seem to "approach" a value. How do we make this precise? How do we prove it?

### When Algebra Gives Closed Forms

Most sequences have no nice formula for Sₙ or Pₙ. But some do — and pure algebra (no limits yet!) gives the formula.

### Geometric Partial Sums

**Claim**: For r ≠ 1:
$$S_n = 1 + r + r^2 + \cdots + r^n = \frac{1 - r^{n+1}}{1 - r}$$

*Proof*: Compute Sₙ − rSₙ:
$$S_n - rS_n = (1 + r + \cdots + r^n) - (r + r^2 + \cdots + r^{n+1}) = 1 - r^{n+1}$$

So Sₙ(1 − r) = 1 − r^{n+1}, giving the formula. ∎

**Remark**: This is pure algebra. We haven't said what happens as n → ∞.

### Telescoping Series

**The idea**: If consecutive terms cancel, only the endpoints survive.

**Definition**: A series *telescopes* if aₖ = tₖ − tₖ₋₁ for some sequence (tₖ).

**Theorem**: If aₖ = tₖ − tₖ₋₁, then:
$$S_n = \sum_{k=1}^{n} a_k = t_n - t_0$$

*Proof*:
$$S_n = (t_1 - t_0) + (t_2 - t_1) + (t_3 - t_2) + \cdots + (t_n - t_{n-1}) = t_n - t_0$$

Everything cancels except the endpoints. ∎

**Example**: Compute Σ1/(k(k+1)).

Use partial fractions: 1/(k(k+1)) = 1/k − 1/(k+1).

This is tₖ − tₖ₋₁ with tₖ = −1/(k+1) (or equivalently, tₖ = 1/k with a shift).

So Sₙ = (1 − 1/2) + (1/2 − 1/3) + ⋯ + (1/n − 1/(n+1)) = 1 − 1/(n+1).

**Remark**: We have Sₙ = 1 − 1/(n+1). What happens as n → ∞? That requires convergence (§2.2) and limit laws (§2.3).

### Telescoping Products

**The idea**: Same principle multiplicatively.

**Definition**: A product *telescopes* if aₖ = tₖ/tₖ₋₁ for some sequence (tₖ).

**Theorem**: If aₖ = tₖ/tₖ₋₁, then:
$$P_n = \prod_{k=1}^{n} a_k = \frac{t_n}{t_0}$$

**Example**: Compute Π_{k=2}^{n}(1 − 1/k²).

Factor: 1 − 1/k² = (k−1)(k+1)/k² = [(k−1)/k] · [(k+1)/k].

Write as:
$$\prod_{k=2}^{n} \frac{(k-1)(k+1)}{k^2} = \prod_{k=2}^{n} \frac{k-1}{k} \cdot \prod_{k=2}^{n} \frac{k+1}{k}$$

First product: (1/2)(2/3)(3/4)⋯((n−1)/n) = 1/n.

Second product: (3/2)(4/3)(5/4)⋯((n+1)/n) = (n+1)/2.

So Pₙ = (1/n) · (n+1)/2 = (n+1)/(2n).

**Remark**: We have Pₙ = (n+1)/(2n). What happens as n → ∞?

### The Question

We've computed:
- Geometric: Sₙ = (1 − r^{n+1})/(1 − r)
- Telescoping series: Sₙ = 1 − 1/(n+1)
- Telescoping product: Pₙ = (n+1)/(2n)
- Babylonian: x₁ = 2, x₂ = 1.5, x₃ = 1.4167, ...

What happens "as n → ∞"? What does "→" even mean?

This is the question of **convergence** — next section.

---

## 2.2 Convergence

### The Definition

**Motivation**: What should "aₙ approaches L" mean?

Informal: the terms get arbitrarily close to L and stay close.

Precise: no matter how small a tolerance ε > 0 you specify, eventually (past some threshold N) all terms are within ε of L.

**The ε-N game**: Think of it as a challenge. An adversary picks any tolerance ε > 0. You must respond with a threshold N. You win if all terms past N are within ε of L. A sequence converges iff you have a winning strategy for every ε.

**Definition**: A sequence (aₙ) *converges* to L, written aₙ → L or lim aₙ = L, if:
$$\forall \varepsilon > 0 \, \exists N \in \mathbb{N} \, \forall n > N: |a_n - L| < \varepsilon$$

**Definition**: A sequence *converges* if it converges to some L. Otherwise it *diverges*.

### First Examples (Worked from the Definition)

**Example**: 1/n → 0.

*Proof*: Let ε > 0. By the Archimedean property, choose N > 1/ε. For n > N:
$$|1/n - 0| = 1/n < 1/N < \varepsilon$$
∎

**Example**: Constant sequence c → c.

*Proof*: Let ε > 0. Choose N = 1. For n > N: |c − c| = 0 < ε. ∎

**Example**: n/(n+1) → 1.

*Proof*: Let ε > 0. We have |n/(n+1) − 1| = 1/(n+1). Choose N > 1/ε − 1. For n > N:
$$|n/(n+1) - 1| = 1/(n+1) < 1/(N+1) < \varepsilon$$
∎

**Example**: (−1)ⁿ diverges.

*Proof*: Suppose (−1)ⁿ → L for some L. Take ε = 1/2. Then eventually all terms are within 1/2 of L.

But the terms alternate between 1 and −1, which are distance 2 apart. They cannot both be within 1/2 of any single value L. Contradiction. ∎

**Remark**: This proof doesn't use subsequences — just the observation that consecutive terms can't both be close to L.

### Geometric Sequences

**Lemma (Bernoulli's Inequality)**: For x ≥ −1 and n ∈ ℕ:
$$(1 + x)^n \geq 1 + nx$$

*Proof*: Induction on n. ∎

**Theorem**: For |r| < 1, we have rⁿ → 0.

*Proof idea*: For 0 < |r| < 1, write |r| = 1/(1+h) where h > 0. By Bernoulli, (1+h)ⁿ ≥ 1 + nh, so |r|ⁿ ≤ 1/(1+nh) → 0.

**Theorem**: For |r| > 1, the sequence (rⁿ) diverges. For r > 1, it diverges to +∞.

**Remark**: For r = 1: constant sequence 1 → 1. For r = −1: (−1)ⁿ diverges.

### Basic Properties

**Theorem (Uniqueness of Limits)**: If aₙ → L and aₙ → M, then L = M.

*Proof idea*: If L ≠ M, take ε = |L−M|/2. Eventually terms are within ε of L and within ε of M. Triangle inequality gives contradiction.

**Definition**: A sequence (aₙ) is *bounded* if there exists M > 0 with |aₙ| ≤ M for all n.

**Theorem**: Convergent sequences are bounded.

*Proof idea*: Take ε = 1. Eventually |aₙ − L| < 1, so |aₙ| < 1 + |L|. The finitely many earlier terms are bounded by their maximum.

**Remark**: Converse is false! (−1)ⁿ is bounded but divergent.

**Theorem (Tails Determine Convergence)**: Changing finitely many terms doesn't affect convergence or the limit.

*Proof idea*: The ε-N definition only examines terms past threshold N.

### Divergence to Infinity

**Definition**: We say aₙ → +∞ if for every M > 0, there exists N with aₙ > M for all n > N.

Similarly aₙ → −∞ if for every M > 0, there exists N with aₙ < −M for all n > N.

**Example**: n² → +∞.

*Proof*: Given M > 0, choose N > √M. For n > N: n² > N² > M. ∎

---

## 2.3 Limit Theorems

### Limits Respect Order

**Theorem**: If aₙ → L and aₙ ≥ 0 for all n, then L ≥ 0.

*Proof idea*: If L < 0, take ε = |L|/2. Eventually aₙ < L/2 < 0, contradicting aₙ ≥ 0.

**Theorem**: If aₙ → L, bₙ → M, and aₙ ≤ bₙ for all n, then L ≤ M.

*Proof idea*: Apply previous theorem to bₙ − aₙ ≥ 0.

**Warning**: Strict inequality is NOT preserved. We have 1/n > 0 for all n, but lim 1/n = 0, not > 0.

**Theorem (Squeeze Theorem)**: If aₙ ≤ bₙ ≤ cₙ and aₙ → L and cₙ → L, then bₙ → L.

*Proof idea*: Given ε, eventually L − ε < aₙ ≤ bₙ ≤ cₙ < L + ε.

### Limits Respect Algebra

**Theorem (Limit Laws)**: Suppose aₙ → L and bₙ → M. Then:

1. *Sum*: aₙ + bₙ → L + M
2. *Difference*: aₙ − bₙ → L − M
3. *Constant multiple*: caₙ → cL
4. *Product*: aₙbₙ → LM
5. *Quotient*: aₙ/bₙ → L/M (provided M ≠ 0 and bₙ ≠ 0)

*Proof ideas*:
- Sum: Triangle inequality, split ε/2.
- Product: Use aₙbₙ − LM = aₙ(bₙ − M) + M(aₙ − L), plus boundedness of (aₙ).
- Quotient: First prove 1/bₙ → 1/M, then apply product.

**Theorem (Square Root Law)**: If sₙ → L with sₙ ≥ 0 and L ≥ 0, then √sₙ → √L.

*Proof idea*: Conjugate trick — |√sₙ − √L| = |sₙ − L|/(√sₙ + √L).

### Applications: Finishing What We Started

Now we can complete the computations from §2.1.

**Geometric Series**

From §2.1: Sₙ = (1 − r^{n+1})/(1 − r).

From §2.2: rⁿ → 0 for |r| < 1.

By limit laws:
$$\lim_{n \to \infty} S_n = \lim_{n \to \infty} \frac{1 - r^{n+1}}{1-r} = \frac{1 - 0}{1-r} = \frac{1}{1-r}$$

**Theorem**: For |r| < 1:
$$\sum_{n=0}^{\infty} r^n = \frac{1}{1-r}$$

**Archimedes Resolved**

The area under the parabola is:
$$T\left(1 + \frac{1}{4} + \frac{1}{16} + \cdots\right) = T \cdot \frac{1}{1 - 1/4} = \frac{4T}{3}$$

Our tools have reached the answer Archimedes knew!

**Telescoping Series**

From §2.1: Sₙ = 1 − 1/(n+1).

By limit laws: Sₙ → 1 − 0 = 1.

**Theorem**:
$$\sum_{k=1}^{\infty} \frac{1}{k(k+1)} = 1$$

**Telescoping Product**

From §2.1: Pₙ = (n+1)/(2n) = (1/2)(1 + 1/n).

By limit laws: Pₙ → (1/2)(1 + 0) = 1/2.

**Theorem**:
$$\prod_{k=2}^{\infty} \left(1 - \frac{1}{k^2}\right) = \frac{1}{2}$$

**More Applications**

- Rational functions: divide by highest power, apply limit laws
- Conjugate trick: √(n+1) − √n = 1/(√(n+1) + √n) → 0

### Density of Rationals

**Theorem (Density of ℚ)**: Between any two real numbers lies a rational.

*Proof*: Uses Archimedean property to find suitable denominator.

**Theorem**: Every real number is the limit of a sequence of rationals.

*Proof*: Given x ∈ ℝ, use density to find rₙ ∈ ℚ with |rₙ − x| < 1/n. By squeeze, rₙ → x.

**Payoff**: Sequences of rationals really do reach all of ℝ!

**Interpretation**: ℚ is dense in ℝ. The rationals are everywhere, filling every interval. Yet they're countable, while ℝ is not. We've filled holes without adding isolated regions.

### The Limits of Limit Laws

**Key observation**: Limit laws tell us *what* the limit is, but not *that* it exists.

If we know aₙ → L and bₙ → M, we can conclude aₙ + bₙ → L + M. But limit laws can't conjure convergence from nothing.

**Example**: The Babylonian sequence x₁ = 2, xₙ₊₁ = (xₙ + 2/xₙ)/2.

*If* we knew xₙ → L, limit laws would give:
$$L = \frac{L + 2/L}{2} \implies L^2 = 2 \implies L = \sqrt{2}$$

But this doesn't prove convergence! We've only shown: *if* the sequence converges, *then* it converges to √2.

We need a new tool that uses completeness to guarantee existence...

---

## 2.4 Monotone Convergence

### The Key Insight

Limit laws derive new limits from old, using the ordered field axioms. But they can't prove a sequence of rationals converges to an irrational — that would require creating √2 from nothing.

The Monotone Convergence Theorem uses *completeness* to guarantee existence.

### Monotone Sequences

**Definition**: A sequence (aₙ) is:
- *Increasing* if aₙ ≤ aₙ₊₁ for all n
- *Strictly increasing* if aₙ < aₙ₊₁ for all n
- *Decreasing* if aₙ ≥ aₙ₊₁ for all n
- *Monotone* if it is increasing or decreasing

### The Theorem

**Theorem (Monotone Convergence Theorem)**: A monotone bounded sequence converges.

Moreover:
- If (aₙ) is increasing and bounded above, then aₙ → sup{aₙ : n ∈ ℕ}
- If (aₙ) is decreasing and bounded below, then aₙ → inf{aₙ : n ∈ ℕ}

*Proof idea (increasing case)*: Let L = sup{aₙ}. By the ε-characterization of supremum, for any ε > 0, some aₙ > L − ε. Since (aₙ) is increasing, all later terms are also > L − ε. Since L is an upper bound, all terms are ≤ L < L + ε. So eventually |aₙ − L| < ε.

**Remark**: This is where completeness enters the theory of limits. MCT fails in ℚ: the sequence 1, 1.4, 1.41, 1.414, ... is increasing and bounded in ℚ, but has no rational limit.

### The Babylonian Sequence and √2

**Sequence**: x₁ = 2, xₙ₊₁ = (xₙ + 2/xₙ)/2.

**Theorem**: xₙ → √2.

*Proof outline*:

**Step 1**: xₙ ≥ √2 for all n ≥ 2.

By AM-GM: xₙ₊₁ = (xₙ + 2/xₙ)/2 ≥ √(xₙ · 2/xₙ) = √2.

**Step 2**: (xₙ) is decreasing for n ≥ 2.

Since xₙ² ≥ 2: xₙ₊₁ = (xₙ + 2/xₙ)/2 ≤ (xₙ + xₙ)/2 = xₙ.

**Step 3**: By MCT, xₙ → L for some L ≥ √2.

**Step 4**: By limit laws (as computed in §2.3): L = √2.

**Payoff**: Our tool reaches √2! The Babylonian sequence, defined using only rationals, converges to an irrational.

**Historical note**: This algorithm was known to the Babylonians ~1800 BCE. It converges remarkably fast: each iteration roughly doubles the number of correct digits.

### The Number e

**Definition**: We define e = lim(1 + 1/n)ⁿ, provided this limit exists.

**Theorem**: The sequence aₙ = (1 + 1/n)ⁿ is increasing and bounded above by 3. Hence e exists.

*Proof of increasing*: By AM-GM inequality (outline).

*Proof of bounded*: By binomial theorem and k! ≥ 2^{k−1}.

**Theorem**: The sequence bₙ = (1 + 1/n)^{n+1} is decreasing and bounded below.

**Corollary**: Both sequences converge to e. The nested intervals [(1+1/n)ⁿ, (1+1/n)^{n+1}] all contain e, with lengths → 0.

**Remark**: Better estimates give e ≈ 2.71828...

### More MCT Examples

**Nested radicals**: a₁ = 1, aₙ₊₁ = √(2 + aₙ).

- Bounded above by 2 (induction)
- Increasing (check aₙ₊₁² − aₙ² > 0)
- MCT ⟹ converges; limit laws ⟹ limit is 2

**Interpretation**: √(2 + √(2 + √(2 + ⋯))) = 2.

**Power tower**: a₁ = 1, aₙ₊₁ = (√2)^{aₙ}.

- Bounded above by 2 (induction)
- Increasing (verify)
- MCT ⟹ converges; limit laws ⟹ limit is 2

**Interpretation**: √2^{√2^{√2^{⋯}}} = 2.

### Series via MCT

**Theorem (Nonnegative Series Criterion)**: If aₙ ≥ 0, then Σaₙ converges iff the partial sums Sₙ are bounded.

*Proof*: Partial sums are increasing (since aₙ ≥ 0). Apply MCT.

**Example**: Σ1/2ⁿ converges.

*Proof*: Sₙ = 2 − 1/2ⁿ < 2. Bounded, so converges. (We already know the sum is 2.)

**Example**: Σ1/n² converges.

*Proof*: For n ≥ 2: 1/n² < 1/(n(n−1)) = 1/(n−1) − 1/n (telescoping!).

So Sₙ < 1 + Σₖ₌₂ⁿ (1/(k−1) − 1/k) = 1 + (1 − 1/n) < 2.

Bounded, so converges.

**Remark**: We've proven convergence *without computing the limit*. The sum is π²/6, but proving this requires Fourier analysis!

---

## 2.5 Representing Real Numbers

### The Naming Problem

How do we describe a specific real number?

- Rationals: finite data (two integers p, q)
- Integers: finite strings of digits

But ℝ is uncountable, while finite strings form a countable set.

**Conclusion**: Representing arbitrary reals *requires* infinite processes. Limits aren't just convenient — they're necessary.

### Decimal Expansions

**Integers in Base 10** (review): n = dₖ·10ᵏ + dₖ₋₁·10^{k−1} + ⋯ + d₁·10 + d₀.

**Finite Decimals**: 0.d₁d₂...dₙ = Σₖ₌₁ⁿ dₖ/10ᵏ.

These are rationals with denominators dividing some power of 10.

**Infinite Decimals**: 0.d₁d₂d₃... represents the series Σₙ₌₁^∞ dₙ/10ⁿ.

### Every Decimal Converges

**Theorem**: Every infinite decimal represents a real number in [0, 1].

*Proof*: The partial sums Sₙ = Σₖ₌₁ⁿ dₖ/10ᵏ are increasing (all dₖ ≥ 0).

They're bounded: Sₙ ≤ 9/10 + 9/100 + ⋯ = 9 · (1/10)/(1 − 1/10) = 1.

By MCT, the series converges.

### Every Real Has a Decimal

**Theorem**: Every x ∈ [0, 1) has a decimal expansion.

*Construction (Greedy algorithm)*:
- d₁ = ⌊10x⌋ (the "tenths digit")
- dₙ = ⌊10ⁿx⌋ − 10⌊10^{n−1}x⌋

**Theorem**: The decimal 0.d₁d₂d₃... constructed above converges to x.

*Proof idea*: By construction, Sₙ ≤ x < Sₙ + 1/10ⁿ. Apply squeeze.

### Uniqueness (Almost)

**Theorem**: Decimal representations are unique except:
$$0.d_1 d_2 \cdots d_k 999\ldots = 0.d_1 d_2 \cdots (d_k + 1) 000\ldots$$

**Example**: 0.999... = 1.

*Proof*: 0.999... = Σ9/10ⁿ = 9 · (1/10)/(1 − 1/10) = 1.

**Convention**: Avoid trailing 9s. Then every real has a unique decimal expansion.

### Characterizing Rationals

**Theorem**: x ∈ ℚ if and only if its decimal expansion is eventually repeating.

*Proof (⟸)*: A repeating block is a geometric series, hence rational.

*Proof (⟹)*: Long division of p by q cycles through at most q remainders. Once a remainder repeats, the digits repeat.

**Corollary**: x is irrational iff its decimal never becomes periodic.

### Irrationals and Transcendentals

**Examples**:
- √2 = 1.41421356... (algebraic irrational, non-repeating)
- Liouville's number L = Σ10^{−n!} = 0.110001000000000000000001... (transcendental)

**The big picture**:
- Rationals: countable, eventually periodic decimals
- Algebraic irrationals (like √2): countable, non-repeating
- Transcendentals: uncountable, "most" reals

Most real numbers cannot be described by any finite means. Decimals give a systematic way to approximate any real, but the full decimal of a "generic" real cannot be computed by any algorithm.

### Preview: Other Representations

Decimals privilege base 10 — an arbitrary choice. Other representations exist:

- **Binary**: base 2, digits 0 and 1
- **Continued fractions**: [a₀; a₁, a₂, ...] = a₀ + 1/(a₁ + 1/(a₂ + ⋯))

Continued fractions have remarkable properties:
- Convergents give "best" rational approximations
- Quadratic irrationals ↔ eventually periodic CFs
- The CF for √2 explains the Pell equation

We develop this theory in Chapter 4, once we have tools for sequences that oscillate rather than march monotonically.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | The crisis of foundations; ε-N as resolution |
| 2.1 Sequences and Series | Sequences as tools; algebraic closed forms |
| 2.2 Convergence | The ε-N definition; basic examples |
| 2.3 Limit Theorems | Ordered field axioms → limit laws; applications |
| 2.4 Monotone Convergence | Completeness → existence; e and √2 |
| 2.5 Representing Reals | Decimals; every real reachable |

## Key Theorems

1. **Geometric partial sums**: Sₙ = (1 − r^{n+1})/(1 − r)
2. **Telescoping series**: Σ(tₖ − tₖ₋₁) = tₙ − t₀
3. **Telescoping products**: Π(tₖ/tₖ₋₁) = tₙ/t₀
4. **Uniqueness of limits**
5. **Convergent ⟹ bounded** (converse false)
6. **rⁿ → 0 for |r| < 1** (Bernoulli)
7. **Limit laws**: sum, product, quotient, square root
8. **Squeeze theorem**
9. **Geometric series**: Σrⁿ = 1/(1−r) for |r| < 1
10. **Density of ℚ**: every real is a limit of rationals
11. **Monotone Convergence Theorem**
12. **e exists**: (1 + 1/n)ⁿ is increasing and bounded
13. **Babylonian → √2** via MCT
14. **Every decimal converges**; **every real has a decimal**
15. **Rationals ↔ eventually periodic decimals**

---

## Exercises (Selected)

### Section 2.1
- Prove the geometric partial sum formula by induction
- Find a telescoping form for Σ1/((2k−1)(2k+1))
- Compute Π_{k=1}^{n}(1 + 1/k) — does it telescope?
- Compute the first 5 terms of the Babylonian sequence for √3

### Section 2.2
- Prove from the definition: (2n−1)/(3n+2) → 2/3
- Prove from the definition: n/(n² + 1) → 0
- Prove: if aₙ → L, then |aₙ| → |L|
- Find the flaw: "Let S = 1 + 1 + 1 + ⋯. Then S = 1 + S, so 0 = 1."
- Prove: a^{1/n} → 1 for any a > 0
- ★ Prove: n^{1/n} → 1

### Section 2.3
- Prove the product limit law formally
- Prove the reciprocal limit law
- Compute: lim(1 + 2 + ⋯ + n)/n²
- Compute: lim(√(n² + n) − n)
- Prove: |aₙ − L| ≤ bₙ and bₙ → 0 ⟹ aₙ → L
- Use the telescoping product to prove: Σ_{k=2}^∞ log(1 − 1/k²) = −log 2

### Section 2.4
- Prove MCT for the decreasing case
- Prove (1 + 1/n)^{n+1} is decreasing
- Prove (1 + 1/n)ⁿ and (1 + 1/n)^{n+1} have the same limit
- Let a₁ = 1, aₙ₊₁ = (aₙ + 3)/(aₙ + 1). Prove convergence and find the limit.
- Prove Σ1/n! converges
- ★ Prove: if aₙ₊₁/aₙ → L < 1, then aₙ → 0

### Section 2.5
- Find the decimal expansion of 1/7
- Which rationals have terminating (finite) decimal expansions?
- Prove: 0.(d₁d₂...dₖ) = (d₁d₂...dₖ)/(10ᵏ − 1) where the bar denotes repetition
- Prove: in base b, 0.(b−1)(b−1)(b−1)... = 1 (generalize 0.999... = 1)
- Construct a decimal that is clearly irrational (no eventual period)
- ★ Prove: every real is the limit of a sequence of irrationals

---

## Dependencies

**Requires from Chapter 1**:
- Completeness axiom (sup/inf exist)
- Archimedean property
- Ordered field axioms
- Triangle inequality

**Sets up for later chapters**:
- Chapter 3: Subsequences, Bolzano-Weierstrass, limsup/liminf, Cauchy
- Chapter 4: Series tests, continued fractions, Archimedes' π, contractions
- Chapter 5: Rearrangements, double sums, Tannery
- Chapter 6: Defining exp, log, trig via series