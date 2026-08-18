# Chapter 7: Differentiation

## Overview

Differentiation captures instantaneous rate of change. The derivative f' is itself a function, and we can apply our tools to it. The Mean Value Theorem connects f' to the behavior of f. Power series are infinitely differentiable and equal their Taylor series — but general smooth functions need not be. The exponential is the crown jewel: built entirely from calculus.

**The arc:**
> Definition and rules → MVT (what f' says about f) → Power Series II: Taylor's theorem → The exponential → Newton's method

---

## Historical Prelude

- Fermat's method of adequality (1630s): finding maxima/minima by mysterious small increments
- Newton's fluxions, Leibniz's infinitesimals (1680s): calculus works, but what ARE these things?
- Berkeley's critique (1734): "ghosts of departed quantities"
- Weierstrass (1860s): the ε-δ definition finally makes it rigorous
- Weierstrass's monster (1872): continuous but nowhere differentiable — the gap between continuous and differentiable is vast

---

## 7.1 Differentiation Rules

### The Definition

- f differentiable at a if lim_{h→0} (f(a+h) - f(a))/h exists
- Alternative form: lim_{x→a} (f(x) - f(a))/(x - a)
- Notation: f'(a), df/dx, Df(a)

### Differentiability Implies Continuity

- Theorem: f differentiable at a ⟹ f continuous at a
- Warning: converse false! |x| at 0

### Basic Rules

- Linearity: (f + g)' = f' + g', (cf)' = cf'
- Product rule: (fg)' = f'g + fg'
- Quotient rule: (f/g)' = (f'g - fg')/g²
- Power rule: (xⁿ)' = nxⁿ⁻¹

### Chain Rule

- Theorem: (f ∘ g)'(a) = f'(g(a)) · g'(a)
- Proof via auxiliary function φ (handles g(a+h) = g(a) case)
- Leibniz notation: dy/dx = (dy/du)(du/dx)

### Inverse Function Derivative

- Theorem: (f⁻¹)'(f(a)) = 1/f'(a) when f'(a) ≠ 0
- Leibniz notation: dx/dy = 1/(dy/dx)
- Example: (√x)' = 1/(2√x)

---

## 7.2 The Mean Value Theorem and Consequences

### Fermat's Theorem

- Theorem: f has local extremum at c and f differentiable at c ⟹ f'(c) = 0
- Proof: one-sided difference quotients have opposite signs

### Rolle's Theorem

- Theorem: f continuous on [a,b], differentiable on (a,b), f(a) = f(b) ⟹ f'(c) = 0 for some c ∈ (a,b)
- Proof via EVT + Fermat

### The Mean Value Theorem

- Theorem: f continuous on [a,b], differentiable on (a,b) ⟹ f(b) - f(a) = f'(c)(b-a) for some c
- Proof: apply Rolle to g(x) = f(x) - [(f(b)-f(a))/(b-a)](x-a)
- Geometric interpretation: some tangent parallel to secant

### Cauchy's Mean Value Theorem

- Theorem: (f(b) - f(a))g'(c) = (g(b) - g(a))f'(c) for some c
- Proof: Rolle applied to appropriate combination

### Consequences: f' Controls f

- Theorem: f' = 0 on interval ⟹ f constant
- Theorem: f' > 0 on interval ⟹ f strictly increasing
- Corollary: f' ≥ 0 ⟺ f increasing; f' ≤ 0 ⟺ f decreasing
- Remark: first/second derivative tests for extrema in exercises

### Darboux's Theorem

- Theorem: If f differentiable on [a,b] and k between f'(a) and f'(b), then f'(c) = k for some c
- Consequence: f' has IVP even if discontinuous
- Consequence: f' cannot have jump discontinuities

### Lipschitz Functions

- Definition: |f(x) - f(y)| ≤ K|x - y| for all x, y
- Theorem: |f'| ≤ K on interval ⟹ f is Lipschitz with constant K
- Corollary: Lipschitz ⟹ uniformly continuous
- Connection: |f'| < 1 ⟹ contraction (links to Ch 4 and Newton)

### L'Hôpital's Rule

- Theorem: f(a) = g(a) = 0, g' ≠ 0 near a, lim f'/g' = L ⟹ lim f/g = L
- Proof via Cauchy MVT
- Warning: must check lim f'/g' exists
- Remark: ∞/∞ form and x → ∞ in exercises

---

## 7.3 Power Series II: Taylor's Theorem

### Higher Derivatives

- Definition: f'', f''', ..., f⁽ⁿ⁾
- Notation: f⁽⁰⁾ = f

### Taylor Polynomials

- Definition: Pₙ(x) = Σₖ₌₀ⁿ f⁽ᵏ⁾(a)/k! (x-a)ᵏ
- Unique polynomial of degree ≤ n matching f, f', ..., f⁽ⁿ⁾ at a

### Taylor's Theorem

- Generalized Rolle: f, f', ..., f⁽ⁿ⁾ all vanish at a, and f(b) = 0 ⟹ f⁽ⁿ⁺¹⁾(c) = 0 for some c
- Polynomial MVT: f and h share first n derivatives at a, and f(b) = h(b) ⟹ f⁽ⁿ⁺¹⁾(c) = h⁽ⁿ⁺¹⁾(c)
- Theorem (Lagrange remainder): f(x) = Pₙ(x) + f⁽ⁿ⁺¹⁾(c)/(n+1)! (x-a)ⁿ⁺¹
- Error bound: |f(x) - Pₙ(x)| ≤ M/(n+1)! |x-a|ⁿ⁺¹ where M bounds |f⁽ⁿ⁺¹⁾|

### Term-by-Term Differentiation

- Lemma: Σaₙxⁿ and Σnaₙxⁿ⁻¹ have same radius of convergence
- Theorem: f(x) = Σaₙxⁿ ⟹ f'(x) = Σnaₙxⁿ⁻¹ on (-R, R)
- Proof via Tannery/dominated convergence
- Corollary: Power series are infinitely differentiable
- Corollary: aₙ = f⁽ⁿ⁾(0)/n! — power series equal their Taylor series

### When Does the Taylor Series Converge to f?

- Key question: Rₙ(x) → 0?
- Power series: always yes (by construction)
- General smooth functions: not necessarily!
- Preview: smooth ≠ analytic (example requires exp, see 7.4)

### Warning: Takagi's Function

- Definition: T(x) = Σ s(2ⁿx)/2ⁿ where s(x) = dist(x, nearest integer)
- Theorem: T is continuous everywhere, differentiable nowhere
- Proof sketch: uniform convergence gives continuity; careful difference quotient analysis gives nowhere differentiable
- **The lesson**: Power series (limits of polynomials) are infinitely differentiable. But general limits of differentiable functions can be nowhere differentiable.
- Remark: Full story of when limits preserve differentiability in Function Spaces chapter

---

## 7.4 The Exponential Function

### The Functional Equation Constrains the Derivative

- Theorem: If aˣ differentiable, then (aˣ)' = cₐ · aˣ for some constant cₐ
- Which base gives cₐ = 1?

### Building exp from Calculus

- We seek: exp' = exp and exp(0) = 1
- Taylor says: must have exp(x) = Σxⁿ/n!
- This series converges for all x (ratio test)

### Verifying exp Works

- Theorem: exp'(x) = exp(x) (term-by-term differentiation)
- Theorem: exp(x+y) = exp(x)exp(y) (Cauchy product — callback to Ch 5!)
- So exp is an exponential for some base

### Identifying the Base

- Definition: e = exp(1) = Σ1/n!
- Theorem: exp(x) = eˣ
- Theorem: e = lim(1 + 1/n)ⁿ (connects to Ch 2 definition and Ch 5 Tannery)

### Computing e

- Error bound: 0 < e - Sₙ < 1/(n! · n)
- Example: S₁₀ gives e ≈ 2.7182818 to 7 decimals

### e Is Irrational

- Theorem: e ∉ ℚ
- Proof: q!·e = (integer) + (something in (0,1)), contradiction

### General Exponentials

- Corollary: (aˣ)' = cₐ · aˣ where cₐ = lim(aʰ-1)/h
- Remark: cₐ = ln(a), defined via integration in Ch 8

### Warning: Smooth ≠ Analytic

- Definition: f(x) = e^{-1/x²} for x ≠ 0, f(0) = 0
- Theorem: f is smooth and f⁽ⁿ⁾(0) = 0 for all n
- Consequence: Taylor series at 0 is identically 0, but f ≠ 0
- **The lesson**: Smooth functions can fail to equal their Taylor series. Power series are special — they're analytic by construction.

---

## 7.5 Newton's Method

### The Algorithm

- Problem: Find root of f(x) = 0
- Newton iteration: xₙ₊₁ = xₙ - f(xₙ)/f'(xₙ)
- Geometric interpretation: follow tangent line to x-axis

### Convergence via Contraction

- Define g(x) = x - f(x)/f'(x); fixed point of g is root of f
- Compute: g'(x) = f(x)f''(x)/(f'(x))²
- At simple root r: g'(r) = 0
- Theorem: For x₀ near r, Newton converges
- Proof: g'(r) = 0 ⟹ |g'| < 1 near r ⟹ g is contraction

### Quadratic Convergence via Taylor

- Theorem: εₙ₊₁ ≈ [f''(r)/(2f'(r))] εₙ²
- Proof: Taylor expand f(xₙ) around r
- Consequence: errors square — digits roughly double each step

### Examples

- √2: xₙ₊₁ = (xₙ + 2/xₙ)/2 — the Babylonian method! (callback to Ch 2)
- ∛5: xₙ₊₁ = (2xₙ + 5/xₙ²)/3

### Failure Modes

- Multiple roots: g'(r) ≠ 0, only linear convergence
- Bad starting points: may cycle, diverge, or find wrong root
- f'(xₙ) = 0: division by zero

### Looking Ahead

- Newton is fixed-point iteration: xₙ₊₁ = g(xₙ)
- Picard iteration for ODEs: same idea in function space
- Contraction mapping theorem (Ch 4) guarantees convergence in both settings

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Historical development; Weierstrass's monster |
| 7.1 Rules | Definition and computational machinery |
| 7.2 MVT | f' controls f; Darboux, Lipschitz |
| 7.3 Power Series II | Taylor's theorem; term-by-term differentiation; Takagi warning |
| 7.4 Exponential | Build exp; smooth ≠ analytic |
| 7.5 Newton | Fixed-point iteration; preview Picard |

## Key Theorems

1. Differentiable ⟹ continuous (converse false)
2. Chain rule and inverse function derivative
3. Mean Value Theorem
4. f' = 0 ⟹ constant; f' > 0 ⟹ increasing
5. Darboux: f' has IVP
6. Taylor's theorem with Lagrange remainder
7. Term-by-term differentiation of power series
8. exp' = exp; exp(x+y) = exp(x)exp(y)
9. e is irrational
10. Newton converges quadratically near simple roots

---

## Exercises (Selected)

### Section 7.1

- Prove (xⁿ)' = nxⁿ⁻¹ by induction
- Product rule for three functions: (fgh)' = ?
- Prove: f differentiable at a and f(a) ≠ 0 ⟹ 1/f differentiable at a

### Section 7.2

- First derivative test for local extrema
- Second derivative test for local extrema
- L'Hôpital for ∞/∞ form
- L'Hôpital as x → ∞
- Construct f with f' discontinuous but bounded

**Guided Exercises: Convexity**

- Definition: f convex if f(λx + (1-λ)y) ≤ λf(x) + (1-λ)f(y)
- Prove: f differentiable and convex ⟺ f' increasing
- Corollary: f'' ≥ 0 ⟺ f convex
- Prove: f convex ⟹ f(y) ≥ f(x) + f'(x)(y-x) (tangent lines lie below graph)
- Prove: f convex on open interval ⟹ f continuous
- ★ Jensen's inequality

### Section 7.3

- Taylor series of 1/(1-x)², 1/(1-x)³ by differentiation
- sin and cos Taylor series (assuming these functions exist)
- Prove Taylor with integral remainder (connects to Ch 8)
- ★ Complete Takagi nowhere-differentiability proof

### Section 7.4

- Prove exp(x) ≥ 1 + x for all x
- Prove e < 3 using partial sums
- Show eˣ/xⁿ → ∞ as x → ∞ (exponential beats polynomial)
- Compute e to 10 decimal places; how many terms needed?
- ★ Complete the induction: f(x) = e^{-1/x²} has f⁽ⁿ⁾(0) = 0

### Section 7.5

- Apply Newton to find ⁴√7
- What happens applying Newton to f(x) = x³ starting at x₀ = 1?
- Modified Newton for multiple roots
- ★ Newton for f(x) = x² - a gives Babylonian method

---

## Dependencies

**Requires from earlier chapters**:

- Limits, continuity, IVT, EVT (Ch 6)
- Bolzano-Weierstrass (Ch 3)
- Series, radius of convergence (Ch 4)
- Cauchy product, Tannery (Ch 5)
- (1 + x/n)ⁿ = Σxⁿ/n! (Ch 5)
- Contraction mapping theorem (Ch 4)

**Sets up for later chapters**:

- Ch 8 (Integration): FTC uses MVT consequences
- Ch 8 (Elementary Functions): Inverse function derivative for log, arcsin; identify cₐ = ln(a)
- Function Spaces: Picard iteration generalizes Newton