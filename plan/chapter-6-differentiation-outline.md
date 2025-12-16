# Chapter 6: Differentiation

## Overview

This chapter develops differentiation rigorously: the definition, computational rules, and what derivatives tell us about functions. The key insight is that the derivative f' is itself a function, and we can apply our tools—limits, continuity, the MVT—to f' just as we did to f.

**The arc:**
> Definition and Rules → MVT (what f' says about f) → f' as a function → Taylor and Power Series → The Exponential → Newton's Method

---

## Historical Prelude (Unnumbered)

### The Problem

How do we find the instantaneous rate of change of a quantity? How do we locate maxima and minima? These questions arose in physics (velocity, acceleration) and optimization (finding best values) long before calculus provided general methods.

### The Development

**Fermat's Method of Adequality (1630s)**

Fermat found maxima and minima by a mysterious method: pretend the variable changes by a small amount E, set up an equation, then divide by E and set E = 0. It worked, but what justified it? This was differentiation without the derivative.

**Newton's Fluxions and Leibniz's Differentials (1680s)**

Newton thought of variables as "flowing" quantities; their rates of change were "fluxions." Leibniz introduced the notation dy/dx and thought of it as a ratio of "infinitesimals." Both could compute derivatives, but neither could quite say what a derivative *was*.

**Berkeley's Critique (1734)**

The philosopher Berkeley attacked: "And what are these fluxions? They are neither finite quantities, nor quantities infinitely small, nor yet nothing. May we not call them ghosts of departed quantities?" The foundations were incoherent.

**Weierstrass's Definition (1860s)**

The limit-based definition we use today: f'(a) = lim_{h→0} (f(a+h) - f(a))/h. No infinitesimals, no ghosts—just limits. Finally, a rigorous foundation for Newton and Leibniz's computational successes.

### The Message

Differentiation is one of the great ideas in mathematics. But the ideas came before the rigor, and the rigor took 200 years to sort out. We now make precise what Newton and Leibniz could only intuit.

---

## 6.1 Differentiation Rules

### The Derivative

**Definition**: A function f is *differentiable at a* if the limit

$$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$

exists. In this case, f'(a) is called the *derivative of f at a*.

**Alternative form**: f'(a) = lim_{x→a} (f(x) - f(a))/(x - a).

**Notation**: f'(a), df/dx|_{x=a}, Df(a).

### Differentiability Implies Continuity

**Theorem**: If f is differentiable at a, then f is continuous at a.

*Proof*: Write f(x) - f(a) = [(f(x) - f(a))/(x - a)] · (x - a). As x → a, the first factor → f'(a) and the second → 0, so f(x) → f(a). ∎

**Warning**: The converse is false! |x| is continuous at 0 but not differentiable there.

### Basic Differentiation Rules

**Theorem (Linearity)**: If f and g are differentiable at a, then:
- (f + g)'(a) = f'(a) + g'(a)
- (cf)'(a) = c·f'(a)

*Proof*: Direct from limit laws. ∎

**Theorem (Product Rule)**: (fg)'(a) = f'(a)g(a) + f(a)g'(a).

*Proof*: 
$$\frac{f(a+h)g(a+h) - f(a)g(a)}{h} = \frac{f(a+h) - f(a)}{h}g(a+h) + f(a)\frac{g(a+h) - g(a)}{h}$$

Take h → 0, using continuity of g at a. ∎

**Theorem (Quotient Rule)**: If g(a) ≠ 0, then (f/g)'(a) = [f'(a)g(a) - f(a)g'(a)]/[g(a)]².

*Proof*: Write f/g = f · (1/g) and use product rule with (1/g)' = -g'/g². ∎

### Examples

- (xⁿ)' = nxⁿ⁻¹ (prove by induction or binomial theorem)
- Constants: c' = 0

### The Chain Rule

**Theorem (Chain Rule)**: If g is differentiable at a and f is differentiable at g(a), then f ∘ g is differentiable at a and:

$$(f \circ g)'(a) = f'(g(a)) \cdot g'(a)$$

*Proof*: The naive approach (multiply and divide by g(a+h) - g(a)) fails when g(a+h) = g(a). Instead, define:

$$\varphi(y) = \begin{cases} \frac{f(y) - f(g(a))}{y - g(a)} & y \neq g(a) \\ f'(g(a)) & y = g(a) \end{cases}$$

Then φ is continuous at g(a), and f(y) - f(g(a)) = φ(y)(y - g(a)) for all y.

Setting y = g(a+h):

$$\frac{f(g(a+h)) - f(g(a))}{h} = \varphi(g(a+h)) \cdot \frac{g(a+h) - g(a)}{h}$$

As h → 0: φ(g(a+h)) → φ(g(a)) = f'(g(a)) by continuity, and the second factor → g'(a). ∎

**Leibniz notation**: dy/dx = (dy/du)·(du/dx). The notation "cancels" as if these were fractions.

### Inverse Function Derivative

**Theorem**: If f is differentiable at a with f'(a) ≠ 0, and f⁻¹ exists near f(a), then f⁻¹ is differentiable at f(a) and:

$$(f^{-1})'(f(a)) = \frac{1}{f'(a)}$$

