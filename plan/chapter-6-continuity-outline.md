# Chapter 6: Continuity

## Overview

We've studied sequences converging to numbers. Which functions "respect" that structure? The answer is continuity — functions that preserve convergence. On closed bounded intervals, continuous functions have remarkable forced properties. Power series provide a fundamental way to build continuous functions.

**The arc:**
> Definition(s) of continuity → Building continuous functions → Power series are continuous → Properties on [a,b] → Uniform continuity

---

## Historical Prelude

- What is a function? Euler's formulas → Fourier's challenge → Dirichlet's general definition
- What is continuity? Intuition: "no breaks," "draw without lifting pen"
- Dirichlet's function (1829): 1 on rationals, 0 on irrationals — discontinuous everywhere
- Weierstrass's monster (1872): continuous everywhere, differentiable nowhere
- These examples forced rigorous definitions

---

## 6.1 Continuity

**[NOTE: Need to decide which definition is primary]**

**Option A (Sequences first)**:

- Motivation: which functions preserve convergence?
- Sequential definition: f continuous at a iff (xₙ → a ⟹ f(xₙ) → f(a))
- ε-δ definition as equivalent local formulation
- Prove equivalence

**Option B (ε-δ first)**:

- Historical motivation: capturing "no breaks"
- ε-δ definition: ∀ε > 0 ∃δ > 0: |x − a| < δ ⟹ |f(x) − f(a)| < ε
- Connection to ε-N game from Ch 2
- Sequential characterization as equivalent (often easier for proofs)
- Prove equivalence

**Then (either way):**

- Limits of functions: lim_{x→a} f(x) (with 0 < |x − a|)
- Sequential characterization of function limits
- One-sided limits
- Continuity ⟺ lim_{x→a} f(x) = f(a)
- Types of discontinuities: removable, jump, essential
- Examples: sin(x)/x at 0 (removable), sign(x) at 0 (jump), sin(1/x) at 0 (essential), Dirichlet (essential everywhere)

---

## 6.2 Building Continuous Functions

- **Algebra of continuous functions**: sums, differences, products, quotients
  - Proof via sequential characterization + limit laws from Ch 2
- **Composition**: g continuous at a, f continuous at g(a) ⟹ f ∘ g continuous at a
- **Corollaries**: |f|, max(f,g), min(f,g) continuous
- **Basic examples**:
  - Constants and f(x) = x are continuous
  - Polynomials (induction on sums/products)
  - Rational functions (where denominator ≠ 0)
  - √x on [0, ∞)

---

## 6.3 Power Series I: Continuity

- **Definition**: power series Σaₙxⁿ
- **Radius of convergence R**: recall ratio/root tests from Ch 4
- **Theorem**: Power series are continuous on (−R, R)
  - Proof via Tannery (Ch 5)
- **Theorem (Abel)**: If Σaₙ converges, then lim_{x→1⁻} Σaₙxⁿ = Σaₙ
  - Power series is left-continuous at boundary when series converges there
