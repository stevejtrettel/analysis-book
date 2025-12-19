# Chapter 8: Calculus

## Overview

This chapter reveals the connection between differentiation and integration—the Fundamental Theorem of Calculus. This single theorem transforms integration from laborious Riemann sum calculations into algebraic manipulation, and enables us to finally *compute* the geometric quantities defined in Chapter 7.

**The arc:**
> FTC → Integration techniques → Define elementary functions via integrals → Compute π

---

## Historical Prelude (Unnumbered)

### The Problem

Differentiation finds rates of change. Integration finds areas. These seem like completely different operations—one tears functions apart, the other builds them up. For two millennia, they developed as separate subjects.

Then came the stunning discovery of the 1600s: they are inverses of each other.

### The Development

**Barrow's Geometric Version (1660s)**

Isaac Barrow, Newton's teacher at Cambridge, proved a geometric theorem relating tangent lines to areas. Given a curve y = f(x) and the area function A(x) = ∫₀ˣ f(t) dt, Barrow showed geometrically that the slope of the tangent to A equals the height f(x).

In modern notation: A'(x) = f(x). This is the Fundamental Theorem.

But Barrow didn't recognize its computational significance. To him, it was a theorem about geometric relationships, not a tool for calculation.

**Newton and Leibniz (1680s)**

Newton and Leibniz, working independently, both discovered the Fundamental Theorem and—crucially—understood its power. Their insight: integration is "anti-differentiation."

To find ∫₀¹ x² dx, don't compute Riemann sums. Instead, find a function F with F' = x². Since (x³/3)' = x², we have:

$$\int_0^1 x^2\, dx = \frac{1^3}{3} - \frac{0^3}{3} = \frac{1}{3}$$

No limits, no partitions, no sums of squares—just algebra.

**The Unification**

Before the Fundamental Theorem, finding areas required Archimedes-style exhaustion arguments for each new curve. Fermat's calculation of ∫xⁿ was a tour de force; every new function required new tricks.

After the Fundamental Theorem, finding areas becomes a systematic procedure: find an antiderivative, evaluate at endpoints. Two millennia of geometric technique were subsumed into a single theorem.

This is why "calculus" is one subject rather than two. Differentiation and integration are not merely related—they are inverse operations, two sides of one coin.

### The Message

The Fundamental Theorem is the central result of this book. It explains why we developed limits, continuity, and differentiation before integration. It unlocks computation of the geometric quantities from Chapter 7. And it enables us to *define* the elementary functions—logarithms, trigonometric functions—as integrals, finally making them computable.

---

## 8.1 The Fundamental Theorem

### Signed Integrals

**Notation**: For a < b, we have defined ∫ₐᵇ f. We extend this:

$$\int_b^a f = -\int_a^b f$$

This makes FTC statements cleaner and allows the variable endpoint to move in either direction.

### Mean Value Theorem for Integrals

**Lemma (MVT for Integrals)**: If f is continuous on [a,b], then there exists c ∈ (a,b) such that:

$$\int_a^b f = f(c) \cdot (b-a)$$

*Proof*: Since f is continuous on [a,b], it achieves its minimum m and maximum M. By monotonicity:

$$m(b-a) \leq \int_a^b f \leq M(b-a)$$

So m ≤ (1/(b-a))∫ₐᵇ f ≤ M. By the Intermediate Value Theorem, f achieves this average value at some c ∈ (a,b). ∎

*Interpretation*: The integral equals the "average value" of f times the length of the interval.

### The Fundamental Theorem, Part I

**Theorem (FTC I)**: If f is continuous on [a,b], define F(x) = ∫ₐˣ f(t) dt. Then F is differentiable on (a,b) and:

$$F'(x) = f(x)$$

*Proof*: We compute the derivative from the definition:

$$F'(x) = \lim_{h \to 0} \frac{F(x+h) - F(x)}{h} = \lim_{h \to 0} \frac{1}{h} \int_x^{x+h} f(t)\, dt$$

By MVT for integrals, ∫ₓˣ⁺ʰ f = f(c) · h for some c between x and x+h.

So F'(x) = lim_{h→0} f(c). As h → 0, c → x, and by continuity of f, f(c) → f(x). ∎

*Interpretation*: Differentiation undoes integration. The integral ∫ₐˣ f is an antiderivative of f.

### The Fundamental Theorem, Part II