Or equivalently: (f⁻¹)'(y) = 1/f'(f⁻¹(y)).

*Proof*: Let y = f(a), x = f⁻¹(y) = a. For y + k near y with k ≠ 0:

$$\frac{f^{-1}(y+k) - f^{-1}(y)}{k} = \frac{1}{\frac{f(f^{-1}(y+k)) - f(f^{-1}(y))}{f^{-1}(y+k) - f^{-1}(y)}}$$

Let h = f⁻¹(y+k) - f⁻¹(y). As k → 0, h → 0 (by continuity of f⁻¹), and the denominator → f'(f⁻¹(y)) = f'(a). ∎

**Leibniz notation**: dx/dy = 1/(dy/dx).

### Applications of Chain and Inverse Rules

**Example**: (√x)' = 1/(2√x).

If f(x) = x², then f'(x) = 2x. For x > 0, f⁻¹(y) = √y, so:

$$(\sqrt{y})' = \frac{1}{2\sqrt{y}}$$

---

## 6.2 The Mean Value Theorem

### Fermat's Theorem

**Theorem**: If f has a local extremum at c and f is differentiable at c, then f'(c) = 0.

*Proof*: Suppose f has local max at c. For small h > 0: f(c+h) ≤ f(c), so (f(c+h) - f(c))/h ≤ 0. Thus f'(c) ≤ 0.

For small h < 0: f(c+h) ≤ f(c), so (f(c+h) - f(c))/h ≥ 0. Thus f'(c) ≥ 0.

Therefore f'(c) = 0. ∎

### Rolle's Theorem

**Theorem**: If f is continuous on [a,b], differentiable on (a,b), and f(a) = f(b), then f'(c) = 0 for some c ∈ (a,b).

*Proof*: By the Extreme Value Theorem, f attains its max M and min m on [a,b].

If M = m, then f is constant, so f' ≡ 0.

Otherwise, at least one of M, m is attained at an interior point c. By Fermat's theorem, f'(c) = 0. ∎

### The Mean Value Theorem

**Theorem (MVT)**: If f is continuous on [a,b] and differentiable on (a,b), then for some c ∈ (a,b):

$$f(b) - f(a) = f'(c)(b - a)$$

*Proof*: Apply Rolle's theorem to:

$$g(x) = f(x) - f(a) - \frac{f(b) - f(a)}{b - a}(x - a)$$

Then g(a) = g(b) = 0, so g'(c) = 0 for some c. This gives f'(c) = (f(b) - f(a))/(b - a). ∎

**Geometric interpretation**: Some tangent line is parallel to the secant line.

### Cauchy's Mean Value Theorem

**Theorem (Generalized MVT)**: If f and g are continuous on [a,b] and differentiable on (a,b), then for some c ∈ (a,b):

$$(f(b) - f(a))g'(c) = (g(b) - g(a))f'(c)$$

*Proof*: Apply Rolle to h(x) = (f(b) - f(a))g(x) - (g(b) - g(a))f(x). ∎

### Consequences of MVT

**Theorem**: If f'(x) = 0 for all x in an interval I, then f is constant on I.

*Proof*: For any a, b ∈ I with a < b, MVT gives f(b) - f(a) = f'(c)(b-a) = 0. ∎

**Theorem**: If f'(x) > 0 for all x in an interval I, then f is strictly increasing on I.

*Proof*: For a < b in I, MVT gives f(b) - f(a) = f'(c)(b-a) > 0. ∎

**Corollary**: f' ≥ 0 ⟺ f increasing. f' ≤ 0 ⟺ f decreasing.

