# Chapter 9: Completing the Integral

## Overview

This chapter extends the integral from continuous functions to the Lebesgue integral via the Daniell construction. The narrative arc:

> **Limitation → Axiom → Construction → Payoff → Perspective**

Students see that the convergence problem with Riemann integration is solved by adding a single axiom (MCT), which forces a unique extension. This extension is the Lebesgue integral—canonical, inevitable, and exactly what analysis needs.

---

## 9.1 Limits and Integrability

### What Riemann Can Do

- Beyond continuous: piecewise continuous, bounded with finitely many discontinuities
- State Riemann integrability criterion: f is integrable iff the set of discontinuities is null
  - Proof optional; the statement gives students a sense of the boundary
- Example: the ruler function (1/q at reduced fraction p/q, 0 at irrationals) is Riemann integrable

### What Riemann Cannot Do

- The characteristic function of the rationals χ_Q is not Riemann integrable
- This isn't just a pathology—it arises naturally as a limit (see below)

### The Convergence Problem

**Example 1**: Define f_n = n · χ_{[0,1/n]}. Then:
- Each f_n is integrable (piecewise continuous)
- f_n → 0 pointwise
- But ∫f_n = 1 for all n

The limit is integrable, but ∫f_n ↛ ∫f.

**Example 2**: Enumerate the rationals as {q_1, q_2, ...}. Define f_n = χ_{q_1, ..., q_n}. Then:
- Each f_n is integrable (zero except at finitely many points, so ∫f_n = 0)
- f_n ↗ χ_Q pointwise
- But χ_Q is not Riemann integrable

The limit of integrable functions may not be integrable.

### Uniform Convergence

**Theorem**: If f_n → f uniformly and each f_n is integrable, then f is integrable and ∫f_n → ∫f.

This works, but is too restrictive:
- Example: f_n(x) = x^n on [0,1] converges pointwise to χ_{1} but not uniformly
- Many natural limits (Fourier series, solutions to ODEs) are not uniform

### The Motivating Question

> Can we extend the integral to a larger class where limits behave well?
> What axiom would guarantee this?

---

## 9.2 The Daniell Construction

### The Axiomatic Gap

Our original axioms characterize the integral on C[a,b]:
1. I(k) = k(b-a) for constants
2. f ≤ g ⟹ I(f) ≤ I(g)
3. Interval additivity
4. Linearity

But they don't characterize the integral on all functions:
- Both upper and lower Darboux integrals satisfy these axioms
- They disagree on χ_Q
- The axioms say nothing about limits

**The missing axiom**: Monotone Convergence.

> If f_n ↗ f and sup I(f_n) < ∞, then f is integrable and I(f_n) → I(f).

Remarkable fact: adding this axiom forces a *unique* extension.

### Daniell's Condition

**Theorem (Dini)**: If f_n ∈ C[a,b] and f_n ↘ 0 pointwise, then f_n → 0 uniformly.

*Proof*: For each x, the sequence f_n(x) decreases to 0. The sets U_n = {x : f_n(x) < ε} are open (by continuity) and cover [a,b] (since f_n → 0). By compactness, finitely many cover [a,b]. Since they're nested, some single U_N covers [a,b]. ∎