**Theorem (FTC II)**: If f is continuous on [a,b] and F is any antiderivative of f (meaning F' = f), then:

$$\int_a^b f = F(b) - F(a)$$

*Proof*: Let G(x) = ∫ₐˣ f. By FTC I, G' = f. So (G - F)' = f - f = 0.

By MVT (from Chapter 6), G - F is constant. Thus G(x) = F(x) + C for some constant C.

At x = a: G(a) = ∫ₐᵃ f = 0, so C = -F(a).

At x = b: G(b) = ∫ₐᵇ f = F(b) + C = F(b) - F(a). ∎

**Notation**: Write F(x)|ₐᵇ = F(b) - F(a).

### Linearity of Integration

**Corollary**: For continuous f, g and constants α, β:

$$\int_a^b (\alpha f + \beta g) = \alpha \int_a^b f + \beta \int_a^b g$$

*Proof*: Let F' = f and G' = g. Then (αF + βG)' = αf + βg. By FTC II:

$$\int_a^b (\alpha f + \beta g) = (\alpha F + \beta G)\Big|_a^b = \alpha(F(b) - F(a)) + \beta(G(b) - G(a))$$

∎

*Remark*: Linearity can also be proved directly from the axioms for all Darboux integrable functions. But FTC shows it follows from the linearity of differentiation.

### Integration by Substitution

**Theorem (U-Substitution)**: If g is differentiable with continuous derivative, and f is continuous, then:

$$\int_a^b f(g(x)) g'(x)\, dx = \int_{g(a)}^{g(b)} f(u)\, du$$

*Proof*: Let F be an antiderivative of f. By the chain rule, (F ∘ g)' = (F' ∘ g) · g' = (f ∘ g) · g'.

By FTC II:
$$\int_a^b f(g(x)) g'(x)\, dx = F(g(x))\Big|_a^b = F(g(b)) - F(g(a)) = \int_{g(a)}^{g(b)} f(u)\, du$$

∎

*Interpretation*: Substitution is the chain rule in reverse.

**Example**: Compute ∫₀¹ x·eˣ² dx.

Let u = x², so du = 2x dx. When x = 0, u = 0; when x = 1, u = 1.

$$\int_0^1 x \cdot e^{x^2}\, dx = \frac{1}{2} \int_0^1 e^u\, du = \frac{1}{2}(e - 1)$$

### Integration by Parts

**Theorem (IBP)**: If f and g are differentiable with continuous derivatives, then:

$$\int_a^b f(x) g'(x)\, dx = f(x)g(x)\Big|_a^b - \int_a^b f'(x) g(x)\, dx$$

*Proof*: By the product rule, (fg)' = f'g + fg'. Rearranging: fg' = (fg)' - f'g.

Integrate both sides and apply FTC II. ∎

*Interpretation*: Integration by parts is the product rule in reverse.

**Example**: Compute ∫₀¹ x·eˣ dx.

Let f(x) = x, g'(x) = eˣ, so f'(x) = 1, g(x) = eˣ.

$$\int_0^1 x \cdot e^x\, dx = x \cdot e^x\Big|_0^1 - \int_0^1 e^x\, dx = e - (e - 1) = 1$$

### Taylor's Theorem with Integral Remainder

**Theorem**: If f has n+1 continuous derivatives on [a,x], then:

$$f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k + \frac{1}{n!}\int_a^x (x-t)^n f^{(n+1)}(t)\, dt$$

*Proof*: Repeated integration by parts. (Exercise)

*Remark*: The Lagrange form of the remainder (from Chapter 6) follows by applying MVT for integrals to the integral remainder.

---

## 8.2 Logarithms

### The Integral Definition

We know from earlier chapters that ln is continuous and satisfies ln(xy) = ln(x) + ln(y). But we had no formula to *compute* it.

**Definition**: For x > 0, define:

$$L(x) = \int_1^x \frac{1}{t}\, dt$$

Our goal: prove L is a logarithm, and identify which one.

### L is a Logarithm

**Theorem**: L(xy) = L(x) + L(y) for all x, y > 0.

*Proof*: By additivity of integrals:

$$L(xy) = \int_1^{xy} \frac{1}{t}\, dt = \int_1^x \frac{1}{t}\, dt + \int_x^{xy} \frac{1}{t}\, dt = L(x) + \int_x^{xy} \frac{1}{t}\, dt$$

For the second integral, substitute u = t/x, so t = ux, dt = x du. When t = x, u = 1; when t = xy, u = y.

$$\int_x^{xy} \frac{1}{t}\, dt = \int_1^y \frac{1}{ux} \cdot x\, du = \int_1^y \frac{1}{u}\, du = L(y)$$

