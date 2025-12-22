# Chapter 9: Calculus 

## Overview

This chapter reveals the connection between differentiation and integration—the Fundamental Theorem of Calculus. This single theorem transforms integration from laborious Riemann sum calculations into algebraic manipulation, immediately unlocks solutions to important classes of differential equations, and enables us to finally define and compute the elementary functions.

**The arc:**
> FTC → Antidifferentiation techniques → ODEs → Logarithms → Trig → Computing π

Students see the Fundamental Theorem as the central result of the book: it unifies calculus, explains why we developed limits, continuity, and differentiation before integration, and provides both theoretical power (ODE existence) and computational tools (evaluating integrals, computing π).

---

## Historical Prelude (Unnumbered)

### The Problem

Differentiation finds rates of change. Integration finds areas. These seem like completely different operations—one tears functions apart, the other builds them up. For two millennia, they developed as separate subjects.

Then came the stunning discovery of the 1600s: they are inverses of each other.

### Barrow's Geometric Version (1660s)

Isaac Barrow, Newton's teacher at Cambridge, proved a geometric theorem relating tangent lines to areas. Given a curve y = f(x) and the area function A(x) = ∫₀ˣ f(t) dt, Barrow showed geometrically that the slope of the tangent to A equals the height f(x).

In modern notation: A'(x) = f(x). This is the Fundamental Theorem.

But Barrow didn't recognize its computational significance. To him, it was a theorem about geometric relationships, not a tool for calculation.

### Newton and Leibniz (1680s)

Newton and Leibniz, working independently, both discovered the Fundamental Theorem and—crucially—understood its power. Their insight: integration is "anti-differentiation."

To find ∫₀¹ x² dx, don't compute Riemann sums. Instead, find a function F with F' = x². Since (x³/3)' = x², we have:

$$\int_0^1 x^2 \, dx = \frac{1^3}{3} - \frac{0^3}{3} = \frac{1}{3}$$

No limits, no partitions, no sums of squares—just algebra.

### The Unification

Before the Fundamental Theorem, finding areas required Archimedes-style exhaustion arguments for each new curve. Fermat's calculation of ∫xⁿ was a tour de force; every new function required new tricks.

After the Fundamental Theorem, finding areas becomes a systematic procedure: find an antiderivative, evaluate at endpoints. Two millennia of geometric technique were subsumed into a single theorem.

This is why "calculus" is one subject rather than two. Differentiation and integration are not merely related—they are inverse operations, two sides of one coin.

### The Message

The Fundamental Theorem is the central result of this book. It explains why we developed limits, continuity, and differentiation before integration. It unlocks computation of the geometric quantities from Chapter 8. And it enables us to define the elementary functions—logarithms, trigonometric functions—as integrals, finally making them computable.

---

## 9.1 The Fundamental Theorem

This section presents the theorem itself and its immediate meaning. The techniques for finding antiderivatives follow in Section 9.2.

### Signed Integrals

**Notation**: For a < b, we have defined ∫ₐᵇ f. We extend this by:

$$\int_b^a f = -\int_a^b f$$

This convention makes FTC statements cleaner and allows the variable endpoint to move in either direction. With this convention, additivity ∫ₐᶜ f = ∫ₐᵇ f + ∫ᵇᶜ f holds regardless of the order of a, b, c.

### Mean Value Theorem for Integrals

**Lemma (MVT for Integrals)**: If f is continuous on [a,b], then there exists c ∈ (a,b) such that:

$$\int_a^b f = f(c) \cdot (b-a)$$

*Proof idea*: The integral is trapped between m(b−a) and M(b−a) where m, M are the min and max of f. The value (1/(b−a))∫f lies between m and M, so by IVT, f achieves this value somewhere.

**Interpretation**: The integral equals the "average value" of f times the length of the interval. There's always some point where f equals its average.

### The Fundamental Theorem, Part I

**Theorem (FTC I)**: If f is continuous on [a,b], define F(x) = ∫ₐˣ f(t) dt. Then F is differentiable on (a,b) and:

$$F'(x) = f(x)$$

*Proof idea*: 

$$F'(x) = \lim_{h \to 0} \frac{F(x+h) - F(x)}{h} = \lim_{h \to 0} \frac{1}{h} \int_x^{x+h} f(t) \, dt$$

By MVT for integrals, the integral equals f(c)·h for some c between x and x+h. As h → 0, c → x, and by continuity f(c) → f(x).

**Interpretation**: Differentiation undoes integration. The integral ∫ₐˣ f is an antiderivative of f.

**Corollary**: Every continuous function has an antiderivative.

This is remarkable—we can assert the *existence* of antiderivatives without finding them explicitly.

### The Fundamental Theorem, Part II

