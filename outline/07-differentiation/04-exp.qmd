## §7.4 Exponentials and Logarithms

### Narrative

- We have aˣ from ch1 (defined via supremum) and know it's continuous — but is it differentiable?
- Proving differentiability at 0 is the key: the functional equation does the rest
- Every exponential has a proportionality constant; we define the natural exponential as the one where this constant is 1
- This gives us exp' = exp, which determines the Taylor series — and we recognize it as E(x) from ch5
- Defining e = exp(1) gives the *right* definition of e; we then recover e = lim(1+1/n)ⁿ and e = Σ1/n! as theorems
- Then we define the natural logarithm as the inverse of exp: the functional equation, derivative, and Taylor series all follow from what we already know
- The mystery constant a'(0) is identified as log(a), completing the story of exponential functions

### Content

### Differentiability of Exponentials
- Theorem: aˣ is differentiable at 0 (prove in text)
- Theorem: If aˣ is differentiable at 0, then aˣ is differentiable everywhere, and (aˣ)' = aˣ · a'(0) (prove in text: functional equation)
- Remark: every exponential is determined by its derivative factor a'(0)

### The Natural Exponential
- Definition: the *natural exponential* exp is the exponential function with exp'(0) = 1, i.e. exp' = exp
- exp(x) = aˣ for some base a; define e = exp(1), so exp(x) = eˣ
- Remark: this is the proper definition of e — the base whose exponential is its own derivative

### The Taylor Series for exp
- exp' = exp and exp(0) = 1 determine all derivatives: exp⁽ⁿ⁾(0) = 1 for all n
- Taylor polynomials: Pₙ(x) = Σₖ₌₀ⁿ xᵏ/k!
- Remark: the series Σ xⁿ/n! converges for all x (ratio test: |aₙ₊₁/aₙ| = |x|/(n+1) → 0)
- Theorem: exp(x) = Σ xⁿ/n! for all x (prove in text: Lagrange remainder → 0, since |exp⁽ⁿ⁺¹⁾(c)| = exp(c) is bounded on any fixed interval)
- Remark: this is the series E(x) from ch5! The functional equation exp(x+y) = exp(x)exp(y) was already proved there via Cauchy product
- ✎ Inline: verify the Lagrange remainder estimate in detail for a specific x

### The Number e
- e = exp(1) = Σ 1/n!
- Theorem: e = lim(1 + 1/n)ⁿ (callback to ch2; proved via ch5's dominated convergence result that (1+x/n)ⁿ → E(x))
- Error bound: 0 < e - Sₙ < 1/(n! · n) (prove in text)
- Example: S₁₀ gives e ≈ 2.7182818 to 7 decimal places
- Theorem: e is irrational (prove in text: multiply through by q!, get integer + something in (0,1))

### The Natural Logarithm
- Definition: log = exp⁻¹ (the inverse function of exp)
- exp is strictly increasing and continuous, so by §6.4 the inverse exists and is continuous
- log: (0, ∞) → ℝ, with log(eˣ) = x and e^{log y} = y
- Theorem: log(xy) = log(x) + log(y) for all x, y > 0
- Proof: exp(log(x) + log(y)) = exp(log x) · exp(log y) = xy, so log(x) + log(y) = log(xy)
- Theorem: log'(y) = 1/y
- Proof: inverse function derivative (§7.1): log'(y) = 1/exp'(log y) = 1/exp(log y) = 1/y
- Basic properties: log(1) = 0, log(e) = 1, strictly increasing, log(x) → ∞ as x → ∞, log(x) → −∞ as x → 0⁺
- The mystery constant identified: aˣ = exp(x log a) (since exp(log(aˣ)) = aˣ and log(aˣ) = x log a by the functional equation). By chain rule: (aˣ)' = exp(x log a) · log a = aˣ · log a. Therefore a'(0) = log(a).
- Remark: all exponentials and their derivatives are now completely determined — (aˣ)' = aˣ log a
- Theorem: log(x)/xᵅ → 0 as x → ∞ for any α > 0 (logarithms grow slower than any positive power)
- Proof: L'Hôpital (§7.2): lim log(x)/xᵅ = lim (1/x)/(αxᵅ⁻¹) = lim 1/(αxᵅ) = 0
- ✎ Inline: show log(1/x) = −log(x) directly from the functional equation

### Guided Exercises

### The Continued Fraction for e

*(Fulfilling the promise from §4.4)*

*(Details to be worked out — the key idea is using the series for e to derive the regular continued fraction [2; 1, 2, 1, 1, 4, 1, 1, 6, ...])*

### Smooth ≠ Analytic

Let f(x) = e^{-1/x²} for x ≠ 0, f(0) = 0.

(a) Show f is continuous at 0.

(b) Show f'(0) = 0 from the definition. (Hint: e^{-1/h²}/h → 0 as h → 0.)

(c) Show f is smooth on ℝ \ {0} (standard rules).

(d) Show by induction that f⁽ⁿ⁾(0) = 0 for all n. (Strategy: show each derivative at nonzero x has the form p(1/x) · e^{-1/x²} for some polynomial p, and these all → 0 as x → 0.)

(e) Conclude: the Taylor series of f at 0 is identically 0, but f ≠ 0. So f is smooth but not analytic.

(f) Reflect: power series are always equal to their Taylor series (§7.3 corollary). This example shows general smooth functions need not be. What makes power series special?

### Exercises

*Exponential*
- Prove exp(x) ≥ 1 + x for all x
- Prove e < 3 using partial sums
- Show eˣ/xⁿ → ∞ as x → ∞ (exponential beats any polynomial)
- Compute e to 10 decimal places; how many terms of the series are needed?

*Logarithm*
- Prove log(xⁿ) = n log(x) for n ∈ ℤ; extend to log(x^{p/q}) = (p/q) log(x) for rational exponents
- Prove log(x) ≤ x − 1 for x > 0, with equality iff x = 1
- Prove log(x) ≥ 1 − 1/x for x > 0, with equality iff x = 1
- Taylor series for log: show log(1+x) = x − x²/2 + x³/3 − x⁴/4 + ⋯ for |x| < 1 (hint: log'(1+x) = 1/(1+x) = Σ(−1)ⁿxⁿ; match coefficients using §7.3 term-by-term differentiation)
- Abel's theorem gives log(2) = 1 − 1/2 + 1/3 − 1/4 + ⋯. How many terms for 2 decimal places?
- Faster computation: show log((1+x)/(1−x)) = 2(x + x³/3 + x⁵/5 + ⋯) for |x| < 1. Use x = 1/3 to compute log(2) to 6 decimal places. How many terms are needed?
- Compute log(3) using the fast series with appropriate x
- Prove Σ 1/n diverges by comparing to ∫₁ⁿ 1/t dt (preview — uses the integral formula log(x) = ∫₁ˣ 1/t dt from §9.2)

### Note

The proof that aˣ is differentiable at 0 could potentially move to §7.1 if this section feels overloaded.

### Dependencies

**Requires**: §4.4 (continued fractions — for guided exercise), §5.3 (Cauchy product — for recognizing functional equation), §5.4 (dominated convergence — for (1+x/n)ⁿ → E(x)), §6.4 (continuous monotone inverses — for log), §7.1 (derivative definition, chain rule, inverse function derivative), §7.2 (L'Hôpital — for log growth), §7.3 (term-by-term differentiation, Taylor's theorem with Lagrange remainder)

**Used in**: §7.5 (exp used in Newton's method convergence analysis), §8.4 (∫E = (E(b)−E(a))/log(a)), §9.2–9.6 (log available for examples and computations)