**Remark**: First and second derivative tests for local extrema follow from these (see exercises).

### L'Hôpital's Rule

**Theorem**: Suppose f(a) = g(a) = 0, and f, g are differentiable near a with g'(x) ≠ 0 for x ≠ a. If lim_{x→a} f'(x)/g'(x) = L, then:

$$\lim_{x \to a} \frac{f(x)}{g(x)} = L$$

*Proof*: By Cauchy MVT, for x near a:

$$\frac{f(x)}{g(x)} = \frac{f(x) - f(a)}{g(x) - g(a)} = \frac{f'(c)}{g'(c)}$$

for some c between a and x. As x → a, c → a, so f'(c)/g'(c) → L. ∎

**Remark**: Extends to x → ∞ and to ∞/∞ forms (see exercises).

**Warning**: L'Hôpital requires checking that lim f'/g' exists. Don't apply blindly!

---

## 6.3 The Derivative as a Function

The derivative f' is itself a function. We can apply everything we've learned about functions—to f'.

### Darboux's Theorem

Derivatives might not be continuous, but they can't be too wild:

**Theorem (Darboux)**: If f is differentiable on [a,b] and f'(a) < k < f'(b), then f'(c) = k for some c ∈ (a,b).

*Proof*: Consider g(x) = f(x) - kx. Then g'(a) = f'(a) - k < 0 and g'(b) = f'(b) - k > 0.

Since g'(a) < 0, g is decreasing at a, so g has values below g(a) just to the right of a. Similarly, g is increasing at b, so g has values below g(b) just to the left of b.

By EVT, g attains its minimum on [a,b] at some interior point c. By Fermat, g'(c) = 0, so f'(c) = k. ∎

**Consequence**: Derivatives have the Intermediate Value Property, even if they're not continuous!

**Consequence**: Derivatives cannot have jump discontinuities. If f' is discontinuous at c, it must be an "essential" discontinuity (oscillatory or unbounded).

### Bounding the Derivative: Lipschitz Functions

**Definition**: f is *Lipschitz* on an interval I if there exists K ≥ 0 such that:

$$|f(x) - f(y)| \leq K|x - y| \quad \text{for all } x, y \in I$$

**Theorem**: If f is differentiable on I with |f'(x)| ≤ K for all x, then f is Lipschitz with constant K.

*Proof*: By MVT, |f(x) - f(y)| = |f'(c)||x - y| ≤ K|x - y|. ∎

**Corollary**: Lipschitz functions are uniformly continuous.

*Proof*: Given ε > 0, take δ = ε/K. ∎

**Connection to contractions**: If |f'(x)| ≤ c < 1 on an interval, then f is a contraction. This connects to fixed point iteration (Section 6.6) and Picard iteration (Chapter 11).

### Higher Derivatives and Convexity

Since f' is a function, we can differentiate it:

**Definition**: The *second derivative* f'' = (f')'. Higher derivatives f''', f^(4), ..., f^(n) defined similarly.

**Notation**: f^(n) for the n-th derivative. f^(0) = f.

**Applying MVT to f'**:

We proved: f' > 0 ⟹ f increasing. Apply this one level up:

**Theorem**: f'' > 0 ⟹ f' increasing.

**Definition**: f is *convex* on an interval I if for all x, y ∈ I and λ ∈ [0,1]:

$$f(\lambda x + (1-\lambda)y) \leq \lambda f(x) + (1-\lambda)f(y)$$

Geometrically: the chord lies above the graph.

**Theorem**: If f is differentiable, then f is convex ⟺ f' is increasing.

*Proof*: (⟹) Suppose f is convex. For a < b < c, the chord slopes satisfy:

$$\frac{f(b) - f(a)}{b - a} \leq \frac{f(c) - f(a)}{c - a} \leq \frac{f(c) - f(b)}{c - b}$$

Taking limits as b → a and b → c: f'(a) ≤ f'(c).

(⟸) Similar argument using MVT. ∎

**Corollary**: If f'' exists, then f convex ⟺ f'' ≥ 0.

*Proof*: f'' ≥ 0 ⟺ f' increasing ⟺ f convex. ∎

**Remark**: The second derivative test for local extrema, and connections to the first variation in calculus of variations, appear in exercises.

### Pathologies: Continuous but Nowhere Differentiable

**Theorem**: There exist functions continuous everywhere but differentiable nowhere.

This was shocking in the 1870s. Weierstrass's original example uses cosines, but the Takagi function avoids trigonometry:

**Definition (Takagi function)**: Let s(x) = dist(x, nearest integer). Define:

$$T(x) = \sum_{n=0}^{\infty} \frac{s(2^n x)}{2^n}$$

**Theorem**: T is continuous everywhere and differentiable nowhere.

*Proof sketch*: 
- Continuous: Each term is continuous, series converges uniformly (by comparison with Σ1/2ⁿ).
- Nowhere differentiable: At each x, carefully chosen sequences show the difference quotients don't converge.

(Full proof as guided exercise.)

**Takeaway**: The gap between continuous and differentiable is vast. "Most" continuous functions (in a precise sense) are nowhere differentiable. This theme will return in the function space chapters.

---

## 6.4 Taylor Series and Power Series

### Taylor Polynomials

**Definition**: The *n-th Taylor polynomial* of f centered at a is:

$$P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$$

This is the unique polynomial of degree ≤ n matching f, f', f'', ..., f^(n) at a.

### Taylor's Theorem

To relate a function to its Taylor polynomial, we need to generalize Rolle's theorem.

**Lemma (Generalized Rolle's Theorem)**: Let f be n+1 times differentiable on (a,b) and continuous on [a,b]. If f(a) = f(b) = 0 and:

$$f(a) = f'(a) = f''(a) = \cdots = f^{(n)}(a) = 0$$

then f^{(n+1)}(c) = 0 for some c ∈ (a,b).

*Proof*: Since f(a) = f(b) = 0, Rolle gives c₁ ∈ (a,b) with f'(c₁) = 0.

Since f'(a) = f'(c₁) = 0, Rolle applied to f' gives c₂ ∈ (a,c₁) with f''(c₂) = 0.

Continue: f''(a) = f''(c₂) = 0 gives c₃ with f'''(c₃) = 0, and so on.

After n+1 applications, we get c ∈ (a,cₙ) with f^{(n+1)}(c) = 0. ∎

**Lemma (Polynomial Mean Value Theorem)**: Let f be n+1 times differentiable and h a polynomial sharing the first n derivatives with f at a:

$$f(a) = h(a), \quad f'(a) = h'(a), \quad \ldots, \quad f^{(n)}(a) = h^{(n)}(a)$$

If additionally f(b) = h(b), then f^{(n+1)}(c) = h^{(n+1)}(c) for some c ∈ (a,b).

*Proof*: Apply generalized Rolle to g = f - h. ∎

**Theorem (Taylor's Theorem with Lagrange Remainder)**: Let f be n+1 times differentiable on an interval containing a and b. Then:

$$f(b) = P_n(b) + \frac{f^{(n+1)}(c)}{(n+1)!}(b-a)^{n+1}$$

for some c between a and b.

*Proof*: The Taylor polynomial Pₙ shares the first n derivatives with f at a, but generally f(b) ≠ Pₙ(b).

We want to compare f to Pₙ at the point b. What's the simplest polynomial that has zero first n derivatives at a but can be tuned to hit any value at b? Answer: λ(x-a)^{n+1}.

Define:

$$q(x) = P_n(x) + \lambda(x-a)^{n+1}$$

where λ is chosen so that q(b) = f(b).

Since q^{(k)}(a) = f^{(k)}(a) for k ≤ n, and q(b) = f(b), the Polynomial MVT gives:

$$f^{(n+1)}(c) = q^{(n+1)}(c)$$

for some c ∈ (a,b). Since Pₙ has degree n:

$$q^{(n+1)}(x) = (n+1)! \cdot \lambda$$

Therefore:

$$\lambda = \frac{f^{(n+1)}(c)}{(n+1)!}$$

Since q(b) = f(b):

$$f(b) = P_n(b) + \lambda(b-a)^{n+1} = P_n(b) + \frac{f^{(n+1)}(c)}{(n+1)!}(b-a)^{n+1}$$

∎

### Error Bounds

**Corollary**: If |f^{(n+1)}(t)| ≤ M for t between a and x, then:

$$|f(x) - P_n(x)| \leq \frac{M}{(n+1)!}|x-a|^{n+1}$$

**Example**: Approximate sin(0.1) using degree-3 Taylor polynomial at 0.

P₃(x) = x - x³/6 (since sin(0) = 0, sin'(0) = 1, sin''(0) = 0, sin'''(0) = -1)

P₃(0.1) = 0.1 - 0.001/6 ≈ 0.0998333...

Error bound: |sin^(4)(c)|/4! · (0.1)⁴ ≤ 1/24 · 0.0001 < 0.000005

So sin(0.1) ≈ 0.09983 to 5 decimal places.

### Power Series

**Recall** (from Chapter 5): A power series Σ aₙ(x-a)ⁿ has a radius of convergence R. Within |x-a| < R, the series converges absolutely and defines a continuous function.

**Lemma (Same Radius)**: If Σ aₙxⁿ has radius of convergence R, then Σ n·aₙxⁿ⁻¹ also has radius R.

*Proof*: By the root test, R = 1/limsup|aₙ|^{1/n}. For the derived series:

$$\limsup |n \cdot a_n|^{1/n} = \limsup n^{1/n} \cdot |a_n|^{1/n} = 1 \cdot \limsup |a_n|^{1/n}$$

since n^{1/n} → 1. So the radius is unchanged. ∎

**Theorem (Term-by-term Differentiation)**: If f(x) = Σ_{n=0}^∞ aₙ(x-a)ⁿ for |x-a| < R, then f is differentiable on (a-R, a+R) and:

$$f'(x) = \sum_{n=1}^{\infty} n \cdot a_n (x-a)^{n-1}$$

*Proof*: Fix x with |x-a| < r < R. The difference quotient is:

$$\frac{f(x+h) - f(x)}{h} = \sum_{n=0}^{\infty} a_n \frac{(x+h-a)^n - (x-a)^n}{h}$$

We want to exchange lim_{h→0} with the sum. By MVT, each term satisfies:

$$\left|\frac{(x+h-a)^n - (x-a)^n}{h}\right| \leq n \cdot r^{n-1}$$

for |x-a|, |x+h-a| ≤ r.

Since Σ |aₙ| · n · rⁿ⁻¹ converges (same radius), Tannery's theorem / dominated convergence (Chapter 4) allows us to exchange the limit and sum:

$$f'(x) = \sum_{n=1}^{\infty} a_n \cdot n(x-a)^{n-1}$$

∎

**Corollary**: Power series are infinitely differentiable within their radius of convergence.

*Proof*: Apply the theorem repeatedly. ∎

**Corollary**: If f(x) = Σ aₙ(x-a)ⁿ, then aₙ = f^{(n)}(a)/n!.

*Proof*: Differentiate n times and evaluate at x = a. ∎

**Key fact**: Power series equal their own Taylor series.

### Smooth vs Analytic: A Preview

**Definition**: f is *smooth* (or C^∞) if f has derivatives of all orders.

**Definition**: f is *analytic* at a if f equals its Taylor series in some neighborhood of a.

We have shown: power series are analytic (they equal their Taylor series).

**Question**: Is every smooth function analytic?

**Answer**: No! But the standard counterexample requires the exponential function, which we develop in the next section.

---

## 6.5 The Exponential Function

### What We Know So Far

From earlier chapters, we have:
- aˣ defined as sup of rational powers, continuous, satisfies E(x+y) = E(x)E(y)
- All continuous solutions to the functional equation are exponentials
- The series Σ xⁿ/n! converges for all x (and equals lim(1+x/n)ⁿ, from dominated convergence)
- The number e = lim(1+1/n)ⁿ (from historical discussion of compound interest)

But we lack: any connection between these facts, any good way to compute exponentials.

### The Functional Equation Constrains the Derivative

**Theorem**: If aˣ is differentiable, then (aˣ)' = cₐ · aˣ for some constant cₐ.

*Proof*: Using the functional equation a^{x+h} = aˣ · aʰ:

$$\frac{a^{x+h} - a^x}{h} = a^x \cdot \frac{a^h - 1}{h}$$

If the limit cₐ = lim_{h→0} (aʰ - 1)/h exists, then (aˣ)' = cₐ · aˣ. ∎

The constant cₐ depends on the base. Which base gives cₐ = 1?

### Building the Simplest Exponential

We seek a function exp satisfying:
- exp'(x) = exp(x)
- exp(0) = 1

**If such a function exists**, Taylor's theorem tells us what it must be:
- exp(0) = 1
- exp'(0) = exp(0) = 1
- exp''(0) = exp'(0) = 1
- exp^{(n)}(0) = 1 for all n

So the Taylor series is:

$$\exp(x) = \sum_{n=0}^{\infty} \frac{x^n}{n!}$$

This is the series we already know converges for all x!

### The Series Works

**Theorem**: The function exp(x) = Σ xⁿ/n! satisfies exp' = exp.

*Proof*: By term-by-term differentiation (Section 6.4):

$$\exp'(x) = \sum_{n=1}^{\infty} \frac{n \cdot x^{n-1}}{n!} = \sum_{n=1}^{\infty} \frac{x^{n-1}}{(n-1)!} = \sum_{m=0}^{\infty} \frac{x^m}{m!} = \exp(x)$$

∎

**Theorem**: exp satisfies the functional equation exp(x+y) = exp(x)exp(y).

*Proof*: Using the Cauchy product of absolutely convergent series:

$$\exp(x)\exp(y) = \left(\sum_{j=0}^{\infty} \frac{x^j}{j!}\right)\left(\sum_{k=0}^{\infty} \frac{y^k}{k!}\right) = \sum_{n=0}^{\infty} \sum_{j+k=n} \frac{x^j y^k}{j! k!}$$

$$= \sum_{n=0}^{\infty} \frac{1}{n!} \sum_{j=0}^{n} \binom{n}{j} x^j y^{n-j} = \sum_{n=0}^{\infty} \frac{(x+y)^n}{n!} = \exp(x+y)$$

∎

So exp is an exponential for some base.

### Identifying the Base

**Definition**: e = exp(1) = Σ_{n=0}^∞ 1/n!

**Theorem**: exp(x) = eˣ.

*Proof*: From the functional equation, exp(n) = exp(1)ⁿ = eⁿ for positive integers. By similar reasoning, exp(p/q) = e^{p/q} for rationals. By continuity, exp(x) = eˣ for all x. ∎

**Theorem**: e = lim_{n→∞}(1 + 1/n)ⁿ.

*Proof*: We already know (from dominated convergence) that lim(1 + x/n)ⁿ = Σ xᵏ/k!. Setting x = 1:

$$\lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = \sum_{k=0}^{\infty} \frac{1}{k!} = e$$

∎

More generally: lim_{n→∞}(1 + x/n)ⁿ = eˣ, connecting the compound interest formula to the exponential.

### Computing e

From the Taylor series e = Σ 1/n!, we can compute e with error bounds.

**Theorem (Error bound)**: The partial sum Sₙ = Σ_{k=0}^n 1/k! satisfies:

$$0 < e - S_n < \frac{1}{n! \cdot n}$$

*Proof*: 
$$e - S_n = \sum_{k=n+1}^{\infty} \frac{1}{k!} = \frac{1}{(n+1)!}\left(1 + \frac{1}{n+2} + \frac{1}{(n+2)(n+3)} + \cdots\right)$$

The series in parentheses is bounded by 1 + 1/(n+1) + 1/(n+1)² + ... = (n+1)/n.

So e - Sₙ < (1/(n+1)!) · (n+1)/n = 1/(n! · n). ∎

**Example**: S₁₀ = 1 + 1 + 1/2 + ... + 1/10! ≈ 2.718281801.

Error < 1/(10! · 10) ≈ 2.8 × 10⁻⁸.

So e ≈ 2.7182818 to 7 decimal places.

### e is Irrational

**Theorem**: e is irrational.

*Proof*: Suppose e = p/q for positive integers p, q. Multiply q! · e = q! · Σ 1/n!:

$$q! \cdot e = q! \cdot \sum_{n=0}^{q} \frac{1}{n!} + q! \cdot \sum_{n=q+1}^{\infty} \frac{1}{n!}$$

The first sum is an integer (each term q!/n! is an integer for n ≤ q).

The second sum is:

$$\frac{1}{q+1} + \frac{1}{(q+1)(q+2)} + \frac{1}{(q+1)(q+2)(q+3)} + \cdots$$

This is positive and bounded above by the geometric series:

$$\frac{1}{q+1}\left(1 + \frac{1}{q+1} + \frac{1}{(q+1)^2} + \cdots\right) = \frac{1}{q+1} \cdot \frac{q+1}{q} = \frac{1}{q} \leq 1$$

So q! · e = (integer) + (something strictly between 0 and 1).

But q! · e = q! · p/q = (q-1)! · p, which is an integer. Contradiction. ∎

### General Exponentials

**Corollary**: For any a > 0, the function aˣ is differentiable with (aˣ)' = cₐ · aˣ, where cₐ = lim_{h→0}(aʰ - 1)/h.

*Proof*: Since exp: ℝ → (0, ∞) is continuous, strictly increasing, with exp(x) → 0 as x → -∞ and exp(x) → ∞ as x → +∞, it is a bijection. So there exists unique c with eᶜ = a.

Then aˣ = eᶜˣ, so by the chain rule:

$$(a^x)' = (e^{cx})' = c \cdot e^{cx} = c \cdot a^x$$

Thus cₐ = c exists. ∎

**Remark**: We will identify c = ln(a) in Chapter 8, where we define logarithms as integrals.

### Smooth but Not Analytic

We can now give the counterexample promised in Section 6.4.

**Definition**: Define f: ℝ → ℝ by:

$$f(x) = \begin{cases} e^{-1/x^2} & x \neq 0 \\ 0 & x = 0 \end{cases}$$

**Theorem**: f is smooth (infinitely differentiable), and f^{(n)}(0) = 0 for all n.

*Proof sketch*: For x ≠ 0, f is smooth (composition of smooth functions). 

At x = 0, we compute f'(0) by the limit definition:

$$f'(0) = \lim_{h \to 0} \frac{e^{-1/h^2}}{h}$$

This equals 0 because e^{-1/h²} decays faster than any power of h (exponential beats polynomial).

By induction, f^{(n)}(x) = Pₙ(1/x) · e^{-1/x²} for some polynomial Pₙ when x ≠ 0, and f^{(n)}(0) = 0 for all n. (Details as exercise.) ∎

**Consequence**: The Taylor series of f at 0 is:

$$\sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n = \sum_{n=0}^{\infty} 0 \cdot x^n = 0$$

But f is not identically zero!

**Takeaway**: Smooth ≠ analytic. The Taylor series may converge, but to the wrong function. Power series, however, are always analytic—they equal their Taylor series by construction.

---

## 6.6 Newton's Method

### The Algorithm

**Problem**: Find a root of f(x) = 0.

**Newton's method**: Starting from x₀, iterate:

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$$

**Geometric interpretation**: Follow the tangent line at (xₙ, f(xₙ)) to the x-axis.

### Convergence via Contraction

Define g(x) = x - f(x)/f'(x). A fixed point of g is a root of f.

**Theorem**: If f(r) = 0, f'(r) ≠ 0, and f'' is continuous near r, then Newton's method converges for x₀ sufficiently close to r.

*Proof*: Compute:

$$g'(x) = 1 - \frac{(f'(x))^2 - f(x)f''(x)}{(f'(x))^2} = \frac{f(x)f''(x)}{(f'(x))^2}$$