**Theorem (FTC II)**: If f is continuous on [a,b] and F is any antiderivative of f (meaning F' = f), then:

$$\int_a^b f = F(b) - F(a)$$

*Proof idea*: Let G(x) = ∫ₐˣ f. By FTC I, G' = f. So (G − F)' = 0, meaning G − F is constant (by MVT from Chapter 7). Evaluating at x = a gives the constant, and evaluating at x = b gives the result.

**Notation**: Write F(x)|ₐᵇ = F(b) − F(a), read "F evaluated from a to b."

**The Chapter 8 Callback**: In Chapter 8, we computed ∫₀¹ eˣ dx = e − 1 by Riemann sums and observed this equals e¹ − e⁰. FTC II explains why: since (eˣ)' = eˣ, we have ∫₀¹ eˣ dx = eˣ|₀¹ = e − 1.

The pattern we noticed was not a coincidence—it was the Fundamental Theorem.

### Linearity of Integration

**Corollary**: For continuous f, g and constants α, β:

$$\int_a^b (\alpha f + \beta g) = \alpha \int_a^b f + \beta \int_a^b g$$

*Proof*: If F' = f and G' = g, then (αF + βG)' = αf + βg. Apply FTC II.

**Remark**: Linearity can also be proved directly from the Darboux axioms (Chapter 8). But deriving it from FTC shows how integration inherits properties from differentiation.

---

## 9.2 Antidifferentiation

With the Fundamental Theorem established, we now develop techniques for finding antiderivatives. Each technique corresponds to a differentiation rule run in reverse.

### Power Series III: Term-by-Term Integration

In Chapter 6, we showed power series are continuous within their radius of convergence. In Chapter 7, we showed they can be differentiated term-by-term. Now we complete the picture.

**Theorem (Power Series III)**: If f(x) = Σₙ₌₀^∞ aₙxⁿ has radius of convergence R, then for |x| < R:

$$\int_0^x f(t) \, dt = \sum_{n=0}^{\infty} \frac{a_n x^{n+1}}{n+1}$$

and this series also has radius of convergence R.

*Proof idea*: Let G(x) = Σ aₙxⁿ⁺¹/(n+1). By Power Series II (term-by-term differentiation), G'(x) = Σ aₙxⁿ = f(x). By FTC II, ∫₀ˣ f = G(x) − G(0) = G(x).

**The Power Series Trilogy**:
- **Power Series I** (Ch 6): Power series are continuous within their radius
- **Power Series II** (Ch 7): Power series can be differentiated term-by-term
- **Power Series III** (Ch 9): Power series can be integrated term-by-term

These three theorems make power series the ideal functions for analysis—they behave exactly as we'd hope under all basic operations.

**Example**: Integrate the geometric series.

$$\frac{1}{1-x} = 1 + x + x^2 + x^3 + \cdots \quad \text{for } |x| < 1$$

Integrating term-by-term:

$$-\ln(1-x) = x + \frac{x^2}{2} + \frac{x^3}{3} + \cdots$$

or equivalently:

$$\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$$

We will use this extensively in Section 9.4.

### Integration by Substitution

**Theorem (U-Substitution)**: If g is differentiable with continuous derivative, and f is continuous, then:

$$\int_a^b f(g(x)) \, g'(x) \, dx = \int_{g(a)}^{g(b)} f(u) \, du$$

*Proof idea*: Let F be an antiderivative of f. By the chain rule, (F ∘ g)' = (f ∘ g) · g'. Apply FTC II to both sides.

**Interpretation**: Substitution is the chain rule in reverse.

**Example**: Compute ∫₀¹ x·eˣ² dx.

Let u = x², so du = 2x dx. When x = 0, u = 0; when x = 1, u = 1.

$$\int_0^1 x \cdot e^{x^2} \, dx = \frac{1}{2} \int_0^1 e^u \, du = \frac{1}{2}(e - 1)$$

**Example**: Compute ∫₀¹ x²√(1 − x³) dx.

Let u = 1 − x³, so du = −3x² dx. When x = 0, u = 1; when x = 1, u = 0.

$$\int_0^1 x^2 \sqrt{1-x^3} \, dx = -\frac{1}{3} \int_1^0 \sqrt{u} \, du = \frac{1}{3} \int_0^1 u^{1/2} \, du = \frac{1}{3} \cdot \frac{2}{3} = \frac{2}{9}$$

**Example**: Compute ∫ tan(x) dx.

Write tan(x) = sin(x)/cos(x). Let u = cos(x), so du = −sin(x) dx.

$$\int \tan(x) \, dx = -\int \frac{1}{u} \, du = -\ln|u| + C = -\ln|\cos(x)| + C$$

### Integration by Parts

**Theorem (IBP)**: If f and g are differentiable with continuous derivatives, then:

$$\int_a^b f(x) \, g'(x) \, dx = f(x)g(x)\Big|_a^b - \int_a^b f'(x) \, g(x) \, dx$$

*Proof idea*: By the product rule, (fg)' = f'g + fg'. Rearrange: fg' = (fg)' − f'g. Integrate and apply FTC II.

**Interpretation**: Integration by parts is the product rule in reverse.

**Example**: Compute ∫₀¹ x·eˣ dx.

Let f(x) = x, g'(x) = eˣ, so f'(x) = 1, g(x) = eˣ.

$$\int_0^1 x \cdot e^x \, dx = x \cdot e^x\Big|_0^1 - \int_0^1 e^x \, dx = e - (e - 1) = 1$$

**Example**: Compute ∫₀^{π/2} x cos(x) dx.

Let f(x) = x, g'(x) = cos(x), so f'(x) = 1, g(x) = sin(x).

$$\int_0^{\pi/2} x \cos x \, dx = x \sin x\Big|_0^{\pi/2} - \int_0^{\pi/2} \sin x \, dx = \frac{\pi}{2} - (-\cos x)\Big|_0^{\pi/2} = \frac{\pi}{2} - 1$$

**Example**: Compute ∫ ln(x) dx.

Let f(x) = ln(x), g'(x) = 1, so f'(x) = 1/x, g(x) = x.

$$\int \ln(x) \, dx = x\ln(x) - \int x \cdot \frac{1}{x} \, dx = x\ln(x) - x + C$$

### Taylor's Theorem with Integral Remainder

**Theorem**: If f has n+1 continuous derivatives on [a,x], then:

$$f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k + \frac{1}{n!}\int_a^x (x-t)^n f^{(n+1)}(t) \, dt$$

*Proof idea*: Start from ∫ₐˣ f'(t) dt = f(x) − f(a) (FTC II). Apply integration by parts with u = f'(t), dv = dt, but write dv = d(t − x) to get:

$$f(x) = f(a) + f'(a)(x-a) + \int_a^x (x-t)f''(t) \, dt$$

Continue inductively.

**Connection to Lagrange Remainder**: Applying MVT for integrals to the integral remainder gives:

$$\frac{1}{n!}\int_a^x (x-t)^n f^{(n+1)}(t) \, dt = \frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1}$$

