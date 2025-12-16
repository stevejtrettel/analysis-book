# Chapter 7: Integration

## Overview

This chapter develops integration as an independent subject, formalized axiomatically. The key insight: axiomatic analysis *predicts* the construction, and enables geometric definitions, before we verify that integrable functions exist.

**The arc:**
> History (prelude) → Axioms → Geometry as definitions → Construction verifies → Computation

Students see that integration existed for 2000 years before calculus, that axioms let us *define* geometric quantities rigorously, and that the Darboux construction is an inevitable consequence of axiomatic reasoning.

---

## Historical Prelude (Unnumbered)

### The Problem

What is the area under a curve? What is the length of a curved line? These questions are ancient—older than calculus, older than algebra, nearly as old as mathematics itself.

### The Method of Exhaustion

**Archimedes** (~250 BCE): Computed the area of a parabolic segment.

- Goal: Find the area between y = x² and the line y = 1 over [0,1]
- Method: Inscribe and circumscribe with rectangles, show both converge to the same value
- Result: Area = 1/3 (equivalently, ∫₀¹ x² = 1/3)
- Key idea: Trap the unknown area between known bounds, show the gap shrinks to zero

Archimedes also studied arc length, proving fundamental facts about the lengths of convex curves—that a chord is shorter than any convex arc with the same endpoints, and that among convex curves sharing endpoints, the one lying closer to the chord is shorter.

This is integration without calculus—pure geometric reasoning.

### The Method of Indivisibles

**Cavalieri** (1630s): Areas as "sums of lines," volumes as "stacks of slices."

- Imagine a region as made of infinitely many parallel line segments
- Compare regions by comparing their cross-sections
- **Cavalieri's Principle**: Two solids with equal cross-sectional areas at every height have equal volume

Philosophically suspect (what is an "infinitely thin" slice?) but computationally powerful. Cavalieri could compute volumes that had stumped the ancients.

### Fermat's Integration of Powers

**Fermat** (1630s): Computed ∫₀¹ xⁿ = 1/(n+1) without calculus.

- Insight: Use *geometric* partitions instead of uniform partitions
- Partition [0,1] at points ..., r³, r², r, 1 for some r < 1
- Each subinterval has length rᵏ − rᵏ⁺¹ = rᵏ(1−r)
- Upper sum becomes a geometric series
- As r → 1: the sum approaches 1/(n+1)

Forty years before Newton and Leibniz!

### The Message

Integration was a computational subject for two millennia before the Fundamental Theorem connected it to differentiation. Archimedes, Cavalieri, and Fermat computed areas, volumes, and arc lengths by direct methods—trapping quantities between bounds.

We now formalize what they were doing. Our axioms will let us *define* these geometric quantities rigorously—and then we'll verify that such definitions actually work.

---

## 7.1 The Axiomatic Integral

### The Axioms

What properties should an integral have? We propose three axioms for ∫[a,b] f:

**Axiom 1 (Rectangles)**: ∫[a,b] k = k(b−a) for any constant k.

*The integral of a constant is the area of a rectangle.*

**Axiom 2 (Monotonicity)**: If f ≤ g on [a,b], then ∫[a,b] f ≤ ∫[a,b] g.

*Larger functions have larger integrals.*

**Axiom 3 (Additivity)**: ∫[a,b] f = ∫[a,c] f + ∫[c,b] f for any c ∈ (a,b).

*The integral over a union is the sum of integrals over parts.*

These axioms say nothing about which functions are integrable—only how the integral must behave on those that are.

### Definitions from the Axioms

Once we have an integral satisfying these axioms, we can define:

**Improper integrals over unbounded domains**:

$$\int_a^\infty f = \lim_{b \to \infty} \int_a^b f$$

when this limit exists.

**Improper integrals of unbounded functions**:

If f is unbounded near b, define:

$$\int_a^b f = \lim_{c \to b^-} \int_a^c f$$

when this limit exists.

**The indefinite integral**:

For f integrable on [a,b], define F : [a,b] → ℝ by:

$$F(x) = \int_a^x f$$

This is "the integral as a function of its upper limit."

### Theorems from the Axioms

We can prove theorems using only the axioms—no construction needed.

**Theorem (Bounds)**: If m ≤ f(x) ≤ M for all x ∈ [a,b], then:

$$m(b-a) \leq \int_{[a,b]} f \leq M(b-a)$$

*Proof*: By monotonicity, ∫m ≤ ∫f ≤ ∫M. By rectangles, ∫m = m(b−a) and ∫M = M(b−a). ∎

*Interpretation*: The integral is trapped between the areas of inscribed and circumscribed rectangles.