At x = r: g'(r) = 0 (since f(r) = 0).

By continuity of g', there exists δ > 0 such that |g'(x)| < 1/2 for |x - r| < δ.

By the Lipschitz theorem (Section 6.3), g is a contraction on (r-δ, r+δ).

By the contraction mapping theorem (from Chapter 2), the iteration converges to the unique fixed point r. ∎

### Quadratic Convergence via Taylor

**Theorem**: Under the same hypotheses, if εₙ = xₙ - r, then:

$$\varepsilon_{n+1} \approx \frac{f''(r)}{2f'(r)} \varepsilon_n^2$$

Convergence is *quadratic*: errors square at each step.

*Proof*: Taylor expand f(xₙ) around r:

$$f(x_n) = f(r) + f'(r)(x_n - r) + \frac{f''(\xi)}{2}(x_n - r)^2 = f'(r)\varepsilon_n + \frac{f''(\xi)}{2}\varepsilon_n^2$$

Then:

$$x_{n+1} - r = x_n - r - \frac{f(x_n)}{f'(x_n)} = \varepsilon_n - \frac{f'(r)\varepsilon_n + \frac{f''(\xi)}{2}\varepsilon_n^2}{f'(x_n)}$$

For xₙ close to r, f'(xₙ) ≈ f'(r), so:

$$\varepsilon_{n+1} \approx \varepsilon_n - \varepsilon_n - \frac{f''(\xi)}{2f'(r)}\varepsilon_n^2 = -\frac{f''(\xi)}{2f'(r)}\varepsilon_n^2$$

Thus |εₙ₊₁| ≈ C|εₙ|², where C = |f''(r)|/(2|f'(r)|). ∎

**Consequence**: If ε₀ = 10⁻², then ε₁ ≈ 10⁻⁴, ε₂ ≈ 10⁻⁸, ε₃ ≈ 10⁻¹⁶. Digits double at each step!

### Examples

**Computing √2**: Solve f(x) = x² - 2 = 0.

Newton: xₙ₊₁ = xₙ - (xₙ² - 2)/(2xₙ) = (xₙ + 2/xₙ)/2.

Starting with x₀ = 1:
- x₁ = 1.5
- x₂ = 1.4166...
- x₃ = 1.41421568...
- x₄ = 1.41421356237... (correct to 11 decimals)

**Computing ∛5**: Solve f(x) = x³ - 5 = 0.

Newton: xₙ₊₁ = xₙ - (xₙ³ - 5)/(3xₙ²) = (2xₙ + 5/xₙ²)/3.

### Failure Modes

**Multiple roots**: If f(r) = f'(r) = 0, then g'(r) may not be 0, and convergence is only linear.

**Bad starting points**: The iteration may cycle, diverge, or converge to a different root.

**Division by zero**: If f'(xₙ) = 0 at some step, the method fails.

### Looking Ahead

Newton's method is the first example of *fixed-point iteration*: define g so that g(r) = r, then iterate xₙ₊₁ = g(xₙ).

In Chapter 11, we'll see *Picard iteration* for differential equations: the same idea in function space. The contraction mapping theorem guarantees convergence there too—once we've developed the proper setting.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Historical development from Fermat to Weierstrass |
| 6.1 Differentiation Rules | Definition and all computational rules |
| 6.2 MVT | The fundamental theorem; what f' says about f |
| 6.3 Derivative as Function | Darboux, Lipschitz, convexity, pathologies |
| 6.4 Taylor/Power Series | Polynomial approximation; term-by-term differentiation |
| 6.5 Exponential | Building exp from calculus; computing e; smooth ≠ analytic |
| 6.6 Newton | Fixed-point iteration; preview of Picard |

## Key Theorems

1. **Mean Value Theorem**: f(b) - f(a) = f'(c)(b-a)
2. **f' = 0 ⟹ constant**: Foundation for many arguments
3. **Darboux**: f' has IVP even if discontinuous
4. **Taylor's Theorem**: f = Pₙ + Rₙ with explicit remainder
5. **Power series differentiable**: Term-by-term differentiation
6. **exp' = exp**: The defining property of the exponential
7. **e is irrational**: Classic proof via factorial denominators

## Exercises (Selected)

### Section 6.1
- Prove (xⁿ)' = nxⁿ⁻¹ by induction
- Product rule for three functions: (fgh)' = ?

### Section 6.2
- First derivative test for local extrema
- Second derivative test for local extrema
- L'Hôpital for ∞/∞ form
- L'Hôpital as x → ∞

### Section 6.3
- Construct a function with discontinuous but bounded derivative
- Takagi function: complete the nowhere-differentiability proof
- If f is convex and differentiable, show f(y) ≥ f(x) + f'(x)(y-x) for all x, y

### Section 6.4
- Taylor with integral remainder (prove using IBP — connects to Chapter 8)
- Find Taylor series of 1/(1-x)², 1/(1-x)³ by differentiation

### Section 6.5
- Prove exp(x) ≥ 1 + x for all x
- Prove e < 3 using partial sums
- Show eˣ/xⁿ → ∞ as x → ∞ (use L'Hôpital repeatedly)
- Compute e to 10 decimal places; how many terms needed?
- Show f(x) = e^{-1/x²} has all derivatives zero at origin (complete the induction)

### Section 6.6
- Apply Newton to find ⁴√7
- What happens if you apply Newton to f(x) = x³ starting at x₀ = 1?
- Modified Newton for multiple roots: xₙ₊₁ = xₙ - mf(xₙ)/f'(xₙ) for root of multiplicity m

## Dependencies

**Requires from earlier chapters**:
- Limits and continuity (Chapter 5)
- Sequences and contraction mapping theorem (Chapter 2)
- Power series basics / radius of convergence (Chapter 5)
- Dominated convergence / Tannery (Chapter 4)
- (1+x/n)ⁿ = Σxⁿ/n! (Chapter 4, dominated convergence)

**Sets up for later chapters**:
- Chapter 7: Integration (FTC uses MVT consequences)
- Chapter 8: Inverse function derivative for ln, arcsin; connects cₐ to ln(a)
- Chapter 11: Picard iteration generalizes Newton