Thus L(xy) = L(x) + L(y). ∎

**Corollary**: L = log_b for some base b > 0.

*Proof*: We proved earlier that continuous functions satisfying the functional equation f(xy) = f(x) + f(y) are logarithms. ∎

### Which Logarithm?

**Theorem**: L'(x) = 1/x.

*Proof*: Immediate from FTC I. ∎

**Theorem**: L = ln, the natural logarithm (logarithm base e).

*Proof*: Let E = L⁻¹ be the inverse function of L. By the inverse function theorem:

$$E'(y) = \frac{1}{L'(E(y))} = \frac{1}{1/E(y)} = E(y)$$

So E satisfies E' = E. We proved earlier that the unique solution to y' = y with y(0) = 1 is y = eˣ.

Since L(1) = 0, we have E(0) = 1. Thus E = exp, so L = ln. ∎

### Basic Properties

From L = ln and L' = 1/x:

- ln(1) = 0
- ln'(x) = 1/x
- ln is increasing (since 1/x > 0 for x > 0)
- ln(x) → ∞ as x → ∞ (since ∫₁ˣ 1/t dt → ∞)
- ln(x) → -∞ as x → 0⁺

**Corollary**: (eˣ)' = eˣ (alternative proof via inverse function theorem).

**Corollary**: For any base a > 0:

$$\log_a'(x) = \frac{1}{x \ln a}$$

### Growth of the Logarithm

**Theorem**: For any α > 0:

$$\lim_{x \to \infty} \frac{\ln x}{x^\alpha} = 0$$

*Proof*: Let y = x^α, so x = y^{1/α} and ln(x) = (1/α)ln(y). Then:

$$\frac{\ln x}{x^\alpha} = \frac{\ln(y^{1/\alpha})}{y} = \frac{\ln y}{\alpha y}$$

It suffices to show ln(y)/y → 0. By L'Hôpital's rule (or direct argument), this limit is 0. ∎

*Interpretation*: Logarithms grow slower than any positive power.

### Taylor Series for Logarithms

**Theorem**: For |x| < 1:

$$\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots = \sum_{n=1}^{\infty} \frac{(-1)^{n+1} x^n}{n}$$

*Proof*: Start with the geometric series:

$$\frac{1}{1+t} = 1 - t + t^2 - t^3 + \cdots \quad \text{for } |t| < 1$$

Integrate from 0 to x:

$$\ln(1+x) = \int_0^x \frac{1}{1+t}\, dt = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$$

∎

**Convergence at x = 1**: The series 1 - 1/2 + 1/3 - 1/4 + ... converges by the alternating series test. By Abel's theorem (continuity at the boundary):

$$\ln(2) = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$$

### Faster Computation

The series for ln(2) converges slowly—roughly 1000 terms for 3 decimal places.

**Better approach**: Use the identity:

$$\ln\left(\frac{1+x}{1-x}\right) = \ln(1+x) - \ln(1-x) = 2\left(x + \frac{x^3}{3} + \frac{x^5}{5} + \cdots\right)$$

To compute ln(2), solve (1+x)/(1-x) = 2, giving x = 1/3:

$$\ln(2) = 2\left(\frac{1}{3} + \frac{1}{3 \cdot 27} + \frac{1}{5 \cdot 243} + \cdots\right)$$

The terms decay like (1/3)^(2k+1)—a few terms give many digits.

### Historical Note

The first logarithm tables (Briggs, 1620s) were computed by repeated square roots—an elementary but laborious method requiring no calculus. After infinite series were discovered, the series for ln((1+x)/(1-x)) provided a faster approach for high-precision computation. Both methods make excellent exercises.

---

## 8.3 Trigonometry

### The Geometric Definition

Recall from Chapter 7 (Integration and Geometry) that we defined arc length for curves. On the unit circle x² + y² = 1, we defined:

> (cos t, sin t) = the coordinates of the point at arc length t from (1, 0), measured counterclockwise.

This is geometrically natural but hard to compute directly.

### Computing Inverse Functions

Instead of computing sin and cos directly, we compute their inverses. These take a coordinate and return an arc length—something we can express as an integral.

For the upper semicircle y = √(1-x²):

$$y' = \frac{-x}{\sqrt{1-x^2}}, \qquad \sqrt{1 + (y')^2} = \frac{1}{\sqrt{1-x^2}}$$

So arc length from (1,0) to (x, √(1-x²)) is:

$$\int_x^1 \frac{1}{\sqrt{1-t^2}}\, dt$$