for some c between a and x. This is the Lagrange form from Chapter 7.

The integral form is often more useful for estimates, as it doesn't require finding the mysterious point c.

---

## 9.3 Differential Equations

### Introduction

The Fundamental Theorem says every continuous function has an antiderivative. This immediately implies that certain differential equations have solutions. We explore three progressively complex classes where existence follows directly from FTC, then preview what happens when elementary methods fail.

### Quadrature: y' = f(x)

The simplest differential equation: find y given its derivative.

**Theorem**: If f is continuous on an interval containing a, then y' = f(x) with y(a) = y₀ has a unique solution:

$$y(x) = y_0 + \int_a^x f(t) \, dt$$

*Proof*: 
- **Existence**: FTC I guarantees the integral exists and has derivative f(x).
- **Uniqueness**: If y₁ and y₂ are both solutions, then (y₁ − y₂)' = 0. By MVT, y₁ − y₂ is constant. Since both equal y₀ at x = a, they are identical.

This is the most direct application of FTC, but its consequences are profound.

### Special Functions Defined by Quadrature

FTC guarantees that every continuous function has an antiderivative—but most antiderivatives cannot be expressed in terms of elementary functions. This leads to important "special functions":

**The Error Function**:

$$\text{erf}(x) = \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} \, dt$$

The function e^{−t²} has no elementary antiderivative, but FTC guarantees erf(x) exists. The error function is fundamental in probability—it gives the cumulative distribution function of the normal distribution (up to scaling and shifting).

**The Sine Integral**:

$$\text{Si}(x) = \int_0^x \frac{\sin t}{t} \, dt$$

The integrand sin(t)/t has a removable singularity at t = 0 (since lim_{t→0} sin(t)/t = 1), so it's continuous and the integral exists. This function appears throughout signal processing and Fourier analysis.

**The Fresnel Integrals**:

$$S(x) = \int_0^x \sin(t^2) \, dt, \qquad C(x) = \int_0^x \cos(t^2) \, dt$$

These describe diffraction patterns in optics—the intensity of light bending around corners.

**The Logarithmic Integral**:

$$\text{li}(x) = \int_2^x \frac{1}{\ln t} \, dt$$

This exists by FTC for x > 1 (since 1/ln(t) is continuous for t > 1). Remarkably, li(x) gives the best simple approximation to the prime counting function π(x)—the Prime Number Theorem states that π(x) ~ li(x).