- **Why Abel matters**: The xⁿ example
  - fₙ(x) = xⁿ converges pointwise on [0,1]
  - Limit exists at endpoint x = 1 (it's 1)
  - But limit function f is discontinuous at x = 1!
  - Convergence at endpoint doesn't automatically give continuity
  - Abel says power series are special: convergence of series ⟹ continuity
- **Warning (xⁿ)**: Limits of continuous functions can fail to be continuous
- **Remark**: Full story of when limits of functions preserve continuity in Function Spaces chapter
- **Preview**: Power Series II in derivatives chapter (term-by-term differentiation)

---

## 6.4 Continuous Functions on [a,b]

### The Intermediate Value Theorem

- **Theorem (IVT)**: If f continuous on [a,b] and y between f(a) and f(b), then f(c) = y for some c
- Proof via completeness: c = sup{x : f(x) < y}
- **Corollary**: Continuous image of interval is interval
- **Applications**:
  - nth roots exist (f(x) = xⁿ)
  - Fixed point theorem: f: [a,b] → [a,b] continuous ⟹ f(c) = c for some c
  - Every odd-degree polynomial has a real root

### Boundedness and the Extreme Value Theorem

- **Theorem**: Continuous on [a,b] ⟹ bounded
  - Proof via Bolzano-Weierstrass
- **Theorem (EVT)**: Continuous on [a,b] ⟹ attains maximum and minimum
  - Proof via BW: xₙ with f(xₙ) → sup f; extract convergent subsequence

### Monotone Functions and Inverses

- **Definition**: increasing, decreasing, strictly monotone
- **Theorem**: Monotone on (a,b) ⟹ one-sided limits exist at every point
  - Proof via sup/inf
- **Corollary**: Monotone functions have only jump discontinuities
- **Theorem**: Strictly monotone ⟹ injective
- **Theorem**: Strictly monotone + continuous on [a,b] ⟹ inverse is continuous
  - Proof: f injective (strict monotone) + surjective onto range (IVT) ⟹ f⁻¹ exists; continuity via subsequential limits
- **Payoff**: When we define log = exp⁻¹, arcsin = sin⁻¹, etc., continuity is automatic

---

## 6.5 Uniform Continuity

### The Problem

- In ordinary continuity, δ depends on ε *and* the point a
- Can one δ work for all points simultaneously?

### Definition

- f uniformly continuous on S if ∀ε > 0 ∃δ > 0: x, y ∈ S and |x − y| < δ ⟹ |f(x) − f(y)| < ε

### Non-examples

- f(x) = 1/x on (0,1): near 0, need smaller and smaller δ
- f(x) = x² on ℝ: as x → ∞, function changes faster and faster

### Results

- **Theorem**: Uniformly continuous ⟹ continuous (trivial)
- **Theorem**: Continuous on [a,b] ⟹ uniformly continuous on [a,b]
  - Proof via BW: if not, get sequences xₙ, yₙ with |xₙ − yₙ| → 0 but |f(xₙ) − f(yₙ)| ≥ ε; extract convergent subsequence, get contradiction
- **Extension Theorem**: Uniformly continuous on (a,b) ⟹ extends to continuous function on [a,b]
  - Proof: show lim_{x→a⁺} f(x) exists via Cauchy criterion
- **Corollary**: Uniformly continuous on bounded set ⟹ bounded

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Functions wilder than expected; need rigorous definitions |
| 6.1 Continuity | Definitions (sequential, ε-δ), limits of functions, discontinuities |
| 6.2 Building | Algebra of continuous functions, basic examples |
| 6.3 Power Series I | Continuity inside radius, Abel at boundary, xⁿ warning |
| 6.4 Functions on [a,b] | IVT, EVT, monotone inverses |
| 6.5 Uniform Continuity | One δ for all points; closed intervals force it |

## Key Theorems

1. Sequential ⟺ ε-δ characterization of continuity
2. Algebra: sums, products, quotients, compositions preserve continuity
3. Power series continuous on (−R, R) via Tannery
4. Abel's theorem: continuity at boundary when series converges
5. IVT: continuous image of interval is interval
6. EVT: continuous on [a,b] ⟹ bounded and attains bounds
7. Continuous on [a,b] ⟹ uniformly continuous
8. Strictly monotone + continuous ⟹ continuous inverse

---

## Exercises (Selected)

### Section 6.1

- Prove f(x) = x sin(1/x) (with f(0) = 0) is continuous at 0
- Show Dirichlet's function is discontinuous everywhere
- Classify discontinuities of f(x) = ⌊x⌋ (floor function)
- If f and g continuous and f = g on a dense set, prove f = g everywhere

### Section 6.2

- Prove max(f, g) = (f + g + |f − g|)/2
- Give an example where f + g is continuous but f and g are not
- Prove f continuous and nonzero at a ⟹ f nonzero on some neighborhood of a

### Section 6.3

- Use Abel's theorem to show ln(2) = 1 − 1/2 + 1/3 − 1/4 + ⋯
- If Σaₙxⁿ = 0 for all x in (−r, r), prove aₙ = 0 for all n
- Prove Σxⁿ/n is continuous on (−1, 1) and left-continuous at x = 1

### Section 6.4

- Prove every polynomial of odd degree has a real root
- Show f(x) = x + sin(x) has a unique fixed point
- Give an example of a bounded continuous function on (0,1) that doesn't attain its sup
- If f strictly increasing and continuous on [a,b], prove f⁻¹ is strictly increasing

### Section 6.5

- Give an example of a continuous function on (0,1) that is not uniformly continuous
- Prove f(x) = √x is uniformly continuous on [0, ∞)
- Prove f Lipschitz (|f(x) − f(y)| ≤ K|x − y|) ⟹ f uniformly continuous
- Is sin(x²) uniformly continuous on ℝ?

---

## Dependencies

**Requires from earlier chapters**:

- Completeness of ℝ, sup/inf (Chapter 1)
- Sequences, limit laws, Bolzano-Weierstrass, Cauchy sequences (Chapters 2–3)
- Series, ratio/root tests, radius of convergence (Chapter 4)
- Tannery's theorem (Chapter 5)

**Sets up for later chapters**:

- Derivatives (Ch 7): EVT → Rolle → MVT; inverse function theorem; Power Series II
- Integration (Ch 8): uniform continuity → continuous functions are integrable
- Function Spaces: uniform convergence (full treatment of limits preserving continuity)