But it's more natural to parametrize by the y-coordinate.

### Defining Arcsine

**Definition**: For y ∈ [-1, 1]:

$$\arcsin(y) = \int_0^y \frac{1}{\sqrt{1-t^2}}\, dt$$

This is the arc length from (1, 0) to (√(1-y²), y) along the unit circle—exactly the angle whose sine is y.

*Note*: The integral is improper at y = ±1 (the integrand blows up), but it converges.

### Defining π

**Definition**:

$$\frac{\pi}{2} = \arcsin(1) = \int_0^1 \frac{1}{\sqrt{1-t^2}}\, dt$$

This is a rigorous definition of π as the arc length of a quarter circle.

### Defining Sine and Cosine

**Definition**: sin: [-π/2, π/2] → [-1, 1] is the inverse function of arcsin.

**Definition**: cos(θ) = sin(π/2 - θ), or equivalently, cos(θ) = √(1 - sin²θ) with appropriate sign.

**Immediate property**: sin²θ + cos²θ = 1 (from the circle definition).

### Derivatives

**Theorem**: arcsin'(y) = 1/√(1-y²).

*Proof*: FTC I. ∎

**Theorem**: sin'(θ) = cos(θ).

*Proof*: By the inverse function theorem:

$$\sin'(\theta) = \frac{1}{\arcsin'(\sin\theta)} = \frac{1}{1/\sqrt{1-\sin^2\theta}} = \sqrt{1-\sin^2\theta} = \cos\theta$$

∎

**Theorem**: cos'(θ) = -sin(θ).

*Proof*: cos(θ) = sin(π/2 - θ), so cos'(θ) = -sin'(π/2 - θ) · (-1) · ... 

More directly: differentiate sin²θ + cos²θ = 1 to get 2 sin θ cos θ + 2 cos θ · cos'θ = 0, so cos'θ = -sin θ (when cos θ ≠ 0; extend by continuity). ∎

### The Differential Equation

**Theorem**: Both sin and cos satisfy y'' = -y.

*Proof*: sin'' = (cos)' = -sin. Similarly, cos'' = (-sin)' = -cos. ∎

### Uniqueness of Solutions

**Lemma**: If y'' = -y on an interval and y(0) = y'(0) = 0, then y ≡ 0.

*Proof*: Define E(t) = y(t)² + y'(t)².

$$E'(t) = 2y \cdot y' + 2y' \cdot y'' = 2yy' + 2y'(-y) = 0$$

By MVT (Chapter 6), E is constant. Since E(0) = 0, we have E ≡ 0, so y ≡ 0. ∎

**Corollary**: Solutions to y'' = -y are uniquely determined by initial conditions y(0) and y'(0).

*Proof*: If y₁ and y₂ have the same initial conditions, h = y₁ - y₂ satisfies h'' = -h with h(0) = h'(0) = 0, so h ≡ 0. ∎

### The Addition Formulas

**Theorem**: 
$$\sin(\alpha + \beta) = \sin\alpha \cos\beta + \cos\alpha \sin\beta$$
$$\cos(\alpha + \beta) = \cos\alpha \cos\beta - \sin\alpha \sin\beta$$

*Proof*: Fix α. Define:
- f(t) = sin(α + t)
- g(t) = sin(α)cos(t) + cos(α)sin(t)

Both satisfy y'' = -y (verify by differentiation).

Initial conditions: f(0) = sin(α) = g(0), and f'(0) = cos(α) = g'(0).

By uniqueness, f = g. The cosine formula is similar. ∎

### Special Values

Using the addition formulas:

- sin(0) = 0, cos(0) = 1 (from definition)
- sin(π/2) = 1, cos(π/2) = 0 (from definition)
- sin(π) = sin(π/2 + π/2) = sin(π/2)cos(π/2) + cos(π/2)sin(π/2) = 0
- cos(π) = cos(π/2)cos(π/2) - sin(π/2)sin(π/2) = -1
- sin(2π) = 0, cos(2π) = 1 (apply addition formulas twice)

From double angle formulas:
- cos(π/2) = 1 - 2sin²(π/4), so sin(π/4) = 1/√2 = cos(π/4)
- sin(π/6), cos(π/6), etc. (exercise)

### Periodicity

**Theorem**: sin and cos are periodic with period 2π.

*Proof*: Define f(t) = sin(t + 2π). Then f'' = -f, f(0) = sin(2π) = 0, f'(0) = cos(2π) = 1.

But sin also satisfies y'' = -y with y(0) = 0, y'(0) = 1.