These special functions are *defined* as integrals. Their existence is guaranteed by FTC even though no closed form exists.

### First-Order Linear: y' + P(x)y = Q(x)

**Theorem**: If P and Q are continuous on an interval containing a, then y' + P(x)y = Q(x) with y(a) = y₀ has a unique solution:

$$y(x) = \frac{1}{\mu(x)} \left( y_0 + \int_a^x \mu(t) \, Q(t) \, dt \right)$$

where μ(x) = e^{∫ₐˣ P(t) dt} is the integrating factor.

*Proof idea*: Multiply the equation by μ(x). Since μ' = Pμ, the left side becomes (μy)' = μQ. Integrate both sides using FTC.

- **Existence**: All functions are continuous, so all integrals exist by FTC.
- **Uniqueness**: The difference of two solutions satisfies the homogeneous equation with zero initial condition.

**Example**: Solve y' + 2y = eˣ with y(0) = 1.

Integrating factor: μ(x) = e^{2x}. Then (e^{2x} y)' = e^{3x}.

Integrate: e^{2x} y = e^{3x}/3 + C.

From y(0) = 1: 1 = 1/3 + C, so C = 2/3.

Solution: y = (1/3)eˣ + (2/3)e^{−2x}.

**Example**: Solve y' − y/x = x² with y(1) = 0 for x > 0.

Integrating factor: μ(x) = e^{−∫ 1/x dx} = e^{−ln x} = 1/x. Then (y/x)' = x.

Integrate: y/x = x²/2 + C.

From y(1) = 0: 0 = 1/2 + C, so C = −1/2.

Solution: y = x³/2 − x/2.

### Separable Equations: y' = f(x)g(y)

When can we solve y' = f(x)g(y)? If g(y) ≠ 0, we can formally "separate":

$$\frac{dy}{g(y)} = f(x) \, dx$$

Integrate both sides: G(y) = F(x) + C, where G' = 1/g and F' = f.

**Key question**: Can we solve for y? That is, can we invert G?

**Theorem**: If f is continuous near x₀ and g is continuous and nonzero near y₀, then y' = f(x)g(y) with y(x₀) = y₀ has a solution (at least locally).

*Proof*: 
1. F(x) = ∫_{x₀}^x f(t) dt exists by FTC.
2. G(y) = ∫_{y₀}^y 1/g(s) ds exists by FTC (since g ≠ 0 means 1/g is continuous).
3. G'(y) = 1/g(y) ≠ 0, so G is strictly monotone.
4. Strictly monotone continuous functions have continuous inverses (Chapter 6).
5. The solution is y = G⁻¹(F(x) + C) where C is chosen so y(x₀) = y₀.

**Key insight**: We proved existence without computing G⁻¹ explicitly!

**Example**: Solve y' = xy with y(0) = 1.

Separate: dy/y = x dx. Integrate: ln|y| = x²/2 + C, so y = Ae^{x²/2}.

From y(0) = 1: A = 1. Thus y = e^{x²/2}.

Note: e^{x²/2} has no elementary antiderivative, so we can't verify this solution by direct integration. But we can verify by differentiation: (e^{x²/2})' = x·e^{x²/2} = x·y. ✓

**Example**: Solve y' = y² with y(0) = 1.

Separate: dy/y² = dx. Integrate: −1/y = x + C, so y = −1/(x + C).

From y(0) = 1: −1 = C. Thus y = 1/(1−x).

**Important observation**: This solution blows up at x = 1! The solution only exists on (−∞, 1). Even when our existence theorem applies, the solution may not exist globally.

### The Limits of Elementary Methods

Consider the innocent-looking equation:

$$y' = x + y^2$$

We cannot separate variables (y² and x are added, not multiplied). There's no integrating factor. No algebraic trick works.

Does a solution even exist?

The answer is **yes**—but proving it requires fundamentally new tools:

- **Picard iteration**: Construct a sequence of approximating functions y₀, y₁, y₂, ... that converge to a solution.
- **Contraction mappings**: The Picard iteration defines a contraction on a suitable space of functions.
- **Completeness**: Convergence of the iteration requires completeness of the function space.

This is the content of Chapter 12. For now, we've seen that elementary methods—quadrature, integrating factors, separation—handle important classes of ODEs, with existence guaranteed by the tools developed in this course.

---

## 9.4 Logarithms

### The Integral Definition

We've known since Chapter 7 that the natural logarithm exists as the inverse of exp. We know it's continuous and satisfies ln(xy) = ln(x) + ln(y). But we had no formula to compute it.

Now we do.

**Definition**: For x > 0, define:

$$L(x) = \int_1^x \frac{1}{t} \, dt$$

Our goal: prove L is a logarithm, and identify which one.

### L is a Logarithm

**Theorem**: L(xy) = L(x) + L(y) for all x, y > 0.

*Proof*: By additivity of integrals:

$$L(xy) = \int_1^{xy} \frac{1}{t} \, dt = \int_1^x \frac{1}{t} \, dt + \int_x^{xy} \frac{1}{t} \, dt = L(x) + \int_x^{xy} \frac{1}{t} \, dt$$

For the second integral, substitute u = t/x, so t = ux, dt = x du. When t = x, u = 1; when t = xy, u = y.

$$\int_x^{xy} \frac{1}{t} \, dt = \int_1^y \frac{1}{ux} \cdot x \, du = \int_1^y \frac{1}{u} \, du = L(y)$$

Thus L(xy) = L(x) + L(y). ∎

**Corollary**: L = log_b for some base b > 0.

We proved in Chapter 7 that continuous functions satisfying f(xy) = f(x) + f(y) are logarithms.

### Which Logarithm?

**Theorem**: L'(x) = 1/x.

*Proof*: Immediate from FTC I. ∎

**Theorem**: L = ln, the natural logarithm (logarithm base e).

*Proof*: Let E = L⁻¹ be the inverse function of L. (This inverse exists because L'(x) = 1/x > 0, so L is strictly increasing.)

By the inverse function theorem:

$$E'(y) = \frac{1}{L'(E(y))} = \frac{1}{1/E(y)} = E(y)$$

So E satisfies E' = E. We proved in Chapter 7 that the unique solution to y' = y with y(0) = 1 is y = eˣ.

Since L(1) = ∫₁¹ 1/t dt = 0, we have E(0) = 1.

Thus E = exp, so L = ln. ∎

### Basic Properties

From L = ln and L' = 1/x, we derive:

- **ln(1) = 0**: Since L(1) = ∫₁¹ 1/t dt = 0.
- **ln is increasing**: Since L'(x) = 1/x > 0 for x > 0.
- **ln(x) → ∞ as x → ∞**: Since ∫₁ˣ 1/t dt grows without bound.
- **ln(x) → −∞ as x → 0⁺**: Since ln(x) = −ln(1/x) → −∞ as 1/x → ∞.

**Corollary**: (eˣ)' = eˣ.

*Alternative proof*: If y = eˣ, then x = ln(y), so dx/dy = 1/y. Thus dy/dx = y = eˣ.

**Corollary**: For any base a > 0, a ≠ 1:

$$\frac{d}{dx} \log_a(x) = \frac{1}{x \ln a}$$

### Growth of the Logarithm

**Theorem**: For any α > 0:

$$\lim_{x \to \infty} \frac{\ln x}{x^\alpha} = 0$$

**Interpretation**: Logarithms grow slower than any positive power of x. Even x^{0.001} eventually dominates ln(x).

### Taylor Series for Logarithms

**Theorem**: For |x| < 1:

$$\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots = \sum_{n=1}^{\infty} \frac{(-1)^{n+1} x^n}{n}$$

*Proof*: Start with the geometric series:

$$\frac{1}{1+t} = 1 - t + t^2 - t^3 + \cdots \quad \text{for } |t| < 1$$

Integrate from 0 to x using Power Series III:

$$\ln(1+x) = \int_0^x \frac{1}{1+t} \, dt = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$$

∎

**Convergence at x = 1**: The series 1 − 1/2 + 1/3 − 1/4 + ... converges by the alternating series test. By Abel's theorem (continuity at the boundary of convergence):

$$\ln(2) = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$$

A beautiful formula—but computationally terrible.

### Faster Computation

**The Problem**: The series for ln(2) converges slowly. The error after n terms is approximately 1/(n+1). For 3 decimal places (error < 0.0005), we need about 2000 terms.

**A Better Approach**: Use the identity:

$$\ln\left(\frac{1+x}{1-x}\right) = \ln(1+x) - \ln(1-x) = 2\left(x + \frac{x^3}{3} + \frac{x^5}{5} + \cdots\right)$$

This converges for |x| < 1, and the terms decay like x^{2k+1}.

To compute ln(2), solve (1+x)/(1−x) = 2, giving x = 1/3:

$$\ln(2) = 2\left(\frac{1}{3} + \frac{1}{3 \cdot 27} + \frac{1}{5 \cdot 243} + \cdots\right)$$

The terms decay like (1/3)^{2k+1}. Just 5 terms give:

$$\ln(2) \approx 2\left(\frac{1}{3} + \frac{1}{81} + \frac{1}{1215} + \frac{1}{15309} + \frac{1}{177147}\right) \approx 0.693147$$

