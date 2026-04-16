## §9.4 Trigonometry

### Narrative

- The trig functions join exp and log as functions constructed rigorously from calculus
- arcsin is defined as an integral (like log in the guided exercise of §9.2), then sin and cos as its inverse and complement
- The key insight: sin and cos satisfy y'' = −y, and the ODE uniqueness lemma (energy argument) proves *everything* — addition formulas, periodicity, special values
- Taylor series follow immediately from the derivative cycle and the Lagrange remainder
- The section connects π (known from geometry, §4.5 and §8.3) to the integral world: arcsin(1) = π/2 is a theorem, not a definition

### Content

### Defining the Trigonometric Functions
- Recall: on the unit circle, arcsin(y) should give the angle (= arc length) whose sine is y
- Definition: arcsin(y) = ∫₀ʸ 1/√(1−t²) dt for y ∈ (−1, 1)
- This is an improper integral at y = ±1 (§8.1); it converges (compare 1/√(1−t²) to 1/√(1−t) near t = 1)
- arcsin'(y) = 1/√(1−y²) by FTC I
- arcsin is strictly increasing (derivative positive), so it has an inverse
- Theorem: arcsin(1) = π/2. Proof: ∫₀¹ 1/√(1−t²) dt is the arc length of the quarter circle from (1,0) to (0,1), which equals π/2 by §8.3.
- So arcsin maps [−1, 1] → [−π/2, π/2]
- Definition: sin: [−π/2, π/2] → [−1, 1] is the inverse of arcsin
- Definition: cos(θ) = sin(π/2 − θ), or equivalently cos(θ) = √(1 − sin²θ) for θ ∈ [−π/2, π/2]
- Immediate: sin²θ + cos²θ = 1
- Derivatives:
  - sin'(θ) = 1/arcsin'(sin θ) = √(1 − sin²θ) = cos(θ)
  - cos'(θ) = −sin(θ) (differentiate sin² + cos² = 1, or use cos = sin(π/2 − θ) and chain rule)
- ✎ Inline: verify cos'(θ) = −sin(θ) both ways

### The Differential Equation
- Theorem: sin and cos both satisfy y'' = −y. Proof: sin'' = (cos)' = −sin, cos'' = (−sin)' = −cos.
- Lemma (Uniqueness): if y'' = −y on an interval with y(0) = y'(0) = 0, then y ≡ 0.
- Proof: define E(t) = y(t)² + y'(t)² (the "energy"). Then E'(t) = 2yy' + 2y'y'' = 2yy' + 2y'(−y) = 0. So E is constant. E(0) = 0, so E(t) = 0 for all t, hence y(t) = 0 for all t.
- Corollary: solutions to y'' = −y are uniquely determined by y(0) and y'(0)
- Theorem (Addition formulas):
  - sin(α + β) = sin α cos β + cos α sin β
  - cos(α + β) = cos α cos β − sin α sin β
- Proof: fix α. Define f(t) = sin(α + t) and g(t) = sin(α)cos(t) + cos(α)sin(t). Both satisfy y'' = −y. Check: f(0) = sin(α) = g(0), f'(0) = cos(α) = g'(0). By uniqueness, f = g. Similarly for cosine.
- Remark: the addition formulas are proved purely from the ODE, not from geometry
- Special values:
  - sin(0) = 0, cos(0) = 1 (from arcsin(0) = 0 and cos = √(1−sin²))
  - sin(π/2) = 1, cos(π/2) = 0 (from arcsin(1) = π/2)
  - sin(π) = 0, cos(π) = −1 (addition formulas with α = β = π/2)
  - sin(2π) = 0, cos(2π) = 1
  - sin(π/4) = cos(π/4) = 1/√2
- Theorem: sin and cos are periodic with period 2π
- Proof: define f(t) = sin(t + 2π). Then f'' = −f, f(0) = sin(2π) = 0, f'(0) = cos(2π) = 1. But sin also satisfies y'' = −y with y(0) = 0, y'(0) = 1. By uniqueness, f = sin. Similarly for cos.
- Theorem: 2π is the smallest period (equivalently, π is the smallest positive zero of sin)
- ✎ Inline: derive sin(π/6) = 1/2 from sin(π/2) = 1 and the addition/half-angle formulas