**Corollary (Daniell's Condition)**: If f_n ∈ C[a,b] and f_n ↘ 0 pointwise, then I(f_n) → 0.

This is the bridge enabling the extension.

### Upper Functions

**Definition**: A function f : [a,b] → ℝ ∪ {+∞} is an *upper function* if there exists a sequence f_n ∈ C[a,b] with f_n ↗ f pointwise. Write **L↑** for this class.

**Examples**:
- Every continuous function (constant sequence)
- χ_{(a,b]} (approximate by continuous ramps)
- Any lower semicontinuous function

For f ∈ L↑ with approximating sequence f_n ↗ f, define:

$$I^+(f) = \lim_{n \to \infty} I(f_n)$$

This limit exists (possibly +∞) since I(f_n) is increasing.

### Well-Definedness

We must show I⁺(f) is independent of the choice of approximating sequence.

**Key Lemma**: If f_n ∈ C[a,b], f_n ↗ f, and g ∈ C[a,b] with g ≤ f, then I(g) ≤ lim I(f_n).

*Proof*: Define h_n = g - (f_n ∧ g).

Since f_n ↗ f ≥ g, we have f_n ∧ g ↗ g, so h_n ↘ 0 pointwise.

Each h_n is continuous, so by Daniell's condition, I(h_n) → 0.

Now h_n = g - (f_n ∧ g), so I(h_n) = I(g) - I(f_n ∧ g).

As n → ∞: I(f_n ∧ g) → I(g).

But f_n ∧ g ≤ f_n, so I(f_n ∧ g) ≤ I(f_n).

Taking limits: I(g) ≤ lim I(f_n). ∎

**Corollary**: I⁺ is well-defined.

*Proof*: If f_n ↗ f and g_m ↗ f, then each g_m ≤ f, so by the Key Lemma, I(g_m) ≤ lim I(f_n). Taking m → ∞: lim I(g_m) ≤ lim I(f_n). By symmetry, equality holds. ∎

### Properties of I⁺

**Proposition**: I⁺ satisfies:

(a) **Extension**: f ∈ C[a,b] ⟹ I⁺(f) = I(f)

(b) **Monotonicity**: f ≤ g ⟹ I⁺(f) ≤ I⁺(g)

(c) **Positive homogeneity**: c ≥ 0 ⟹ I⁺(cf) = cI⁺(f)

(d) **Additivity**: I⁺(f + g) = I⁺(f) + I⁺(g)

(e) **MCT for L↑**: If f_n ∈ L↑ and f_n ↗ f, then f ∈ L↑ and I⁺(f_n) → I⁺(f)

*Proofs*: (a)-(d) are straightforward. (e) uses a diagonalization argument.

### Integrable Functions

**Observation**: Not every integrable function is in L↑.

Example: χ_F where F is a closed set with empty interior (like the Cantor set). If f_n are continuous with f_n ↗ χ_F, then f_n ≤ 0 outside F, and by continuity (since F has empty interior), f_n ≤ 0 everywhere. But χ_F = 1 on F. Contradiction.

**Definition**: A function f : [a,b] → ℝ is *integrable* if there exist g, h ∈ L↑ with I⁺(g), I⁺(h) < ∞ such that f = g - h.

Write **L¹** for this class. For f = g - h, define:

$$I(f) = I^+(g) - I^+(h)$$

**Proposition**: I is well-defined on L¹.

*Proof*: If g₁ - h₁ = g₂ - h₂, then g₁ + h₂ = g₂ + h₁. Both sides are in L↑, so:

$$I^+(g_1) + I^+(h_2) = I^+(g_2) + I^+(h_1)$$

Rearranging: I⁺(g₁) - I⁺(h₁) = I⁺(g₂) - I⁺(h₂). ∎

### The Sandwiching Characterization

**Theorem**: f ∈ L¹ if and only if for every ε > 0, there exist g, h ∈ L↑ with g ≤ f ≤ h and I⁺(h) - I⁺(g) < ε.

This parallels Darboux's criterion, lifted from step functions to L↑.

---

## 9.3 Convergence Theorems

### Monotone Convergence Theorem

**Theorem (MCT)**: If f_n ∈ L¹, f_n ↗ f pointwise, and sup I(f_n) < ∞, then f ∈ L¹ and I(f_n) → I(f).

**Key Lemma**: If f ∈ L¹ and f ≥ 0, then f ∈ L↑.

*Proof sketch*: Write f = g - h with g, h ∈ L↑. Since f ≥ 0, we have g ≥ h. Approximate g and h by continuous functions and use the positive part construction to build continuous functions increasing to f.

**Proof of MCT**: 

Step 1: WLOG f_n ≥ 0 (replace f_n with f_n - f_1).

Step 2: By the Key Lemma, each f_n ∈ L↑.

Step 3: Apply MCT for L↑. ∎

### Dominated Convergence Theorem

**Theorem (DCT)**: If f_n ∈ L¹, f_n → f pointwise, and |f_n| ≤ g for some g ∈ L¹, then f ∈ L¹ and I(f_n) → I(f).

*Proof*:

**Step 1**: f is integrable.

Define g_n = inf_{k ≥ n} f_k and h_n = sup_{k ≥ n} f_k.

Then g_n ↗ f and h_n ↘ f (since f_n → f).

Also -g ≤ g_n ≤ h_n ≤ g.

Now g_n + g ≥ 0 and g_n + g ↗ f + g. By MCT, f + g ∈ L¹, so f ∈ L¹.

**Step 2**: The integrals converge.

By MCT: I(g_n) → I(f) (from below).

By MCT applied to -h_n: I(h_n) → I(f) (from above).

Since g_n ≤ f_n ≤ h_n: I(g_n) ≤ I(f_n) ≤ I(h_n).

By squeezing: I(f_n) → I(f). ∎

### Revisiting Earlier Failures

**Example**: f_n = n · χ_{[0,1/n]} → 0 but ∫f_n = 1.

Why doesn't DCT apply? There's no integrable dominating function: any g with g ≥ f_n for all n must satisfy g ≥ n on [0,1/n], so g(0+) = ∞.

DCT tells us exactly when interchange works—and diagnoses why it fails.

### Applications

**Differentiating under the integral sign**:

If f(x,t) is integrable in x for each t, and ∂f/∂t exists and is dominated by an integrable function, then:

$$\frac{d}{dt} \int_a^b f(x,t)\, dx = \int_a^b \frac{\partial f}{\partial t}(x,t)\, dx$$

**Interchanging sums and integrals**:

If ∑|f_n| is integrable, then:

$$\int \sum_{n=1}^{\infty} f_n = \sum_{n=1}^{\infty} \int f_n$$

**Continuity of parameter integrals**:

If f(x,t) is integrable in x for each t, continuous in t for each x, and dominated by an integrable function, then t ↦ ∫f(x,t)dx is continuous.

---

## 9.4 Measure from Integration

### The Integral-First Philosophy

The traditional approach to Lebesgue integration:
1. Define measure (length generalized to complicated sets)
2. Define measurable functions
3. Build the integral

Our approach reverses this:
1. Build the integral (via Daniell)
2. Derive measure as a byproduct

This isn't just pedagogical—it reflects that the integral is what we actually *use* in analysis. Measure serves the integral.

### Null Sets

**Definition**: E ⊂ [a,b] is a *null set* if for every ε > 0, E can be covered by countably many intervals of total length < ε.

Equivalently (from our integral): E is null if χ_E ∈ L¹ and I(χ_E) = 0.

**Examples**:
- Finite sets (cover each point by an interval of length ε/n)
- Countable sets (cover the nth point by an interval of length ε/2^n)
- The Cantor set (total length removed is 1, so what remains has length 0)

**Proposition**: A countable union of null sets is null.

*Proof*: Cover the nth null set with intervals of total length < ε/2^n. The combined covering has total length < ε. ∎

### Almost Everywhere

**Definition**: A property holds *almost everywhere* (a.e.) if it fails only on a null set.

**Examples**:
- "f = g a.e." means {x : f(x) ≠ g(x)} is null
- "f_n → f a.e." means {x : f_n(x) ↛ f(x)} is null

**Proposition**: If f = g a.e. and f ∈ L¹, then g ∈ L¹ and I(f) = I(g).

This justifies identifying functions that agree a.e.—they're interchangeable for integration purposes.

### Measurable Sets

**Definition**: E ⊂ [a,b] is *measurable* if χ_E ∈ L¹.

**Examples**:
- Every interval (χ_{[c,d]} is a difference of upper functions)
- Every open set (countable union of intervals)
- Every closed set (complement of open)
- Countable unions and intersections of measurable sets

**Non-example**: There exist non-measurable sets (requires axiom of choice). Their existence is not a defect—it reflects a fundamental limitation on extending length to all sets.

### Lebesgue Measure

**Definition**: For measurable E, define the *Lebesgue measure*:

$$\mu(E) = I(\chi_E)$$

**Properties**:
- μ(E) ≥ 0
- μ(∅) = 0
- μ([a,b]) = b - a
- **Countable additivity**: If E = ⊔_{n=1}^∞ E_n (disjoint), then μ(E) = ∑μ(E_n)

*Proof of countable additivity*: χ_E = ∑χ_{E_n}, and the partial sums are dominated by χ_E. Apply DCT. ∎

### What We're Not Doing

A full measure theory course develops:
- σ-algebras as abstract structures
- Carathéodory's extension theorem
- Abstract measure spaces (beyond ℝ)
- Product measures and Fubini's theorem in full generality

For the functional analysis we'll do, the integral-first approach suffices. Students who need more can take a dedicated measure theory course, and they'll find it easier having seen the Daniell perspective first.

---

## 9.5 Why Lebesgue?

We constructed an extension of the integral satisfying MCT. But was this the only choice? Could different constructions have led elsewhere?

### Uniqueness

**Theorem**: Any integral on C[a,b] satisfying our axioms plus MCT must agree with ours.

*Proof sketch*: MCT forces the value on upper functions (they're defined as monotone limits). Linearity then forces the value on L¹ = L↑ - L↑. ∎

There was no choice in the construction—MCT determined everything.

### Maximality

**Theorem**: The Lebesgue integral is the largest integral for which:

> f integrable ⟹ |f| integrable

*Proof idea*: Any extension satisfying this condition and MCT must agree with Lebesgue. Extensions violating this condition (like HK) integrate more functions but lose the absolute convergence property.

This "absolute convergence" property is what gives us the L^p space structure essential for functional analysis.

### Connection to Derivatives

**Theorem**: f ∈ L¹ if and only if f = F' almost everywhere for some absolutely continuous F.

**FTC for Lebesgue**: If F is absolutely continuous, then F' exists a.e., F' ∈ L¹, and:

$$\int_a^b F' = F(b) - F(a)$$

This is cleaner than the Riemann FTC (which requires F' to be continuous, or at least Riemann integrable).

**But**: Not every everywhere-derivative is Lebesgue integrable.

### Completeness (Preview)

The space L¹ with norm ‖f‖₁ = I(|f|) is complete: every Cauchy sequence converges.

More than this: L¹ is precisely the *completion* of C[a,b] under this norm. Every element of L¹ is a limit of continuous functions, and we've added exactly those limits—nothing more.

This is why the chapter is called "Completing the Integral." We will make this precise when we study metric spaces and completeness in Chapter X.

### Beyond Lebesgue: The Henstock-Kurzweil Integral

The FTC above has a gap. Consider:

$$F(x) = x^2 \sin(1/x^2), \quad F(0) = 0$$

This function is differentiable everywhere on [0,1], including at 0. But:

$$F'(x) = 2x\sin(1/x^2) - \frac{2}{x}\cos(1/x^2)$$

The second term oscillates wildly near 0. While F' exists everywhere, |F'| is not integrable—the oscillations don't cancel in absolute value.

So F' ∉ L¹, and the Lebesgue FTC doesn't apply. Yet morally, ∫₀¹ F' should equal F(1) - F(0) = sin(1).

**The Henstock-Kurzweil integral** extends Lebesgue to fix this. Its defining property:

> If F is differentiable everywhere, then F' is HK-integrable and ∫F' = F(b) - F(a).

**The idea**: In Riemann sums, the mesh δ is constant. In HK, we allow δ to vary with position—near bad points (like 0 above), we demand finer partitions.

**The relationship**:

> f is Lebesgue integrable ⟺ both f and |f| are HK integrable

Lebesgue captures absolute convergence; HK allows conditional convergence (oscillatory cancellation).

**The tradeoff**: HK has full FTC, but no complete norm. There are no "HK^p spaces." For functional analysis, Lebesgue is essential. For differential equations and antiderivatives, HK is natural.

### Closing Perspective

Different integrals answer different questions:
- **Riemann**: What's the simplest integral capturing area under curves?
- **Lebesgue**: What's the largest integral with good limit properties?
- **HK**: What's the largest integral with full FTC?

Three independent characterizations—uniqueness, maximality, completeness—all point to the Lebesgue integral. This is no coincidence. The Lebesgue integral is the canonical completion of integration theory, the inevitable answer to "extend integration while preserving limits."

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| 9.1 | Motivation: the convergence problem |
| 9.2 | Construction: the Daniell extension |
| 9.3 | Payoff: MCT, DCT, and applications |
| 9.4 | Vocabulary: null sets, a.e., measure |
| 9.5 | Perspective: why Lebesgue is canonical |

## Dependencies

**Requires from earlier chapters**:
- Continuous functions on [a,b]
- The integral on continuous functions (Chapter 7)
- Dini's theorem (Chapter 6, or prove here)
- Series and absolute convergence

**Sets up for later chapters**:
- Metric Spaces: completeness of L¹ as key example
- Function Spaces: L^p spaces, Banach and Hilbert spaces
- Fourier Analysis: DCT for interchanging limits
