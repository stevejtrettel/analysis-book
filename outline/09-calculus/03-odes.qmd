## §9.3 Differential Equations *(Terminal)*

### Narrative

- FTC says every continuous function has an antiderivative — this immediately solves certain differential equations
- Three progressively complex classes where existence follows from our tools: quadrature, first-order linear, separable
- Along the way we meet functions defined purely by integrals — they exist by FTC even though no formula is possible
- The section closes by showing where elementary methods fail, previewing the general existence theory in Chapter 12
- Terminal section: nothing later depends on §9.3

### Content

### Quadrature
- The simplest ODE: y' = f(x), y(a) = y₀
- Theorem: If f is continuous, then y(x) = y₀ + ∫ₐˣ f(t) dt is the unique solution
- Existence: FTC I gives y' = f
- Uniqueness: if y₁, y₂ both solve it, (y₁ − y₂)' = 0, so y₁ − y₂ constant by MVT (§7.2); equal at a, so identical
- Remark: FTC guarantees existence of antiderivatives even when no elementary formula exists. This leads to important functions *defined* as integrals:
- The error function: erf(x) = (2/√π) ∫₀ˣ e⁻ᵗ² dt — fundamental in probability (cumulative normal distribution)
- The sine integral: Si(x) = ∫₀ˣ (sin t)/t dt — appears in signal processing and Fourier analysis (sin t/t has a removable singularity at 0)
- The Fresnel integrals: S(x) = ∫₀ˣ sin(t²) dt, C(x) = ∫₀ˣ cos(t²) dt — describe diffraction patterns in optics
- The logarithmic integral: li(x) = ∫₂ˣ 1/(log t) dt — gives the best simple approximation to the prime counting function (the Prime Number Theorem says π(x) ~ li(x))
- ✎ Inline: verify erf'(x) = (2/√π) e⁻ˣ² and erf(0) = 0 directly from the definition

### First-Order Linear Equations
- The equation: y' + P(x)y = Q(x), y(a) = y₀, with P and Q continuous
- Theorem: The unique solution is y(x) = (1/μ(x))(y₀ + ∫ₐˣ μ(t) Q(t) dt) where μ(x) = e^{∫ₐˣ P(t) dt} is the integrating factor
- Proof idea: multiply the equation by μ(x). Since μ' = Pμ, the left side becomes (μy)' = μQ. Integrate both sides using FTC.
- Existence: all integrals exist by FTC (P, Q continuous)
- Uniqueness: the difference of two solutions satisfies the homogeneous equation with zero initial condition
- Example: y' + 2y = eˣ with y(0) = 1. Integrating factor μ = e²ˣ. Then (e²ˣ y)' = e³ˣ. Integrate: e²ˣ y = e³ˣ/3 + C. From y(0) = 1: C = 2/3. Solution: y = (1/3)eˣ + (2/3)e⁻²ˣ.
- ✎ Inline: solve y' − y/x = x² with y(1) = 0 for x > 0

### Separable Equations
- The equation: y' = f(x)g(y), with g(y₀) ≠ 0
- If g(y) ≠ 0, formally separate: dy/g(y) = f(x) dx
- Integrate: G(y) = F(x) + C where G' = 1/g, F' = f
- Theorem: If f is continuous near x₀ and g is continuous and nonzero near y₀, then y' = f(x)g(y) with y(x₀) = y₀ has a solution (at least locally)
- Proof:
  1. F(x) = ∫_{x₀}ˣ f(t) dt exists by FTC
  2. G(y) = ∫_{y₀}ʸ 1/g(s) ds exists by FTC (since g ≠ 0 means 1/g continuous)
  3. G'(y) = 1/g(y) ≠ 0, so G is strictly monotone
  4. Strictly monotone continuous functions have continuous inverses (§6.4)
  5. Solution: y = G⁻¹(F(x) + C) with C chosen so y(x₀) = y₀
- Remark: we proved existence without computing G⁻¹ explicitly — FTC and the inverse function theorem do the work
- Example: y' = y/x with y(1) = 1 for x > 0. Separate: dy/y = dx/x. Integrate: log|y| = log|x| + C. Solution: y = x. Remark: log arises naturally in separation whenever 1/g involves 1/y.
- Example: y' = xy with y(0) = 1. Separate: dy/y = x dx. Integrate: log|y| = x²/2 + C. Solution: y = e^{x²/2}.. Verify: (e^{x²/2})' = x · e^{x²/2} = xy. ✓
- Example: y' = y² with y(0) = 1. Separate: dy/y² = dx. Integrate: −1/y = x + C. Solution: y = 1/(1−x). This blows up at x = 1 — the solution exists only on (−∞, 1). Even when our existence theorem applies, the solution may not exist globally.
- ✎ Inline: solve y' = y(1−y) with y(0) = 1/2 (the logistic equation)

### The Limits of Elementary Methods
- Consider y' = x + y² — we cannot separate variables, there is no integrating factor, no algebraic trick works
- Does a solution even exist? Yes — but proving it requires fundamentally new tools:
  - Picard iteration: construct approximating functions that converge to a solution
  - Contraction mappings on function spaces (callback to §4.3, but now in infinite dimensions)
  - Completeness of the function space
- This is the content of Chapter 12

### Guided Exercises

None for this section.

### Exercises

*Quadrature*
- Verify: erf is odd, and erf(x) → 1 as x → ∞
- Show Si(x) is bounded (hint: integrate by parts)

*Linear equations*
- Solve y' + 3y = e²ˣ with y(0) = 1
- Solve y' + y = x with y(0) = 0

*Separable equations*
- Solve y' = y/x with y(1) = 2
- Solve y' = x/y with y(0) = 1
- Show that solutions to y' = 1 + y² blow up in finite time

*Extensions*
- Bernoulli equations: show y' + P(x)y = Q(x)yⁿ reduces to linear via v = y^{1−n}
- Homogeneous equations: show y' = f(y/x) reduces to separable via v = y/x
- Second-order constant coefficient: solve y'' + ay' + by = 0 via the characteristic equation (use exp from §7.4)

### Dependencies

**Requires**: §6.4 (continuous monotone inverses), §7.2 (MVT — uniqueness), §7.4 (exp), §9.1 (FTC I and II), §9.2 (substitution, IBP)

**Used in**: None (terminal section). The general ODE existence theory appears in Chapter 12.