Six decimal places from five terms!

---

## 9.5 Trigonometry

### Improper Integrals (Remark)

Before defining the trigonometric functions, we need a brief aside on improper integrals.

**Definition**: When the integrand f is unbounded at an endpoint b, we define:

$$\int_a^b f = \lim_{c \to b^-} \int_a^c f$$

provided this limit exists. Such integrals are called **improper**.

**Example**: The integral ∫₀¹ 1/√(1−t²) dt is improper because the integrand blows up at t = 1.

To see it converges, compare: near t = 1, we have √(1−t²) ≈ √(2(1−t)) = √2 · √(1−t). So:

$$\frac{1}{\sqrt{1-t^2}} \approx \frac{1}{\sqrt{2}} \cdot \frac{1}{\sqrt{1-t}}$$

Since ∫ 1/√(1−t) dt = −2√(1−t) is bounded near t = 1, our integral converges.

### Defining Arcsine

Recall from Chapter 8 that we defined arc length along curves. On the unit circle x² + y² = 1, we defined (cos t, sin t) as the point at arc length t from (1, 0). This is geometrically natural but hard to compute directly.

Instead, we compute the inverse function—going from a coordinate to an arc length.

**Definition**: For y ∈ [−1, 1]:

$$\arcsin(y) = \int_0^y \frac{1}{\sqrt{1-t^2}} \, dt$$

**Interpretation**: This integral gives the arc length from (1, 0) to (√(1−y²), y) along the unit circle. That's exactly the angle whose sine is y.

### Defining π

**Definition**:

$$\frac{\pi}{2} = \arcsin(1) = \int_0^1 \frac{1}{\sqrt{1-t^2}} \, dt$$

This is a rigorous definition of π as the arc length of a quarter circle.

### Defining Sine and Cosine

**Definition**: sin: [−π/2, π/2] → [−1, 1] is the inverse function of arcsin.

Since arcsin is strictly increasing (its derivative 1/√(1−y²) is positive), this inverse exists.

**Definition**: cos(θ) = √(1 − sin²θ) for θ ∈ [−π/2, π/2], or equivalently, cos(θ) = sin(π/2 − θ).

**Immediate property**: sin²θ + cos²θ = 1.

### Derivatives

**Theorem**: arcsin'(y) = 1/√(1−y²) for y ∈ (−1, 1).

*Proof*: Immediate from FTC I. ∎

**Theorem**: sin'(θ) = cos(θ).

*Proof*: By the inverse function theorem:

$$\sin'(\theta) = \frac{1}{\arcsin'(\sin\theta)} = \frac{1}{1/\sqrt{1-\sin^2\theta}} = \sqrt{1-\sin^2\theta} = \cos\theta$$

∎

**Theorem**: cos'(θ) = −sin(θ).

*Proof*: Differentiate sin²θ + cos²θ = 1:

$$2\sin\theta \cdot \cos\theta + 2\cos\theta \cdot \cos'(\theta) = 0$$

Solving: cos'(θ) = −sin(θ) (when cos θ ≠ 0; extend by continuity). ∎

### The Differential Equation

**Theorem**: Both sin and cos satisfy y'' = −y.

*Proof*: sin'' = (cos)' = −sin. Similarly, cos'' = (−sin)' = −cos. ∎

This ODE characterization turns out to be remarkably powerful.

### Uniqueness of Solutions

**Lemma**: If y'' = −y on an interval and y(0) = y'(0) = 0, then y ≡ 0.

*Proof*: Define E(t) = y(t)² + y'(t)² (the "energy").

$$E'(t) = 2y \cdot y' + 2y' \cdot y'' = 2yy' + 2y'(-y) = 0$$

So E is constant. Since E(0) = 0² + 0² = 0, we have E(t) = 0 for all t.

This means y(t)² + y'(t)² = 0, which implies y(t) = 0 for all t. ∎

**Corollary**: Solutions to y'' = −y are uniquely determined by their initial conditions y(0) and y'(0).

### The Addition Formulas

**Theorem**: 
$$\sin(\alpha + \beta) = \sin\alpha \cos\beta + \cos\alpha \sin\beta$$
$$\cos(\alpha + \beta) = \cos\alpha \cos\beta - \sin\alpha \sin\beta$$

*Proof*: Fix α. Define:
- f(t) = sin(α + t)
- g(t) = sin(α)cos(t) + cos(α)sin(t)

Both satisfy y'' = −y (verify by differentiation).

Initial conditions: f(0) = sin(α) = g(0), and f'(0) = cos(α) = g'(0).

By uniqueness, f = g. The cosine formula is similar. ∎

### Special Values and Periodicity

From the definitions and addition formulas:

- sin(0) = 0, cos(0) = 1 (from arcsin(0) = 0)
- sin(π/2) = 1, cos(π/2) = 0 (from arcsin(1) = π/2)
- sin(π) = 0, cos(π) = −1 (addition formulas)
- sin(2π) = 0, cos(2π) = 1
- sin(π/4) = cos(π/4) = 1/√2

**Theorem**: sin and cos are periodic with period 2π.

*Proof*: Define f(t) = sin(t + 2π). Then f'' = −f, f(0) = sin(2π) = 0, f'(0) = cos(2π) = 1.

But sin also satisfies y'' = −y with y(0) = 0, y'(0) = 1.

By uniqueness, f = sin. Similarly for cos. ∎

**Theorem**: π is the smallest positive zero of sin.

### Taylor Series

**Theorem**: For all x ∈ ℝ:

$$\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}$$

$$\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!}$$

*Proof*: Compute derivatives at 0 using sin' = cos, cos' = −sin. Convergence for all x follows from the ratio test. ∎

---

## 9.6 Computing π

### Two Constants for the Circle

From Chapter 8, the unit circle has two natural geometric constants:

**Perimeter constant**: The circumference of the unit circle is 2π, where:

$$\pi = \int_{-1}^{1} \frac{1}{\sqrt{1-x^2}} \, dx$$

**Area constant**: The area of the unit disk is:

$$A = \int_{-1}^{1} 2\sqrt{1-x^2} \, dx$$

Are these the same π? Archimedes proved they are equal. We now give a calculus proof.

### Archimedes' Theorem

**Theorem**: The area of the unit disk equals π (the perimeter constant).

*Proof*: We show ∫₀¹ √(1−x²) dx = π/4 by relating it to ∫₀¹ 1/√(1−x²) dx = π/2.

Use integration by parts on ∫√(1−x²) dx with u = √(1−x²), dv = dx:

$$\int \sqrt{1-x^2} \, dx = x\sqrt{1-x^2} + \int \frac{x^2}{\sqrt{1-x^2}} \, dx$$

Now use x² = 1 − (1−x²):

$$\frac{x^2}{\sqrt{1-x^2}} = \frac{1}{\sqrt{1-x^2}} - \sqrt{1-x^2}$$

Substituting and solving:

$$2\int \sqrt{1-x^2} \, dx = x\sqrt{1-x^2} + \int \frac{1}{\sqrt{1-x^2}} \, dx$$

Evaluate from 0 to 1:

$$2\int_0^1 \sqrt{1-x^2} \, dx = 0 + \frac{\pi}{2}$$

Thus ∫₀¹ √(1−x²) dx = π/4, so the full disk has area π. ∎

**The π journey is complete**: 
- Chapter 4: π defined via polygon limits
- Chapter 8: π as arc length integral, consistency with Ch 4 definition
- Chapter 9: π computed via series

### Arctangent

**Definition**: For x ∈ ℝ:

$$\arctan(x) = \int_0^x \frac{1}{1+t^2} \, dt$$

**Key properties**:
- arctan'(x) = 1/(1+x²) — a **rational function**! No square roots.
- arctan(0) = 0
- arctan(x) → π/2 as x → ∞
- arctan(1) = π/4

### π as an Integral of a Rational Function

**Theorem**:

$$\frac{\pi}{4} = \int_0^1 \frac{1}{1+t^2} \, dt$$

This is remarkable: π, defined geometrically via circles, equals an integral involving only polynomials!

### Taylor Series for Arctangent

**Theorem**: For |x| < 1:

$$\arctan(x) = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1}$$

*Proof*: From the geometric series:

$$\frac{1}{1+t^2} = 1 - t^2 + t^4 - t^6 + \cdots \quad \text{for } |t| < 1$$

Integrate from 0 to x using Power Series III. ∎

### The Gregory-Leibniz Series

At x = 1, the series becomes:

$$1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \cdots$$

By Abel's theorem:

$$\frac{\pi}{4} = \arctan(1) = 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \cdots$$

This is the **Gregory-Leibniz series** (Gregory 1671, Leibniz 1674).

### The Problem: Slow Convergence

The error after n terms is approximately 1/(2n+1).

- For 2 decimal places: need n > 100 terms
- For 3 decimal places: need n > 500 terms

The problem: x = 1 is on the boundary of convergence, where power series converge slowly.

### Better Formulas

**Proposition**:

$$\frac{\pi}{4} = \arctan\left(\frac{1}{2}\right) + \arctan\left(\frac{1}{3}\right)$$

*Proof*: Let θ = arctan(1/2) and φ = arctan(1/3). Using the tangent addition formula:

$$\tan(\theta + \varphi) = \frac{\frac{1}{2} + \frac{1}{3}}{1 - \frac{1}{6}} = \frac{5/6}{5/6} = 1$$

Since θ, φ ∈ (0, π/4), we have θ + φ = π/4. ∎

**Convergence**: Terms decay like (1/2)^{2k+1} + (1/3)^{2k+1}—exponentially fast!

**Machin's Formula (1706)**:

$$\frac{\pi}{4} = 4\arctan\left(\frac{1}{5}\right) - \arctan\left(\frac{1}{239}\right)$$

With n = 9 terms: 15 significant digits. Machin computed 100 digits by hand.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | FTC as the unification of differentiation and integration |
| 9.1 FTC | The theorem and what it means |
| 9.2 Antidifferentiation | Power Series III; substitution; parts; Taylor remainder |
| 9.3 ODEs | What FTC immediately gives us; special functions; limits |
| 9.4 Logarithms | Define ln via integral; compute via series |
| 9.5 Trigonometry | Define trig via integrals; derive all from y'' = −y |
| 9.6 Computing π | Area = perimeter constant; efficient series |

## Key Theorems

1. **FTC I**: (∫ₐˣ f)' = f — differentiation undoes integration
2. **FTC II**: ∫ₐᵇ f = F(b) − F(a) where F' = f — evaluation formula
3. **Power Series III**: Term-by-term integration within radius R
4. **ODE Existence**: Quadrature, linear, and separable equations have solutions via FTC
5. **L = ln**: The integral ∫₁ˣ 1/t dt defines the natural logarithm
6. **Uniqueness for y'' = −y**: Solutions determined by initial conditions
7. **Archimedes' Theorem**: Area of unit disk = π (the perimeter constant)
8. **Gregory-Leibniz**: π/4 = 1 − 1/3 + 1/5 − 1/7 + ⋯

---

## Exercises (Selected)

### Section 9.1

- Prove: if F' = G' = f on [a,b], then F and G differ by a constant
- Use FTC to prove: if f is continuous and ∫ₐᵇ f = 0 for all b, then f ≡ 0

### Section 9.2

- Prove Taylor's theorem with integral remainder via repeated IBP
- Use substitution to compute ∫₀¹ x/(1+x⁴) dx
- Use IBP to derive reduction formula for ∫ xⁿ eˣ dx
- Prove: ∫₀^π sin²x dx = ∫₀^π cos²x dx = π/2
- Compute ∫ x² ln(x) dx

### Section 9.3

- Solve y' + 3y = e^{2x} with y(0) = 1
- Solve y' = y/x with y(1) = 2
- Solve y' = y(1−y) with y(0) = 1/2 (logistic equation)
- Verify erf'(x) = (2/√π)e^{−x²}, erf(0) = 0, erf odd, erf(x) → 1 as x → ∞
- Bernoulli equations: Show y' + P(x)y = Q(x)yⁿ reduces to linear via v = y^{1−n}
- Homogeneous equations: Show y' = f(y/x) reduces to separable via v = y/x
- Second-order constant coefficient: Solve y'' + ay' + by = 0 via characteristic equation

### Section 9.4

- Compute ln(2) via slow series: how many terms for 2 decimal places?
- Compute ln(2) via fast series: how many terms for 6 decimal places?
- Compute ln(3) using ln((1+x)/(1−x)) with appropriate x
- Prove ln(x) ≤ x − 1 for x > 0, with equality iff x = 1
- Prove ln(x) ≥ 1 − 1/x for x > 0, with equality iff x = 1

### Section 9.5

- Compute sin(π/6), cos(π/3) from addition/half-angle formulas
- Prove tan'(x) = sec²(x)
- Derive (arccos)'(x), (arctan)'(x) from definitions
- Hyperbolic functions: Show sinh, cosh satisfy y'' = y; derive parallel properties

### Section 9.6

- Wallis product: π/2 = (2·2)/(1·3) · (4·4)/(3·5) · ⋯ (guided, via ∫₀^{π/2} sinⁿx)
- Find another Machin-like formula
- Compute π to 6 decimal places using arctan(1/2) + arctan(1/3)
- Compute π to 10 decimal places using Machin's formula

---

## Dependencies

**Requires from earlier chapters**:

- Differentiation, MVT, inverse function theorem (Ch 7)
- Integration, geometric definitions, Darboux integral (Ch 8)
- Series, convergence tests, Abel's theorem (Ch 4, 5)
- Inverse functions and monotonicity (Ch 6)
- Exponential function and e (Ch 7)

**Sets up for later chapters**:

- Ch 10: Completing the integral (Daniell construction)
- Ch 11: Sequences and series of functions (uniform convergence)
- Ch 12: Picard iteration and general ODE existence