By uniqueness, f = sin, i.e., sin(t + 2π) = sin(t). Similarly for cos. ∎

### Extension to All of ℝ

The periodicity theorem shows sin and cos extend consistently to all of ℝ. Alternatively, the addition formulas give:

- sin(θ + π) = -sin(θ), cos(θ + π) = -cos(θ)
- sin(-θ) = -sin(θ), cos(-θ) = cos(θ)

These extend sin from [-π/2, π/2] to all of ℝ.

### Alternative Characterization of π

**Theorem**: π is the smallest positive zero of sin.

*Proof*: We have sin(0) = 0 and sin(π) = 0. We must show sin(θ) ≠ 0 for θ ∈ (0, π).

On (0, π/2], sin is increasing (since sin' = cos > 0 there) from sin(0) = 0 to sin(π/2) = 1, so sin > 0 on (0, π/2].

On (π/2, π), sin(θ) = sin(π - θ) and π - θ ∈ (0, π/2), so sin(θ) > 0 there too. ∎

### Taylor Series

**Theorem**: For all x ∈ ℝ:

$$\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}$$

$$\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!}$$

*Proof*: Compute derivatives at 0 using sin' = cos, cos' = -sin:
- sin(0) = 0, sin'(0) = 1, sin''(0) = 0, sin'''(0) = -1, ...
- cos(0) = 1, cos'(0) = 0, cos''(0) = -1, cos'''(0) = 0, ...

The Taylor series follow. Convergence for all x follows from the ratio test (or from the observation that all derivatives are bounded by 1). ∎

---

## 8.4 Computing π

### Two Constants for the Circle

From Chapter 7, the circle has two natural constants:

**Perimeter constant**: The circumference of the unit circle is 2π, where:

$$\pi = \int_0^{\pi} 1\, d\theta = \int_{-1}^{1} \frac{1}{\sqrt{1-x^2}}\, dx$$

(as arc length, proven in Section 8.3)

**Area constant**: The area of the unit disk is:

$$A = \int_{-1}^{1} 2\sqrt{1-x^2}\, dx$$

Are these the same π? Archimedes proved they are rationally related. We now prove they're equal.

### Archimedes' Theorem

**Theorem**: The area of the unit disk equals π (the perimeter constant).

*Proof*: We show ∫₀¹ √(1-x²) dx = π/4 by relating it to ∫₀¹ 1/√(1-x²) dx = π/2.

Use integration by parts on ∫√(1-x²) dx with u = √(1-x²), dv = dx:

$$\int \sqrt{1-x^2}\, dx = x\sqrt{1-x^2} + \int \frac{x^2}{\sqrt{1-x^2}}\, dx$$

Now use x² = 1 - (1-x²):

$$\frac{x^2}{\sqrt{1-x^2}} = \frac{1}{\sqrt{1-x^2}} - \sqrt{1-x^2}$$

Substituting:

$$\int \sqrt{1-x^2}\, dx = x\sqrt{1-x^2} + \int \frac{1}{\sqrt{1-x^2}}\, dx - \int \sqrt{1-x^2}\, dx$$

Solving:

$$2\int \sqrt{1-x^2}\, dx = x\sqrt{1-x^2} + \int \frac{1}{\sqrt{1-x^2}}\, dx$$

Evaluating from 0 to 1:

$$2\int_0^1 \sqrt{1-x^2}\, dx = \Big[x\sqrt{1-x^2}\Big]_0^1 + \int_0^1 \frac{1}{\sqrt{1-x^2}}\, dx = 0 + \frac{\pi}{2}$$

Thus ∫₀¹ √(1-x²) dx = π/4, so the full disk has area π. ∎

*Historical note*: This is Archimedes' theorem, proved with integration by parts. Archimedes used a geometric limiting argument with inscribed polygons—fundamentally the same idea, but our tools make it cleaner.

### Why Direct Computation is Hard

We have several definitions of π:

1. π/2 = arcsin(1) = ∫₀¹ 1/√(1-t²) dt — improper integral with square roots
2. π = smallest positive zero of sin — requires Newton's method and lots of Taylor terms
3. π = area of unit disk — proper integral, but Riemann sums involve √(1 - (i/n)²)

All are computable in principle, but awkward in practice.

### Arctangent to the Rescue

**Definition**: For x ∈ ℝ:

$$\arctan(x) = \int_0^x \frac{1}{1+t^2}\, dt$$

**Key properties**:

- arctan'(x) = 1/(1+x²) — a rational function! No square roots.
- arctan(0) = 0
- arctan(x) → π/2 as x → ∞
- arctan(1) = π/4

**Why arctan(1) = π/4**: From the addition formula, tan(π/4) = sin(π/4)/cos(π/4) = 1. (Or geometrically: the line y = x meets the unit circle at angle π/4.)

### π as an Integral of a Rational Function

**Theorem**:

$$\frac{\pi}{4} = \int_0^1 \frac{1}{1+t^2}\, dt$$

This is remarkable: π, defined via circles and arc length, equals an integral involving only polynomials!

**Riemann sum approach**: With partition {0, 1/n, 2/n, ..., 1}:

$$\frac{\pi}{4} \approx \sum_{i=1}^{n} \frac{1}{1+(i/n)^2} \cdot \frac{1}{n}$$

This gives actual numerical estimates. With n = 100 terms, we get π ≈ 3.13... (one decimal place). Progress!

### Taylor Series for Arctangent

**Theorem**: For |x| < 1:

$$\arctan(x) = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \cdots = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1}$$

*Proof*: From the geometric series:

$$\frac{1}{1+t^2} = 1 - t^2 + t^4 - t^6 + \cdots \quad \text{for } |t| < 1$$

Integrate from 0 to x. ∎

**Radius of convergence**: R = 1 (the series diverges for |x| > 1).

### The Gregory-Leibniz Series

At x = 1, the series becomes:

$$1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \cdots$$

**Convergence**: By the alternating series test, this converges.

**Abel's theorem**: Since arctan is continuous at x = 1 and the series converges there:

$$\frac{\pi}{4} = \arctan(1) = 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + \cdots$$

This is the **Gregory-Leibniz series** (Gregory 1671, Leibniz 1674).

### The Problem: Slow Convergence

The error after n terms is approximately 1/(2n+1).

- For 2 decimal places (error < 0.005): need n > 100 terms
- For 3 decimal places: need n > 500 terms

Like the Riemann sum approach, roughly a thousand terms for two decimals. The problem: x = 1 is right on the boundary of convergence, where power series converge slowly.

### A Better Formula

Within the radius of convergence, power series converge exponentially fast. We need to evaluate arctan at points *inside* (-1, 1).

**Proposition**:

$$\frac{\pi}{4} = \arctan\left(\frac{1}{2}\right) + \arctan\left(\frac{1}{3}\right)$$

*Proof*: Let θ = arctan(1/2) and φ = arctan(1/3). Using the tangent addition formula:

$$\tan(\theta + \varphi) = \frac{\tan\theta + \tan\varphi}{1 - \tan\theta\tan\varphi} = \frac{\frac{1}{2} + \frac{1}{3}}{1 - \frac{1}{6}} = \frac{5/6}{5/6} = 1$$

Thus θ + φ = π/4. ∎

**The series**:

$$\frac{\pi}{4} = \sum_{k=0}^{\infty} \frac{(-1)^k}{2k+1}\left(\frac{1}{2^{2k+1}} + \frac{1}{3^{2k+1}}\right)$$

**Convergence**: The terms decay like (1/2)^(2k+1) + (1/3)^(2k+1)—exponentially fast!

**Computation**: Just N = 2 terms give:

$$\left(\frac{1}{2} + \frac{1}{3}\right) - \frac{1}{3}\left(\frac{1}{8} + \frac{1}{27}\right) + \frac{1}{5}\left(\frac{1}{32} + \frac{1}{243}\right) \approx 3.14558$$

Two decimals correct! With N = 10 terms: π ≈ 3.14159257960635 (7 decimals). With N = 22 terms: 15 significant digits.

### Machin's Formula

**Theorem** (Machin, 1706):

$$\frac{\pi}{4} = 4\arctan\left(\frac{1}{5}\right) - \arctan\left(\frac{1}{239}\right)$$

*Proof*: Verify using the tangent addition formula repeatedly, or note that:

$$(5+i)^4(239-i) = -114244(1+i)$$

and use the polar form of complex numbers.

**Why this is even better**: The series for arctan(1/5) has terms decaying like (1/5)^(2k+1). The series for arctan(1/239) decays even faster.

**Error estimate**: After n terms, error is at most:

$$4 \cdot \frac{(1/5)^{2n+1}}{2n+1} + \frac{(1/239)^{2n+1}}{2n+1}$$

With n = 5 terms: π ≈ 3.14159268240440 (7 decimals). With n = 9 terms: 15 significant digits.

Machin computed 100 digits by hand using this formula.