### Taylor Series
- sin and cos are infinitely differentiable: they satisfy y'' = −y, so all derivatives are ±sin or ±cos
- The derivative cycle: sin → cos → −sin → −cos → sin gives the Taylor coefficients at 0
- Theorem: sin(x) = x − x³/3! + x⁵/5! − ⋯ = Σ (−1)ⁿ x²ⁿ⁺¹/(2n+1)! for all x
- Theorem: cos(x) = 1 − x²/2! + x⁴/4! − ⋯ = Σ (−1)ⁿ x²ⁿ/(2n)! for all x
- Convergence: ratio test gives |aₙ₊₁/aₙ| = |x|²/((2n+2)(2n+3)) → 0, so both series converge for all x
- Proof of equality: Lagrange remainder. All derivatives of sin and cos are bounded by 1, so |Rₙ(x)| ≤ |x|ⁿ⁺¹/(n+1)! → 0 for any fixed x.
- Remark: these are the series S(x) and C(x) from ch5, if introduced there. The functional equations (Cauchy product) now have a geometric interpretation as the addition formulas for sin and cos.
- ✎ Inline: verify the Taylor series for cos by differentiating the Taylor series for sin term-by-term (Power Series II)

### Archimedes' Theorem
- In §8.3, Archimedes' inequality (proved geometrically) showed the perimeter and area constants of the circle are the same π
- Here we give a modern, purely computational proof using trig substitution
- Theorem: ∫₀¹ √(1−x²) dx = π/4 (so the area of the unit disk is π)
- Proof: IBP on ∫₀¹ √(1−x²) dx connects the area integral to ∫₀¹ 1/√(1−x²) dx = arcsin(1) = π/2
- Remark: the substitution x = sin(θ) transforms the area integral directly into an arc length integral — calculus links the two constants without any geometric argument
- Note: this subsection could alternatively be a guided exercise

### Guided Exercises

### The Weierstrass Product for Sine

*Goal:* Prove that sin(πx)/(πx) = ∏ₙ₌₁^∞ (1 − x²/n²)

*Note:* Elementary proof TBD. The standard proof uses complex analysis (Hadamard factorization), but we seek an approach using only real analysis tools from this chapter. The identity is used in §9.5 to derive the Wallis product for π.

*Consequences:*
(a) Setting x = 1/2: the Wallis product π/2 = ∏ (2n)²/((2n−1)(2n+1))
(b) Expanding the product and matching x² coefficients: Σ 1/n² = π²/6 (Basel problem — proved independently via Fourier in Chapter __)

### Exercises

*Definitions and derivatives*
- Prove that arcsin is an odd function: arcsin(−y) = −arcsin(y)
- Define arccos(y) = ∫ᵧ¹ 1/√(1−t²) dt. Show arccos(y) = π/2 − arcsin(y) and that cos is the inverse of arccos on [0, π].
- Show that sec'(θ) = sec(θ) tan(θ) where sec = 1/cos

*The ODE and its consequences*
- Prove: if y'' = −y and y(0) = y'(0) = 0, then y ≡ 0 using the Wronskian: if y₁, y₂ are solutions, show W = y₁y₂' − y₁'y₂ is constant
- Derive cos(π/3) = 1/2 and sin(π/3) = √3/2 from the addition formulas
- Prove the double-angle formulas: sin(2θ) = 2 sin θ cos θ, cos(2θ) = cos²θ − sin²θ
- Prove: |sin(θ)| ≤ |θ| for all θ (hint: energy, or integrate |cos| ≤ 1)

*Taylor series*
- Compute sin(1) to 5 decimal places. How many terms are needed?
- Prove sin(x)/x → 1 as x → 0 using the Taylor series
- Prove: |sin(x) − x| ≤ |x|³/6 and |cos(x) − 1| ≤ x²/2 for all x

*Integration with trig* (uses §9.2)
- Compute ∫₀^{π/2} sin²(x) dx and ∫₀^{π/2} cos²(x) dx using the identity sin²x = (1 − cos 2x)/2
- Compute ∫₀^{π/4} tan(x) dx by writing tan = sin/cos and substituting u = cos(x)
- Compute ∫₀^{π/2} sin(x) cos(x) dx two ways: substitution and double-angle formula
- Derive the reduction formula: ∫₀^{π/2} sinⁿ(x) dx = ((n−1)/n) ∫₀^{π/2} sinⁿ⁻²(x) dx (integration by parts)
- Use the reduction formula to derive the Wallis integrals: ∫₀^{π/2} sin²ⁿ(x) dx = π/2 · (2n)!/(2²ⁿ(n!)²)

### Dependencies

**Requires**: §4.5 (π from polygon limits), §6.4 (continuous monotone inverses), §7.1 (inverse function derivative, chain rule), §7.3 (Power Series II — term-by-term differentiation), §8.1 (improper integrals), §8.3 (arc length — for arcsin(1) = π/2), §9.1 (FTC I and II), §9.2 (Power Series III, substitution, IBP)

**Used in**: §9.5 (arctan and π computations)
