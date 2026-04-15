## Chapter 7: Differentiation

### Overview

What does it mean for a function to have a tangent line, and what does the tangent line tell us? The story moves from local to global to infinite: the derivative at a point (local), the Mean Value Theorem saying the derivative controls the function (global), and Taylor's theorem saying the derivatives *reconstruct* the function (infinite). The chapter closes with two payoffs: the exponential function built rigorously from calculus, and Newton's method connecting differentiation back to the iteration and contraction techniques of Chapter 4.

### Sections

1. **§7.1 Differentiation Rules** — Definition, differentiability implies continuity (converse false), algebraic rules, chain rule, inverse function derivative. The basic toolkit.

2. **§7.2 The Mean Value Theorem** — Fermat's theorem, Rolle's theorem, the MVT, Cauchy's MVT, consequences ($f'$ controls $f$: constant, increasing/decreasing), Darboux's theorem (IVT for derivatives), Lipschitz functions, L'Hôpital's rule.

3. **§7.3 Power Series & Taylor's Theorem** — Taylor polynomials, Taylor's theorem (Lagrange remainder), term-by-term differentiation of power series, Takagi's nowhere-differentiable continuous function.

4. **§7.4 Exponentials** — Building $\exp$ from its defining ODE, verifying the functional equation via Cauchy product, identifying the base $e$, computing $e$, irrationality of $e$, the continued fraction for $e$ (guided exercise, fulfilling §4.4's promise), the smooth-but-not-analytic function $e^{-1/x^2}$.

5. **§7.5 Newton's Method** *(Terminal)* — The algorithm, convergence via contraction (callback to §4.3), quadratic convergence via Taylor, the Babylonian method as a special case (callback to Chapter 2), failure modes.

### Dependencies

**Requires**:
- §2.2–2.3 (convergence, limit laws)
- §4.2 (absolute convergence, root test)
- §4.3 (contraction mappings — for §7.5)
- §4.4 (continued fractions — for §7.4 guided exercise)
- §5.3 (Cauchy product — for §7.4)
- §5.4 (dominated convergence / Tannery — for §7.3 term-by-term differentiation)
- §6.1–6.2 (continuity, sequential characterization, algebra of continuous functions)
- §6.4 (EVT — for §7.2 Rolle/MVT; IVT — for context)

**Leads to**:
- Chapter 8 (integration)
- Chapter 9 (FTC unifies differentiation and integration; integral remainder for Taylor)

### Notes

- Convexity (definition, equivalence with $f'' \geq 0$, Jensen's inequality) appears in exercises for §7.2
- First and second derivative tests appear in exercises for §7.2
- The integral remainder for Taylor's theorem is flagged for inclusion in Chapter 9
- Trig derivatives ($\sin' = \cos$, $\cos' = -\sin$) deferred to Chapter 9