### Historical Note

We have come full circle—from Archimedes' polygon approximations (Chapter 2) to Gregory and Leibniz's beautiful but slow series, to Machin's efficient formula. The tools of calculus—integration, series, the interplay of algebra and analysis—transform the ancient problem of computing π into a routine calculation.

---

---

## 8.5 Differential Equations

### Introduction

The Fundamental Theorem says every continuous function has an antiderivative. This means certain differential equations automatically have solutions. We explore three classes where existence follows from our tools, then indicate where new methods are needed.

### Quadrature: y' = f(x)

The simplest differential equation: find y given its derivative.

**Theorem**: If f is continuous on an interval containing a, then y' = f(x) with y(a) = y₀ has a unique solution:

$$y(x) = y_0 + \int_a^x f(t)\, dt$$

*Proof*: 
- Existence: FTC I guarantees the integral exists and has derivative f(x).
- Uniqueness: If y₁ and y₂ are both solutions, then (y₁ - y₂)' = 0, so y₁ - y₂ is constant (by MVT). Since both equal y₀ at x = a, they are equal everywhere. ∎

This is the most direct application of FTC—but it has profound consequences.

### Special Functions Defined by Quadrature

FTC guarantees that every continuous function has an antiderivative—but most antiderivatives cannot be expressed in terms of elementary functions. Important examples include:

**The error function**:

$$\text{erf}(x) = \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2}\, dt$$

This exists by FTC, even though e^(-t²) has no elementary antiderivative. The error function is fundamental in probability—it's the cumulative distribution function of the normal distribution (up to scaling).

**The sine integral**:

$$\text{Si}(x) = \int_0^x \frac{\sin t}{t}\, dt$$

The integrand sin(t)/t has a removable singularity at 0 (since lim_{t→0} sin(t)/t = 1), so it's continuous and the integral exists. This function appears in signal processing and Fourier analysis.

**The Fresnel integrals**:

$$S(x) = \int_0^x \sin(t^2)\, dt, \qquad C(x) = \int_0^x \cos(t^2)\, dt$$

These appear in optics, describing diffraction patterns.

**The logarithmic integral**:

$$\text{li}(x) = \int_2^x \frac{1}{\ln t}\, dt$$

This exists by FTC for x > 1. Remarkably, it gives the best simple approximation to the prime counting function—the Prime Number Theorem says π(x) ~ li(x).

These special functions are *defined* as integrals; their existence is guaranteed by FTC even though no closed form exists.

### First-Order Linear: y' + P(x)y = Q(x)

**Theorem**: If P and Q are continuous on an interval containing a, then y' + P(x)y = Q(x) with y(a) = y₀ has a unique solution.

*Proof*: Multiply by the integrating factor μ(x) = e^{∫ₐˣ P(t) dt}. Note μ' = P·μ, so:

$$\mu y' + \mu P y = (\mu y)' = \mu Q$$

Integrate:

$$\mu(x) y(x) - \mu(a) y(a) = \int_a^x \mu(t) Q(t)\, dt$$

Since μ(a) = e⁰ = 1:

$$y(x) = \frac{1}{\mu(x)} \left( y_0 + \int_a^x \mu(t) Q(t)\, dt \right)$$

- Existence: All functions involved are continuous, so the integrals exist by FTC.
- Uniqueness: Similar argument to quadrature (difference of solutions satisfies homogeneous equation with zero initial condition). ∎

**Example**: Solve y' + 2y = eˣ with y(0) = 1.

Integrating factor: μ(x) = e^{2x}. Then (e^{2x} y)' = e^{3x}, so:

$$e^{2x} y = \frac{e^{3x}}{3} + C$$

From y(0) = 1: C = 1 - 1/3 = 2/3. Thus y = (1/3)eˣ + (2/3)e^{-2x}.

### Separation of Variables: y' = f(x)g(y)

When can we solve y' = f(x)g(y)? If g(y) ≠ 0, we can "separate":

$$\frac{dy}{g(y)} = f(x)\, dx$$

Integrate both sides: G(y) = F(x) + C, where G' = 1/g and F' = f.

**Key question**: Can we solve for y? That is, can we invert G?

**Theorem**: If f is continuous near x₀ and g is continuous and nonzero near y₀, then y' = f(x)g(y) with y(x₀) = y₀ has a solution (at least locally).

