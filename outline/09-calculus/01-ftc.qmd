## §9.1 The Fundamental Theorem

### Narrative

- In Chapter 8 we defined ∫_{[a,b]} f — the integral over a set. Now we let the upper bound vary and study F(x) = ∫ₐˣ f as a function
- Signed notation lets x move freely, even before a
- Two properties of F come quickly: continuity (from bounds) and the MVT for integrals (average value achieved)
- Then the main event: FTC I says F' = f (differentiation undoes integration), FTC II says ∫f = F(b) − F(a) (the evaluation formula)
- The chapter 8 Riemann sum calculations are instantly explained

### Content

### The Integral Function
- In ch8 we defined ∫_{[a,b]} f for a < b — the integral over a set
- Fix a basepoint a and let x vary: for x ≥ a, define F(x) = ∫_{[a,x]} f
- To let x move freely (including before a), introduce signed notation:
  - Definition: ∫ₐᵇ f = ∫_{[a,b]} f for a < b
  - Definition: ∫ᵇₐ f = −∫ₐᵇ f
  - Definition: ∫ₐₐ f = 0
- Now F(x) = ∫ₐˣ f is defined for all x in the domain of f
- Theorem (Additivity): ∫ₐᶜ f = ∫ₐᵇ f + ∫ᵇᶜ f for any ordering of a, b, c
- Proof: reduces to the ch8 additivity axiom when a < b < c; the other cases follow from the sign convention
- ✎ Inline: verify additivity when c < a < b

### Properties of the Integral Function
- Theorem (Continuity): If f is integrable with m ≤ f ≤ M, then F(x) = ∫ₐˣ f is continuous
- Proof: F(x+h) − F(x) = ∫ₓˣ⁺ʰ f. By the bounds theorem (§8.1), m·h ≤ F(x+h) − F(x) ≤ M·h. As h → 0, both bounds → 0, so F(x+h) → F(x).
- Theorem (MVT for Integrals): If f is continuous on [a,b], then there exists c ∈ (a,b) with ∫ₐᵇ f = f(c)(b−a)
- Proof: By EVT, f attains its min m and max M on [a,b]. Bounds theorem gives m(b−a) ≤ ∫ₐᵇ f ≤ M(b−a). The average value (1/(b−a)) ∫ₐᵇ f lies between m and M. By IVT, f achieves this value at some c ∈ (a,b).
- Remark: the *average value* of f on [a,b] is (1/(b−a)) ∫ₐᵇ f, and f always equals its average somewhere
- ✎ Inline: find c explicitly for f(x) = x² on [0,1]

### The Fundamental Theorem, Part I
- Theorem (FTC I): If f is continuous on an interval containing a, then F(x) = ∫ₐˣ f is differentiable and F'(x) = f(x)
- Proof: F'(x) = lim_{h→0} (1/h)(F(x+h) − F(x)) = lim_{h→0} (1/h) ∫ₓˣ⁺ʰ f. By MVT for integrals, ∫ₓˣ⁺ʰ f = f(c)·h for some c between x and x+h. As h → 0, c → x, and continuity of f gives f(c) → f(x). So F'(x) = f(x).
- Corollary: every continuous function has an antiderivative
- Remark: this is an existence theorem — we assert F exists without finding a formula
- ✎ Inline: what is F'(x) when F(x) = ∫₀ˣ eᵗ² dt? (cannot find F explicitly, but FTC I answers immediately)

### The Fundamental Theorem, Part II
- Theorem (FTC II): If f is continuous on [a,b] and F is any antiderivative of f (meaning F' = f), then ∫ₐᵇ f = F(b) − F(a)
- Proof: Let G(x) = ∫ₐˣ f. By FTC I, G' = f = F'. So (G − F)' = 0, hence G − F is constant by MVT (§7.2). Evaluating at x = a: G(a) − F(a) = 0 − F(a) = −F(a), so G(x) = F(x) − F(a) for all x. At x = b: ∫ₐᵇ f = G(b) = F(b) − F(a).
- Notation: F(x)|ₐᵇ = F(b) − F(a), read "F evaluated from a to b"
- Callback: in ch8 we computed ∫_{[0,1]} eˣ = e − 1 by Riemann sums and observed this equals e¹ − e⁰. FTC II explains why: (eˣ)' = eˣ, so ∫₀¹ eˣ dx = eˣ|₀¹ = e − 1. The pattern was the Fundamental Theorem.
- ✎ Inline: use FTC II to compute ∫₀¹ x³ dx and verify it matches the ch8 Riemann sum prediction

### Guided Exercises

None for this section.

### Exercises

*FTC I*
- Compute d/dx ∫₀ˣ² eᵗ² dt (chain rule + FTC I)
- If F(x) = ∫₀ˣ f and F is differentiable with F' continuous, what can you say about f?

*FTC II*
- Use FTC II to compute ∫₀² x³ dx, ∫₁⁴ √x dx, ∫₀¹ (3x² + 2x) dx
- Prove: if F' = G' = f on [a,b], then F and G differ by a constant

*Integral function*
- Prove: if f ≥ 0 is continuous on [a,b] with ∫ₐᵇ f = 0, then f ≡ 0
- Prove: if f is continuous and ∫ₐᵇ f = 0 for all b, then f ≡ 0

### Dependencies

**Requires**: §7.2 (MVT — for uniqueness of antiderivatives), §8.1 (axiomatic integral, bounds theorem, additivity), §8.2 (Darboux integral existence), §6.4 (EVT, IVT — for MVT for integrals)

**Used in**: §9.2 (antidifferentiation techniques), §9.3 (ODE existence), §9.4–9.5 (defining functions via integrals)