**Theorem (Continuity of F)**: If f is integrable on [a,b] with m ≤ f ≤ M, then F(x) = ∫ₐˣ f is continuous.

*Proof*: For h > 0:

$$F(x+h) - F(x) = \int_a^{x+h} f - \int_a^x f = \int_x^{x+h} f$$

by additivity. By the bounds theorem:

$$m \cdot h \leq F(x+h) - F(x) \leq M \cdot h$$

As h → 0, both bounds → 0, so F(x+h) → F(x). Similarly for h < 0. ∎

### The Main Theorem: Integrals are Trapped

This is the key insight that predicts the construction.

**Definition (Preview)**: For a bounded function f on [a,b] and a partition P = {a = x₀ < x₁ < ... < xₙ = b}:

- **Lower sum**: L(f,P) = Σᵢ mᵢ(xᵢ − xᵢ₋₁) where mᵢ = inf{f(x) : x ∈ [xᵢ₋₁, xᵢ]}
- **Upper sum**: U(f,P) = Σᵢ Mᵢ(xᵢ − xᵢ₋₁) where Mᵢ = sup{f(x) : x ∈ [xᵢ₋₁, xᵢ]}

**Theorem (Trapping)**: Any integral satisfying the axioms must satisfy:

$$L(f,P) \leq \int_{[a,b]} f \leq U(f,P)$$

for every partition P.

*Proof*: On each subinterval [xᵢ₋₁, xᵢ], we have mᵢ ≤ f ≤ Mᵢ. By monotonicity:

$$\int_{[x_{i-1}, x_i]} m_i \leq \int_{[x_{i-1}, x_i]} f \leq \int_{[x_{i-1}, x_i]} M_i$$

By rectangles:

$$m_i(x_i - x_{i-1}) \leq \int_{[x_{i-1}, x_i]} f \leq M_i(x_i - x_{i-1})$$

Summing over all i and using additivity:

$$\sum_i m_i(x_i - x_{i-1}) \leq \int_{[a,b]} f \leq \sum_i M_i(x_i - x_{i-1})$$

That is, L(f,P) ≤ ∫f ≤ U(f,P). ∎

**Corollary**: For any partition P, L(f,P) ≤ U(f,P).

**Corollary**: If f is integrable, its integral is the unique value trapped between all upper and lower sums:

$$\int_{[a,b]} f = \sup_P L(f,P) = \inf_P U(f,P)$$

*This predicts the Darboux definition*: A function should be integrable precisely when sup L(f,P) = inf U(f,P).

### Constraining Values

Even without knowing if integrals exist, we can determine their values.

**Example**: If x is integrable on [0,1], then ∫₀¹ x = 1/2.

*Proof*: Use the partition Pₙ = {0, 1/n, 2/n, ..., 1}.

Lower sum: L(x, Pₙ) = Σᵢ₌₁ⁿ ((i−1)/n) · (1/n) = (n−1)/(2n)

Upper sum: U(x, Pₙ) = Σᵢ₌₁ⁿ (i/n) · (1/n) = (n+1)/(2n)

So (n−1)/(2n) ≤ ∫₀¹ x ≤ (n+1)/(2n).

As n → ∞, both bounds → 1/2. The integral is trapped at 1/2. ∎

**Example**: If x² is integrable on [0,1], then ∫₀¹ x² = 1/3.

*Proof*: Similar calculation using Σi² = n(n+1)(2n+1)/6 yields bounds converging to 1/3. ∎

### Looking Ahead

We've shown:
- The axioms force integrals to lie between upper and lower sums
- When these sums converge to a common value, the integral is determined
- The natural definition: f is integrable when sup L = inf U

Before constructing the integral, we use the axioms to *define* classical geometric quantities.

---

## 7.2 Integration and Geometry

The axioms let us define geometric quantities that occupied mathematicians for millennia. These are *definitions*—we declare what arc length, area, and volume *mean* in terms of any integral satisfying our axioms. Whether these quantities exist (for a given curve or solid) depends on whether the relevant functions are integrable.

### Arc Length

**Motivation**: To measure the length of a curve y = f(x) from x = a to x = b, approximate by line segments. Over a small interval [x, x+Δx], the curve rises by Δy ≈ f'(x)Δx. By the Pythagorean theorem, the segment length is:

$$\sqrt{(\Delta x)^2 + (\Delta y)^2} \approx \sqrt{1 + (f'(x))^2} \, \Delta x$$

**Definition**: For a curve y = f(x) with f' continuous on [a,b], the *arc length* is:

$$L = \int_a^b \sqrt{1 + (f'(x))^2} \, dx$$

provided this integral exists.

**Example (Arc length of a circle)**: For the upper semicircle y = √(1−x²) from x = −1 to x = 1:

$$y' = \frac{-x}{\sqrt{1-x^2}}, \qquad 1 + (y')^2 = \frac{1}{1-x^2}$$

So arc length = ∫₋₁¹ 1/√(1−x²) dx. This is an improper integral (the integrand blows up at ±1), but if it converges, it gives the length of the semicircle—which we call π.

We cannot yet *compute* this integral, but we have *defined* what π means: it is the arc length of a semicircle of radius 1.

### Archimedes' Axiom on Convex Curves

Archimedes understood a fundamental fact about lengths of convex curves:

**Theorem (Archimedes)**: Let f and g be convex functions on [a,b] with f(a) = g(a) and f(b) = g(b). If f(x) ≤ g(x) for all x ∈ (a,b) (so f lies closer to the chord), then:

$$\int_a^b \sqrt{1 + (f')^2} \, dx \leq \int_a^b \sqrt{1 + (g')^2} \, dx$$

The curve closer to the chord is shorter.

*Proof*: For convex functions with the same endpoints and f ≤ g, the slopes satisfy: f starts steeper and ends shallower than g (or vice versa), but the total variation of f' is less than that of g'. 

More precisely: since both curves connect the same endpoints, they have the same average slope. But g bulges more, so |g'| must be larger on average to "get back" to the same endpoint.

[Technical proof using convexity and the structure of derivatives...]

**Corollary**: A straight line segment is the shortest path between two points.

*Proof*: The line has f'(x) = constant = (f(b)−f(a))/(b−a). Any other curve connecting the same points has √(1+(f')²) ≥ 1 with strict inequality somewhere, giving a larger integral. ∎

### Area Between Curves

**Definition**: If f ≥ g on [a,b], the *area between the curves* y = f(x) and y = g(x) is:

$$A = \int_a^b [f(x) - g(x)] \, dx$$

provided this integral exists.

**Example (Area of a disk)**: The disk x² + y² ≤ 1 lies between y = √(1−x²) and y = −√(1−x²). So:

$$\text{Area} = \int_{-1}^{1} 2\sqrt{1-x^2} \, dx$$

We cannot yet compute this, but we have defined what "area of a disk" means. We will later show this equals π—the same π as the arc length!

### Volume by Slicing (Cavalieri, Rigorous)

Cavalieri imagined solids as stacks of infinitely thin slices. We make this rigorous:

**Definition**: If a solid has cross-sectional area A(x) at position x for x ∈ [a,b], and A is integrable, then the *volume* is:

$$V = \int_a^b A(x) \, dx$$

This is exactly Cavalieri's principle, now as a definition.

**Cavalieri's Principle (Rigorous)**: If two solids have equal cross-sectional areas A(x) = B(x) for all x ∈ [a,b], they have equal volumes.

*Proof*: Immediate—both volumes equal ∫ₐᵇ A(x) dx. ∎

**Example (Volume of a pyramid)**: A pyramid with square base of side s and height h has cross-sectional area A(x) = (sx/h)² at height x. So:

$$V = \int_0^h \frac{s^2 x^2}{h^2} \, dx = \frac{s^2}{h^2} \int_0^h x^2 \, dx$$

If x² is integrable with ∫₀ʰ x² = h³/3, then V = s²h/3 = (1/3) · base · height.

**Example (Volume of a cone)**: A cone with base radius r and height h has circular cross-sections of radius rx/h at height x, so A(x) = π(rx/h)². Thus:

$$V = \int_0^h \pi \frac{r^2 x^2}{h^2} \, dx = \frac{\pi r^2}{h^2} \cdot \frac{h^3}{3} = \frac{1}{3}\pi r^2 h$$

This is (1/3) · base area · height, matching the pyramid formula.

**Example (Volume of a sphere)**: A sphere of radius R has circular cross-sections of radius √(R²−x²) at height x, so A(x) = π(R²−x²). Thus:

$$V = \int_{-R}^{R} \pi(R^2 - x^2) \, dx = \pi \left[ R^2 \cdot 2R - \frac{(2R)^3/4}{3} \right] = \frac{4}{3}\pi R^3$$

(using ∫x² by the axiomatic calculation)

### Volume of Revolution

**Definition**: The solid obtained by rotating y = f(x) around the x-axis from x = a to x = b has volume:

$$V = \int_a^b \pi [f(x)]^2 \, dx$$

(the "disk method"—each cross-section is a disk of radius f(x))

### What We've Done

We have *defined* arc length, area, and volume in terms of integrals. These definitions make Archimedes and Cavalieri rigorous. The definitions work for *any* integral satisfying our axioms.

But do integrable functions exist? Can we actually compute these quantities? We must construct an integral and verify it satisfies the axioms.

---

## 7.3 The Darboux Integral

### Partitions

**Definition**: A *partition* of [a,b] is a finite set P = {x₀, x₁, ..., xₙ} with:

$$a = x_0 < x_1 < x_2 < \cdots < x_n = b$$

**Definition**: A partition Q is a *refinement* of P if P ⊂ Q (Q contains all points of P plus possibly more).

**Notation**: Write P ⊂ Q to mean Q refines P.

### Upper and Lower Sums

**Definition**: For a bounded function f on [a,b] and partition P = {x₀, ..., xₙ}:

$$m_i = \inf\{f(x) : x \in [x_{i-1}, x_i]\}$$
$$M_i = \sup\{f(x) : x \in [x_{i-1}, x_i]\}$$

$$L(f, P) = \sum_{i=1}^{n} m_i (x_i - x_{i-1}) \quad \text{(lower sum)}$$
$$U(f, P) = \sum_{i=1}^{n} M_i (x_i - x_{i-1}) \quad \text{(upper sum)}$$

**Lemma**: Refinements improve bounds. If P ⊂ Q, then:

$$L(f, P) \leq L(f, Q) \leq U(f, Q) \leq U(f, P)$$

*Proof*: Adding a point to a partition can only increase lower sums (the inf over a smaller interval is ≥ the inf over a larger interval) and decrease upper sums. ∎

**Corollary**: Every lower sum is ≤ every upper sum.

*Proof*: Given partitions P and Q, let R = P ∪ Q be their common refinement. Then:

$$L(f, P) \leq L(f, R) \leq U(f, R) \leq U(f, Q)$$

∎

### The Darboux Integral

**Definition**: The *lower integral* and *upper integral* of f are:

$$\underline{\int_a^b} f = \sup_P L(f, P)$$
$$\overline{\int_a^b} f = \inf_P U(f, P)$$

By the corollary above, the lower integral ≤ the upper integral.

**Definition**: A bounded function f is *Darboux integrable* on [a,b] if:

$$\underline{\int_a^b} f = \overline{\int_a^b} f$$

In this case, the common value is the *integral*, written ∫ₐᵇ f or ∫[a,b] f.

This is exactly the definition predicted by our axiomatic analysis.

### Verification of the Axioms

We verify that the Darboux integral satisfies our three axioms.

**Axiom 1 (Rectangles)**: ∫[a,b] k = k(b−a). ✓

*Proof*: For any partition, mᵢ = Mᵢ = k, so L(k, P) = U(k, P) = k(b−a). ∎

**Axiom 2 (Monotonicity)**: f ≤ g ⟹ ∫f ≤ ∫g. ✓

*Proof*: If f ≤ g, then on each subinterval, inf f ≤ inf g and sup f ≤ sup g. So L(f, P) ≤ L(g, P) and U(f, P) ≤ U(g, P). Taking sup/inf over partitions preserves the inequality. ∎

**Axiom 3 (Additivity)**: ∫[a,b] f = ∫[a,c] f + ∫[c,b] f. ✓

*Proof*: For any partition P of [a,b] containing c, we have:

$$L(f, P) = L(f, P|_{[a,c]}) + L(f, P|_{[c,b]})$$

and similarly for upper sums. The result follows by taking sup/inf. ∎

### Continuous Functions are Integrable

**Theorem**: If f is continuous on [a,b], then f is Darboux integrable.

*Proof*: We show U(f, P) − L(f, P) can be made arbitrarily small.

Since f is continuous on [a,b] (compact), f is uniformly continuous: for any ε > 0, there exists δ > 0 such that |x − y| < δ implies |f(x) − f(y)| < ε/(b−a).

Choose a partition P with mesh < δ (each subinterval has length < δ).

On each subinterval [xᵢ₋₁, xᵢ], continuity implies f achieves its sup Mᵢ and inf mᵢ at some points. Since the subinterval has length < δ:

$$M_i - m_i < \frac{\varepsilon}{b-a}$$

Therefore:

$$U(f, P) - L(f, P) = \sum_i (M_i - m_i)(x_i - x_{i-1}) < \frac{\varepsilon}{b-a} \sum_i (x_i - x_{i-1}) = \varepsilon$$

Since ε was arbitrary, sup L = inf U, so f is integrable. ∎

### The Geometric Quantities Exist

**Corollary**: If f has continuous derivative on [a,b], then the arc length of y = f(x) exists (the integral converges).

**Corollary**: Areas between continuous curves and volumes of solids with continuous cross-sections all exist.

The definitions from Section 7.2 now have content: continuous functions give us actual, computable geometric quantities.

### Piecewise Continuous Functions (Optional)

**Corollary**: If f is bounded and continuous except at finitely many points, then f is integrable.

*Proof sketch*: Near each discontinuity, the contribution to U − L is bounded by 2M · (width of interval around discontinuity). Make these intervals arbitrarily small. On the remaining intervals, f is continuous, so the contribution to U − L is small by the theorem above. ∎

---

## 7.4 Computing Integrals

### The Technique

To compute ∫ₐᵇ f directly:

1. Choose a sequence of partitions Pₙ with mesh → 0
2. Compute L(f, Pₙ) and U(f, Pₙ)
3. Show both converge to the same limit
4. That limit is ∫ₐᵇ f

For well-behaved functions, uniform partitions Pₙ = {a, a + (b−a)/n, a + 2(b−a)/n, ..., b} suffice.

### Example: ∫₀¹ xⁿ = 1/(n+1)

Using uniform partition Pₙ = {0, 1/n, 2/n, ..., 1}:

$$U(x^n, P_n) = \sum_{i=1}^{n} \left(\frac{i}{n}\right)^n \cdot \frac{1}{n} = \frac{1}{n^{n+1}} \sum_{i=1}^{n} i^n$$

The sum Σᵢⁿ iⁿ is a polynomial in n of degree n+1 with leading coefficient 1/(n+1). So:

$$U(x^n, P_n) \to \frac{1}{n+1}$$

Similarly for L(xⁿ, Pₙ). Therefore ∫₀¹ xⁿ = 1/(n+1).

*Note*: This confirms our axiomatic prediction from 7.1. The axioms forced this value; computation confirms it.

### Example: ∫₀¹ eˣ = e − 1

Using uniform partition Pₙ:

$$U(e^x, P_n) = \sum_{i=1}^{n} e^{i/n} \cdot \frac{1}{n} = \frac{1}{n} \cdot \frac{e^{1/n}(e - 1)}{e^{1/n} - 1}$$

using the geometric series formula.

As n → ∞, e^{1/n} → 1 and (e^{1/n} − 1)/(1/n) → 1 (the derivative of eˣ at 0). So:

$$U(e^x, P_n) \to e - 1$$

Similarly for the lower sum. Therefore ∫₀¹ eˣ = e − 1.

### Example: ∫₀¹ 2ˣ = 1/ln(2)

Similar calculation using 2ˣ = eˣˡⁿ² yields:

$$\int_0^1 2^x = \frac{2 - 1}{\ln 2} = \frac{1}{\ln 2}$$

### The Exponential Observation

Look at what we computed:

$$\int_0^1 e^x = e^1 - e^0$$

The integral of eˣ from 0 to 1 equals eˣ evaluated at the endpoints!

This is remarkable. For polynomials, we needed elaborate calculations. For the exponential, the integral seems to "know" about the function's values at the boundary.

This hints at a deep connection. The exponential is its own derivative: (eˣ)' = eˣ. And somehow, integrating eˣ gives back eˣ (up to evaluation at endpoints).

Is there a general principle here? Chapter 8 will reveal the connection.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Integration existed for 2000 years before calculus |
| 7.1 Axiomatic | Axioms constrain values and predict the construction |
| 7.2 Geometry | Define arc length, area, volume in terms of axioms |
| 7.3 Darboux | The predicted construction works; geometric quantities exist |
| 7.4 Computing | Direct computation is possible but laborious; exponential hints at FTC |

## Key Theorems

1. **Trapping Theorem** (7.1): Any integral satisfying the axioms lies between upper and lower sums
2. **Archimedes' Axiom** (7.2): Among convex curves with same endpoints, the one closer to the chord is shorter
3. **Continuous ⟹ Integrable** (7.3): Continuous functions on [a,b] are Darboux integrable
4. **Axiom Verification** (7.3): The Darboux integral satisfies all three axioms

## Definitions Introduced

- Arc length: ∫√(1+(f')²) dx
- Area between curves: ∫[f−g] dx  
- Volume by slicing: ∫A(x) dx (Cavalieri, rigorous)
- Volume of revolution: ∫π[f(x)]² dx

## Dependencies

**Requires from earlier chapters**:
- Supremum and infimum
- Continuity and uniform continuity
- Compactness of [a,b]

**Sets up for later chapters**:
- Chapter 8: FTC connects integration to differentiation; defines trig via arc length integrals
- Chapter 9: Extending the integral beyond continuous functions