*Proof*:
- F(x) = ∫_{x₀}^x f(t) dt exists by FTC.
- G(y) = ∫_{y₀}^y 1/g(s) ds exists by FTC (since g ≠ 0 means 1/g is continuous).
- G'(y) = 1/g(y) ≠ 0, so G is strictly monotone.
- Strictly monotone continuous functions are invertible (from Chapter 5).
- The solution is y = G⁻¹(F(x)).

Check: y(x₀) = G⁻¹(F(x₀)) = G⁻¹(0) = y₀. ✓ ∎

**Key insight**: We proved existence without computing G⁻¹ explicitly!

**Example**: y' = xy with y(0) = 1.

Separate: dy/y = x dx. Integrate: ln|y| = x²/2 + C, so y = Ae^{x²/2}.

From y(0) = 1: A = 1. Thus y = e^{x²/2}.

**Example**: y' = y² with y(0) = 1.

Separate: dy/y² = dx. Integrate: -1/y = x + C, so y = -1/(x + C).

From y(0) = 1: C = -1. Thus y = 1/(1-x).

Note: This solution blows up at x = 1! The solution only exists locally—a reminder that existence can be limited even when our theorem applies.

### What's Next: The Limits of Elementary Methods

For general equations y' = F(x, y), we cannot separate variables or find integrating factors. Consider:

$$y' = x + y^2$$

There's no algebraic trick to solve this. Does a solution even exist?

**The answer is yes**—but proving it requires new tools:

- **Picard iteration**: Construct a sequence of approximations yₙ(x) that converge to a solution.
- **Contraction mappings**: The Picard iteration is a contraction on a suitable function space.
- **Completeness**: Convergence requires completeness of the function space.

This is the content of Chapter 11. For now, we've seen that elementary methods—quadrature, integrating factors, separation—handle important classes of ODEs, with existence guaranteed by the tools of this course.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | FTC as the unification of differentiation and integration |
| 8.1 FTC | The fundamental theorem; integration techniques |
| 8.2 Logarithms | Define ln via integral; compute via series |
| 8.3 Trigonometry | Define trig via integrals; derive all properties from y'' = -y |
| 8.4 Computing π | Area = perimeter constant; series for efficient computation |
| 8.5 ODEs | Existence for quadrature, linear, separable; limits of methods |

## Key Theorems

1. **Fundamental Theorem of Calculus**: ∫ₐᵇ f = F(b) - F(a) where F' = f
2. **L = ln**: The integral ∫₁ˣ 1/t dt defines the natural logarithm
3. **Uniqueness for y'' = -y**: Solutions determined by initial conditions
4. **Archimedes' Theorem**: Area of disk = π (same constant as circumference)
5. **Gregory-Leibniz**: π/4 = 1 - 1/3 + 1/5 - ...
6. **Existence for separable ODEs**: If g(y) ≠ 0, then y' = f(x)g(y) has local solutions

## Exercises (Selected)

### Section 8.1
- Taylor's theorem with integral remainder (guided proof via IBP)

### Section 8.3
- Compute sin(π/6), cos(π/3) from half-angle formulas
- Hyperbolic functions: Show sinh(x) = (eˣ - e^{-x})/2 and cosh(x) = (eˣ + e^{-x})/2 solve y'' = y. Derive properties parallel to sin, cos: (cosh)' = sinh, (sinh)' = cosh, cosh² - sinh² = 1.

### Section 8.4
- Wallis product: π/2 = (2·2)/(1·3) · (4·4)/(3·5) · (6·6)/(5·7) · ... (guided, via ∫₀^{π/2} sinⁿx recursion)
- Other Machin-like formulas

### Section 8.5
- **Bernoulli equations**: Show y' + P(x)y = Q(x)yⁿ reduces to first-order linear via v = y^{1-n}. Apply to y' + y = y².
- **Homogeneous equations**: Show y' = f(y/x) reduces to separable via v = y/x. Apply to y' = (x + y)/x.
- **Error function properties**: Verify erf'(x) = (2/√π)e^{-x²}, show erf(0) = 0, erf is odd, and erf(x) → 1 as x → ∞.
- **Second-order constant coefficient**: Solve y'' + ay' + by = 0 via characteristic equation. Cases: distinct real roots, complex roots, repeated root. (Reinforces uniqueness from 8.3)

## Dependencies

**Requires from earlier chapters**:
- Differentiation and MVT (Chapter 6)
- Integration and geometric definitions (Chapter 7)
- Series and convergence tests (Chapters 3-4)
- Inverse functions and monotonicity (Chapter 5)

**Sets up for later chapters**:
- Chapter 9: Completing the Integral
- Chapter 11: Picard iteration and general ODE existence
