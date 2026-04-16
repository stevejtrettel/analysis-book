## Chapter 9: The Fundamental Theorem and Its Consequences

### Overview

The Fundamental Theorem of Calculus is the bridge between differentiation and integration — two subjects developed independently in Chapters 7 and 8. FTC I says differentiation undoes integration; FTC II says the evaluation formula $\int_a^b f = F(b) - F(a)$ holds whenever $F' = f$. The laborious Riemann sum computations of Chapter 8 are instantly explained.

With FTC in hand, we develop the standard techniques for finding antiderivatives: linearity, substitution (the chain rule in reverse), and integration by parts (the product rule in reverse). For power series, term-by-term integration completes a trilogy begun in Chapters 6–7. Taylor's theorem gets a new proof via the integral remainder, connecting back to Chapter 7 and demystifying the mysterious point $c$ in the Lagrange form.

The chapter then turns to functions constructed by integration. Differential equations are solved using FTC and the inverse function theorem — no new machinery needed. The trigonometric functions are built rigorously via integrals: arcsin defined as $\int_0^y 1/\sqrt{1-t^2}\,dt$, then sin and cos as inverses, with all their properties (addition formulas, periodicity, Taylor series) derived from the ODE $y'' = -y$ and a uniqueness lemma. The chapter closes with a tour of methods for computing $\pi$, culminating in Machin-type formulas and the Wallis product.

### Sections

1. **§9.1 The Fundamental Theorem** — The integral function $F(x) = \int_a^x f$, signed notation, continuity and MVT for integrals, FTC I ($F' = f$), FTC II (the evaluation formula).

2. **§9.2 Antidifferentiation** — Linearity, Power Series III (term-by-term integration), substitution, integration by parts, Taylor's theorem with integral remainder, the integral formula for log. Guided exercise: discovering the logarithm from scratch via $\int_1^x 1/t\,dt$.

3. **§9.3 Differential Equations** *(Terminal)* — Quadrature ($y' = f(x)$), special functions defined by integrals (erf, Si, Fresnel, li), first-order linear equations (integrating factors), separable equations (existence via FTC + inverse function theorem), limits of elementary methods (preview of Chapter 12).

4. **§9.4 Trigonometry** — Defining sin and cos via arcsin as an integral, the ODE $y'' = -y$ and uniqueness via energy, addition formulas and periodicity from ODE uniqueness, Taylor series, Archimedes' theorem (area = perimeter constant) via calculus. Guided exercise: Weierstrass product for sine (proof TBD).

5. **§9.5 Calculating $\pi$** *(Terminal)* — Newton's method on $\cos(x) = 0$, inverse trig functions and rational Riemann sums, the Gregory-Leibniz series, Machin-type formulas, the Wallis product, Euler's $\pi^2/6$ (placeholder). Guided exercise: Stirling's approximation via comparison of sums to integrals + Wallis product.

### Dependencies

**Requires**:
- §4.5 (definition of π via polygon limits)
- §6.3 (Abel's theorem — for Gregory-Leibniz)
- §6.4 (EVT, IVT, continuous monotone inverses)
- §7.1 (derivative rules, chain rule, inverse function derivative)
- §7.2 (MVT — for uniqueness of antiderivatives)
- §7.3 (Power Series II, Taylor's theorem with Lagrange remainder)
- §7.4 (exp, log, and their derivatives)
- §7.5 (Newton's method — for §9.5)
- §8.1–8.2 (axiomatic integral, Darboux integral, improper integrals)
- §8.3 (arc length — for arcsin(1) = π/2)

**Leads to**:
- Chapter 10 (integral test, comparison tests using integration)
- Chapter 12 (Picard iteration, general ODE existence — previewed in §9.3)

### Historical Prelude

The chapter opens with an unnumbered historical introduction: to be determined.

### Notes

- §9.3 and §9.5 are terminal: nothing later depends on them
- The old §9.4 (logarithms) was absorbed into §7.4 and §9.2; the section was removed
- Trig substitution exercises in §9.4 complement the exp/polynomial examples in §9.2
- The Weierstrass product for sine (§9.4 guided exercise) needs an elementary proof — TBD
- Euler's π²/6 (§9.5) is a placeholder; the natural proof is via Fourier analysis in a later chapter
