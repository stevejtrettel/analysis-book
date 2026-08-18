# Chapter 8: Integration

## Overview

This chapter develops integration as an independent subject, formalized axiomatically. The key insight: axiomatic analysis *forces* the value of the integral for continuous functions, and then we verify that this forced value actually satisfies the axioms — proving the integral exists.

**The arc:**
> History (prelude) → Axioms force the value → Darboux verifies existence → Geometry defined → Computing (exponential tease)

Students see that integration existed for 2000 years before calculus, that axioms determine integrals uniquely for continuous functions, and that the Darboux construction is the inevitable verification that these forced values actually work.

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

Archimedes also studied arc length, proving fundamental facts about the lengths of convex curves—that a chord is shorter than any convex arc with the same endpoints, and that among convex curves sharing endpoints, the one lying closer to the chord is shorter. He could not prove this last fact; he took it as an axiom. We will prove it.

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

We now formalize what they were doing. Our axioms will force the value of integrals for continuous functions—and then we'll verify that these values actually define an integral.

---

## 8.1 The Axiomatic Integral

### The Axioms

What properties should an integral have? We propose three axioms for ∫[a,b] f:

**Axiom 1 (Rectangles)**: ∫[a,b] k = k(b−a) for any constant k.

*The integral of a constant is the area of a rectangle.*

**Axiom 2 (Monotonicity)**: If f ≤ g on [a,b], then ∫[a,b] f ≤ ∫[a,b] g.

*Larger functions have larger integrals.*

**Axiom 3 (Additivity)**: ∫[a,b] f = ∫[a,c] f + ∫[c,b] f for any c ∈ (a,b).

*The integral over a union is the sum of integrals over parts.*

These axioms say nothing about which functions are integrable—only how the integral must behave on those that are.

### Theorems from the Axioms

We can prove theorems using only the axioms—no construction needed.

**Theorem (Bounds)**: If m ≤ f(x) ≤ M for all x ∈ [a,b], then:

$$m(b-a) \leq \int_{[a,b]} f \leq M(b-a)$$

*Proof*: By monotonicity, ∫m ≤ ∫f ≤ ∫M. By the rectangle axiom, ∫m = m(b−a) and ∫M = M(b−a). ∎

*Interpretation*: The integral is trapped between the areas of inscribed and circumscribed rectangles.

**Theorem (Continuity of F)**: If f is integrable on [a,b] with m ≤ f ≤ M, then F(x) = ∫ₐˣ f is continuous.

*Proof*: For h > 0:

$$F(x+h) - F(x) = \int_a^{x+h} f - \int_a^x f = \int_x^{x+h} f$$

by additivity. By the bounds theorem:

$$m \cdot h \leq F(x+h) - F(x) \leq M \cdot h$$

As h → 0, both bounds → 0, so F(x+h) → F(x). Similarly for h < 0. ∎

### Upper and Lower Sums

**Definition**: A *partition* of [a,b] is a finite set P = {x₀, x₁, ..., xₙ} with:

$$a = x_0 < x_1 < x_2 < \cdots < x_n = b$$

**Definition**: For a bounded function f on [a,b] and a partition P:

$$m_i = \inf\{f(x) : x \in [x_{i-1}, x_i]\}$$
$$M_i = \sup\{f(x) : x \in [x_{i-1}, x_i]\}$$

$$L(f, P) = \sum_{i=1}^{n} m_i (x_i - x_{i-1}) \quad \text{(lower sum)}$$
$$U(f, P) = \sum_{i=1}^{n} M_i (x_i - x_{i-1}) \quad \text{(upper sum)}$$

### The Trapping Theorem

**Theorem (Trapping)**: Any integral satisfying the axioms must satisfy:

$$L(f,P) \leq \int_{[a,b]} f \leq U(f,P)$$

for every partition P.

*Proof*: On each subinterval [xᵢ₋₁, xᵢ], we have mᵢ ≤ f ≤ Mᵢ. By monotonicity:

$$\int_{[x_{i-1}, x_i]} m_i \leq \int_{[x_{i-1}, x_i]} f \leq \int_{[x_{i-1}, x_i]} M_i$$

By the rectangle axiom:

$$m_i(x_i - x_{i-1}) \leq \int_{[x_{i-1}, x_i]} f \leq M_i(x_i - x_{i-1})$$

Summing over all i and using additivity:

$$\sum_i m_i(x_i - x_{i-1}) \leq \int_{[a,b]} f \leq \sum_i M_i(x_i - x_{i-1})$$

That is, L(f,P) ≤ ∫f ≤ U(f,P). ∎

**Corollary**: For any partition P, L(f,P) ≤ U(f,P).

**Corollary**: sup_P L(f,P) ≤ ∫f ≤ inf_P U(f,P).

### When is the Value Forced?

If sup_P L(f,P) = inf_P U(f,P), there is exactly one number trapped between all lower sums and all upper sums. In this case, the axioms completely determine ∫f — it must equal this common value.

Key question: For which functions does sup L = inf U?

### Continuous Functions Have Forced Values

**Theorem**: If f is continuous on [a,b], then sup_P L(f,P) = inf_P U(f,P).

*Proof*: We show U(f, P) − L(f, P) can be made arbitrarily small.

Since f is continuous on [a,b] (compact), f is uniformly continuous: for any ε > 0, there exists δ > 0 such that |x − y| < δ implies |f(x) − f(y)| < ε/(b−a).

Choose a partition P with mesh < δ (each subinterval has length < δ).

On each subinterval [xᵢ₋₁, xᵢ], continuity on a compact set implies f achieves its sup Mᵢ and inf mᵢ. Since the subinterval has length < δ:

$$M_i - m_i < \frac{\varepsilon}{b-a}$$

Therefore:

$$U(f, P) - L(f, P) = \sum_i (M_i - m_i)(x_i - x_{i-1}) < \frac{\varepsilon}{b-a} \sum_i (x_i - x_{i-1}) = \varepsilon$$

Since ε was arbitrary, sup L = inf U. ∎

**Corollary**: If f is continuous and an integral satisfying the axioms exists, then the axioms force its value uniquely: it must equal sup L = inf U.

### Examples: Values Forced by the Axioms

**Example**: If f(x) = x is integrable on [0,1], then ∫₀¹ x = 1/2.

*Proof*: Use the uniform partition Pₙ = {0, 1/n, 2/n, ..., 1}.

On [$(i-1)/n$, $i/n$], we have mᵢ = (i−1)/n and Mᵢ = i/n.

Lower sum: 
$$L(x, P_n) = \sum_{i=1}^{n} \frac{i-1}{n} \cdot \frac{1}{n} = \frac{1}{n^2} \sum_{i=0}^{n-1} i = \frac{1}{n^2} \cdot \frac{(n-1)n}{2} = \frac{n-1}{2n}$$

Upper sum: 
$$U(x, P_n) = \sum_{i=1}^{n} \frac{i}{n} \cdot \frac{1}{n} = \frac{1}{n^2} \sum_{i=1}^{n} i = \frac{1}{n^2} \cdot \frac{n(n+1)}{2} = \frac{n+1}{2n}$$

So (n−1)/(2n) ≤ ∫₀¹ x ≤ (n+1)/(2n).

As n → ∞, both bounds → 1/2. Since f(x) = x is continuous, sup L = inf U = 1/2.

The integral is forced to be 1/2. ∎

**Example**: If f(x) = x² is integrable on [0,1], then ∫₀¹ x² = 1/3.

*Proof*: Using uniform partition Pₙ and the identity Σᵢ² = n(n+1)(2n+1)/6:

$$U(x^2, P_n) = \frac{1}{n^3} \sum_{i=1}^{n} i^2 = \frac{1}{n^3} \cdot \frac{n(n+1)(2n+1)}{6} = \frac{(n+1)(2n+1)}{6n^2}$$

As n → ∞, this → 2/6 = 1/3. Similarly for L. Since x² is continuous, the integral is forced to be 1/3. ∎

### The Question

We know *what* the integral must be for continuous functions: it must equal sup L = inf U.

But does an integral satisfying the axioms actually *exist*?

The forced value is unique — but we haven't shown that defining ∫f to be this value actually produces something satisfying the three axioms.

We must verify this.

---

## 8.2 The Darboux Integral

### The Definition

Motivated by Section 8.1, we define:

**Definition**: For a bounded function f on [a,b], the *lower integral* and *upper integral* are:

$$\underline{\int_a^b} f = \sup_P L(f, P)$$
$$\overline{\int_a^b} f = \inf_P U(f, P)$$

**Definition**: A bounded function f is *Darboux integrable* on [a,b] if the lower and upper integrals are equal. In this case, the common value is the *integral*:

$$\int_a^b f = \sup_P L(f, P) = \inf_P U(f, P)$$

For continuous functions, we proved in 8.1 that sup L = inf U, so continuous functions are Darboux integrable.

But we must still verify that this definition actually satisfies our three axioms.

### Partitions and Refinements

**Definition**: A partition Q is a *refinement* of P if P ⊂ Q (Q contains all points of P plus possibly more).

**Notation**: Write P ⊂ Q to mean Q refines P.

**Lemma (Refinements Improve Bounds)**: If P ⊂ Q, then:

$$L(f, P) \leq L(f, Q) \leq U(f, Q) \leq U(f, P)$$

*Proof*: Consider adding a single point c to P, creating partition P' = P ∪ {c}. Suppose c ∈ (xⱼ₋₁, xⱼ).

The interval [xⱼ₋₁, xⱼ] is split into [xⱼ₋₁, c] and [c, xⱼ].

For the lower sum: inf over [xⱼ₋₁, xⱼ] ≤ inf over any subinterval. So:

$$m_j (x_j - x_{j-1}) \leq m_{j,\text{left}}(c - x_{j-1}) + m_{j,\text{right}}(x_j - c)$$

Thus L(f, P) ≤ L(f, P').

Similarly, U(f, P') ≤ U(f, P).

For general refinements, add points one at a time. ∎

**Corollary**: Every lower sum is ≤ every upper sum.

*Proof*: Given partitions P and Q, let R = P ∪ Q be their common refinement. Then:

$$L(f, P) \leq L(f, R) \leq U(f, R) \leq U(f, Q)$$

∎

**Corollary**: The lower integral ≤ the upper integral.

### Verification of the Axioms

We now verify that the Darboux integral satisfies our three axioms.

**Axiom 1 (Rectangles)**: ∫[a,b] k = k(b−a). ✓

*Proof*: For any partition, mᵢ = Mᵢ = k on each subinterval. So:

$$L(k, P) = \sum_i k(x_i - x_{i-1}) = k(b-a)$$

and similarly U(k, P) = k(b−a).

Thus sup L = inf U = k(b−a), and ∫k = k(b−a). ∎

**Axiom 2 (Monotonicity)**: f ≤ g ⟹ ∫f ≤ ∫g. ✓

*Proof*: If f ≤ g on [a,b], then on each subinterval:
- inf f ≤ inf g, so mᵢ(f) ≤ mᵢ(g)
- sup f ≤ sup g, so Mᵢ(f) ≤ Mᵢ(g)

Therefore L(f, P) ≤ L(g, P) and U(f, P) ≤ U(g, P) for all P.

Taking sup over L: sup_P L(f, P) ≤ sup_P L(g, P).

For integrable functions, ∫f = sup L(f) ≤ sup L(g) ≤ ∫g. ∎

**Axiom 3 (Additivity)**: ∫[a,b] f = ∫[a,c] f + ∫[c,b] f. ✓

*Proof*: For any partition P of [a,b] that contains c:

$$L(f, P) = L(f, P|_{[a,c]}) + L(f, P|_{[c,b]})$$

where P|_{[a,c]} is the restriction of P to [a,c].

Taking sup over all such partitions (and noting that any partition can be refined to include c without decreasing L):

$$\sup_P L(f, P) = \sup_{P_1} L(f, P_1) + \sup_{P_2} L(f, P_2)$$

where P₁ ranges over partitions of [a,c] and P₂ over partitions of [c,b].

Similarly for inf U. Since f is integrable on [a,b] iff it's integrable on [a,c] and [c,b]:

$$\int_a^b f = \int_a^c f + \int_c^b f$$

∎

### The Integral Exists

**Theorem**: For continuous f on [a,b], the Darboux integral exists and satisfies all three axioms.

*Proof*: We showed in 8.1 that continuous f has sup L = inf U, so the Darboux integral is defined. We just verified it satisfies the axioms. ∎

The forced value is the actual value. The integral exists.

### Payoff: Other Integrable Functions

The Darboux definition works for any bounded function with sup L = inf U.

**Theorem**: Bounded functions with finitely many discontinuities are integrable.

*Proof sketch*: Let f be bounded by M with discontinuities at c₁, ..., cₖ.

Given ε > 0, enclose each cⱼ in an interval of total length < ε/(4M).

On the remaining intervals, f is continuous, hence uniformly continuous. Choose partition fine enough that U − L < ε/2 on these intervals.

Near discontinuities, the contribution to U − L is at most 2M · ε/(4M) = ε/2.

Total: U(f, P) − L(f, P) < ε. ∎

**Theorem (Exercise)**: Monotone functions on [a,b] are integrable.

*Proof idea*: For monotone f, the oscillation Mᵢ − mᵢ on [xᵢ₋₁, xᵢ] equals |f(xᵢ) − f(xᵢ₋₁)|. With uniform partition of mesh (b−a)/n:

$$U - L = \sum_i (M_i - m_i) \cdot \frac{b-a}{n} \leq \frac{b-a}{n} \cdot |f(b) - f(a)|$$

which → 0 as n → ∞. ∎

We don't belabor integrability criteria here — the Lebesgue integral (later chapter) gives a fuller picture.

---

## 8.3 Integration and Geometry

With existence secured for continuous functions, we can rigorously define classical geometric quantities. These are *definitions* — we declare what arc length, area, and volume *mean* in terms of integration. Whether these quantities exist depends on whether the relevant functions are integrable (for continuous functions, they are).

### Arc Length

**Motivation**: To measure the length of a curve y = f(x) from x = a to x = b, approximate by line segments. Over a small interval [x, x+Δx], the curve rises by Δy ≈ f'(x)Δx. By the Pythagorean theorem, the segment length is:

$$\sqrt{(\Delta x)^2 + (\Delta y)^2} \approx \sqrt{1 + (f'(x))^2} \, \Delta x$$

**Definition**: For a curve y = f(x) with f' continuous on [a,b], the *arc length* is:

$$L = \int_a^b \sqrt{1 + (f'(x))^2} \, dx$$

Since √(1 + (f')²) is continuous when f' is, this integral exists.

**Improper integrals**: If f' is unbounded (as for the semicircle near x = ±1), we define:

$$\int_a^b g = \lim_{c \to a^+} \lim_{d \to b^-} \int_c^d g$$

when this limit exists.

**Example (Arc length of a circle)**: For the upper semicircle y = √(1−x²) from x = −1 to x = 1:

$$y' = \frac{-x}{\sqrt{1-x^2}}, \qquad 1 + (y')^2 = \frac{1}{1-x^2}$$

So arc length = ∫₋₁¹ 1/√(1−x²) dx.

This is an improper integral (the integrand blows up at ±1), but if it converges, it gives the length of the semicircle.

**Definition**: π is the arc length of the unit semicircle:

$$\pi = \int_{-1}^{1} \frac{1}{\sqrt{1-x^2}} \, dx$$

We cannot yet *compute* this integral, but we have *defined* what π means geometrically.

### Archimedes' Inequality for Convex Curves

Archimedes understood a fundamental fact about lengths of convex curves, but he could not prove it — he took it as an axiom. We can prove it using the tools from Chapter 7.

**Theorem (Archimedes' Inequality)**: Let f and g be convex functions on [a,b] with f(a) = g(a) and f(b) = g(b). If f(x) ≤ g(x) for all x ∈ (a,b) (so f lies closer to the chord), then the arc length of f is ≤ the arc length of g:

$$\int_a^b \sqrt{1 + (f')^2} \, dx \leq \int_a^b \sqrt{1 + (g')^2} \, dx$$

The curve closer to the chord is shorter.

*Proof*: This uses the convexity facts from the Chapter 7 guided exercises:
- f convex ⟺ f' is increasing
- If f ≤ g are convex with same endpoints, then... (technical argument involving the relationship between slopes of convex functions with same endpoints)

[Full proof in guided exercises] ∎

**Corollary**: A straight line segment is the shortest path between two points.

*Proof*: The line is convex and lies below (or equals) any other convex curve with the same endpoints. By Archimedes' inequality, it has the shortest arc length.

For the general case: any curve lies above some convex curve with the same endpoints (take the convex hull), so the line is shortest. ∎

**Corollary**: For a convex curve, the arc length lies between the inscribed polygon length and the circumscribed polygon length.

### The Two Definitions of π Agree

We now have two definitions of π:
- **Chapter 4**: π = lim_{n→∞} (perimeter of inscribed n-gon in unit circle)/2
- **Chapter 8**: π = arc length of unit semicircle = ∫₋₁¹ 1/√(1−x²) dx

**Theorem**: These definitions give the same value.

*Proof*: The unit circle is a convex curve. By Archimedes' inequality (the corollary), its arc length lies between the perimeters of inscribed and circumscribed polygons.

Let pₙ = perimeter of inscribed n-gon, Pₙ = perimeter of circumscribed n-gon.

Then pₙ/2 ≤ (arc length of semicircle) ≤ Pₙ/2.

From Chapter 4, both pₙ/2 → π and Pₙ/2 → π.

By the squeeze theorem, arc length of semicircle = π. ∎

This is deeply satisfying: the geometric construction (polygons) and the analytic definition (integral) agree.

### Area Between Curves

**Definition**: If f ≥ g on [a,b], the *area between the curves* y = f(x) and y = g(x) is:

$$A = \int_a^b [f(x) - g(x)] \, dx$$

**Example (Area of a disk)**: The disk x² + y² ≤ 1 lies between y = √(1−x²) and y = −√(1−x²). So:

$$\text{Area} = \int_{-1}^{1} 2\sqrt{1-x^2} \, dx$$

We cannot yet compute this, but we have defined what "area of a disk" means.

We will later show this equals π — the same π as the arc length! The ratio of circumference to diameter equals the ratio of area to r². This is not obvious from the definitions.

### Volume by Slicing (Cavalieri, Rigorous)

Cavalieri imagined solids as stacks of infinitely thin slices. We make this rigorous:

**Definition**: If a solid has cross-sectional area A(x) at position x for x ∈ [a,b], and A is integrable, then the *volume* is:

$$V = \int_a^b A(x) \, dx$$

**Cavalieri's Principle (Rigorous)**: If two solids have equal cross-sectional areas A(x) = B(x) for all x ∈ [a,b], they have equal volumes.

*Proof*: Immediate — both volumes equal ∫ₐᵇ A(x) dx. ∎

**Example (Volume of a pyramid)**: A pyramid with square base of side s and height h.

At height x above the apex, the cross-section is a square of side sx/h (by similar triangles). So A(x) = (sx/h)² = s²x²/h².

$$V = \int_0^h \frac{s^2 x^2}{h^2} \, dx = \frac{s^2}{h^2} \int_0^h x^2 \, dx$$

From 8.1, we know ∫₀ʰ x² dx = h³/3 (by scaling ∫₀¹ x² = 1/3). So:

$$V = \frac{s^2}{h^2} \cdot \frac{h^3}{3} = \frac{s^2 h}{3} = \frac{1}{3} \cdot \text{base} \cdot \text{height}$$

**Example (Volume of a cone)**: A cone with base radius r and height h has circular cross-sections of radius rx/h at height x, so A(x) = π(rx/h)².

$$V = \int_0^h \pi \frac{r^2 x^2}{h^2} \, dx = \frac{\pi r^2}{h^2} \cdot \frac{h^3}{3} = \frac{1}{3}\pi r^2 h$$

This is (1/3) · base area · height, matching the pyramid formula.

**Example (Volume of a sphere)**: A sphere of radius R has circular cross-sections at height x of radius √(R²−x²), so A(x) = π(R²−x²).

$$V = \int_{-R}^{R} \pi(R^2 - x^2) \, dx = \pi \left[ R^2 \cdot 2R - \int_{-R}^{R} x^2 \, dx \right]$$

Now ∫₋ᴿᴿ x² dx = 2∫₀ᴿ x² dx = 2 · R³/3 = 2R³/3. So:

$$V = \pi \left[ 2R^3 - \frac{2R^3}{3} \right] = \pi \cdot \frac{4R^3}{3} = \frac{4}{3}\pi R^3$$

The famous formula, derived from first principles!

### Volume of Revolution

**Definition**: The solid obtained by rotating y = f(x) around the x-axis from x = a to x = b has volume:

$$V = \int_a^b \pi [f(x)]^2 \, dx$$

(the "disk method" — each cross-section is a disk of radius f(x))

**Example**: Rotate y = x² from x = 0 to x = 1 around the x-axis.

$$V = \int_0^1 \pi (x^2)^2 \, dx = \pi \int_0^1 x^4 \, dx = \pi \cdot \frac{1}{5} = \frac{\pi}{5}$$

---

## 8.4 Computing Integrals

### The Direct Method

To compute ∫ₐᵇ f directly from the definition:

1. Choose a sequence of partitions Pₙ with mesh → 0
2. Compute L(f, Pₙ) and U(f, Pₙ)
3. Show both converge to the same limit
4. That limit is ∫ₐᵇ f

For continuous functions, uniform partitions Pₙ = {a, a + (b−a)/n, a + 2(b−a)/n, ..., b} suffice.

### Example: ∫₀¹ xⁿ = 1/(n+1)

Using uniform partition Pₙ = {0, 1/n, 2/n, ..., 1}:

$$U(x^n, P_n) = \sum_{i=1}^{n} \left(\frac{i}{n}\right)^n \cdot \frac{1}{n} = \frac{1}{n^{n+1}} \sum_{i=1}^{n} i^n$$

The sum Σᵢ₌₁ⁿ iⁿ is a polynomial in n of degree n+1 with leading coefficient 1/(n+1). (This follows from the theory of Bernoulli polynomials, or can be verified for small n.)

So:

$$U(x^n, P_n) \to \frac{1}{n+1}$$

Similarly for L(xⁿ, Pₙ). Therefore ∫₀¹ xⁿ = 1/(n+1).

*Note*: This confirms our axiomatic prediction from 8.1. The axioms forced this value; the computation verifies it.

### Example: ∫₀¹ eˣ = e − 1

Using uniform partition Pₙ = {0, 1/n, 2/n, ..., 1}:

$$U(e^x, P_n) = \sum_{i=1}^{n} e^{i/n} \cdot \frac{1}{n} = \frac{1}{n} \sum_{i=1}^{n} e^{i/n}$$

This is a geometric series with first term e^{1/n} and ratio e^{1/n}:

$$U(e^x, P_n) = \frac{1}{n} \cdot e^{1/n} \cdot \frac{e - 1}{e^{1/n} - 1} = \frac{e^{1/n}(e - 1)}{n(e^{1/n} - 1)}$$

As n → ∞: 
- e^{1/n} → 1
- n(e^{1/n} − 1) = (e^{1/n} − 1)/(1/n) → 1 (derivative of eˣ at 0)

So U(eˣ, Pₙ) → (e − 1)/1 = e − 1.

Similarly for the lower sum. Therefore ∫₀¹ eˣ = e − 1.

### Example: ∫₀¹ 2ˣ = 1/ln(2)

Similar calculation using 2ˣ = eˣˡⁿ² yields:

$$U(2^x, P_n) = \frac{2^{1/n}(2 - 1)}{n(2^{1/n} - 1)} \to \frac{1}{\ln 2}$$

since n(2^{1/n} − 1) → ln 2.

Therefore ∫₀¹ 2ˣ = 1/ln(2).

### The Exponential Observation

Look at what we computed:

$$\int_0^1 e^x \, dx = e^1 - e^0 = e - 1$$

The integral of eˣ from 0 to 1 equals eˣ evaluated at the endpoints!

This is remarkable. For polynomials, we needed elaborate calculations with sums of powers. For the exponential, the integral seems to "know" about the function's values at the boundary.

Why? The exponential is its own derivative: (eˣ)' = eˣ. And somehow, integrating eˣ gives back eˣ (up to evaluation at endpoints).

More generally: if we could find F with F' = f, would ∫ₐᵇ f = F(b) − F(a)?

This hints at a deep connection between integration and differentiation. Chapter 9 will reveal the Fundamental Theorem of Calculus.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Integration existed for 2000 years before calculus |
| 8.1 Axiomatic | Axioms force the value for continuous functions |
| 8.2 Darboux | Verify the forced value satisfies axioms → integral exists |
| 8.3 Geometry | Define arc length, area, volume; prove π consistency |
| 8.4 Computing | Direct computation possible but laborious; exponential hints at FTC |

## Key Theorems

1. **Trapping Theorem** (8.1): Any integral satisfying the axioms has L(f,P) ≤ ∫f ≤ U(f,P)
2. **Continuous Functions Forced** (8.1): For continuous f, sup L = inf U, so the value is uniquely determined
3. **Axiom Verification** (8.2): The Darboux integral satisfies all three axioms
4. **Archimedes' Inequality** (8.3): Among convex curves with same endpoints, closer to chord ⟹ shorter
5. **π Consistency** (8.3): Polygon limit definition = arc length integral definition

## Definitions Introduced

- Arc length: ∫√(1+(f')²) dx
- π as arc length of semicircle
- Area between curves: ∫(f−g) dx
- Volume by slicing: ∫A(x) dx (Cavalieri rigorous)
- Volume of revolution: ∫π[f(x)]² dx

---

## Exercises (Selected)

### Section 8.1

- Use the axioms to show: if x³ integrable on [0,1] then ∫₀¹ x³ = 1/4
- Prove from axioms: if f integrable and c ∈ ℝ, then cf integrable with ∫cf = c∫f
- Prove from axioms: if f, g integrable, then f + g integrable with ∫(f+g) = ∫f + ∫g
- Show that for f(x) = x on [0,2], sup L = inf U = 2

### Section 8.2

- Prove: f integrable on [a,b] iff for all ε > 0, exists P with U(f,P) − L(f,P) < ε
- Prove: f monotone on [a,b] ⟹ f integrable
- Give an example of a bounded function with sup L < inf U (hint: Dirichlet function)
- Prove: if f integrable on [a,b] and g = f except at finitely many points, then g integrable with ∫g = ∫f

### Section 8.3

- Compute arc length of y = x^{3/2} from x = 0 to x = 1
- Use Cavalieri to show: a cylinder and a "leaning cylinder" (same base, same height, but slanted) have equal volume
- Prove: volume of cone = (1/3) · base · height for any base shape (not just circular)
- Compute the volume obtained by rotating y = √x from x = 0 to x = 1 around the x-axis

**Guided Exercises: Archimedes' Inequality**

This sequence proves Archimedes' inequality using convexity from Chapter 7.

1. Recall from Ch 7: f convex on [a,b] ⟺ f' is increasing on (a,b)
2. Prove: if f is convex on [a,b], the graph of f lies below the chord connecting (a, f(a)) to (b, f(b))
3. Prove: if f is convex on [a,b], then for any x ∈ (a,b), the graph lies above the tangent line at x
4. Let f, g be convex with f(a) = g(a), f(b) = g(b), and f ≤ g on (a,b). Prove that |f'| ≤ |g'| in an appropriate averaged sense. (Hint: both functions connect the same endpoints, so they have the same average slope...)
5. Conclude: arc length of f ≤ arc length of g
6. Conclude: the straight line is the shortest path between two points
7. Conclude: for a convex curve, inscribed polygon ≤ arc length ≤ circumscribed polygon

### Section 8.4

- Compute ∫₀¹ x⁴ directly using Σi⁴ = n(n+1)(2n+1)(3n²+3n−1)/30
- Compute ∫₀² eˣ directly
- Compute ∫₁² 1/x directly using Riemann sums (the answer involves a limit that defines ln 2)
- ★ Compute ∫₀¹ 1/(1+x²) using Riemann sums (relates to arctan; preview of Ch 9)

---

## Dependencies

**Requires from earlier chapters**:

- Supremum and infimum (Ch 1)
- Continuity and uniform continuity (Ch 6)
- Compactness of [a,b] (Ch 6)
- Convexity: f'' ≥ 0 ⟺ f convex, f convex ⟺ f' increasing (Ch 7 exercises)
- π via polygon limits (Ch 4)

**Sets up for later chapters**:

- Ch 9 (FTC): Connects integration to differentiation; Power Series III (term-by-term integration)
- Ch 9 (Elementary Functions): Defines log as ∫1/x, trig via arc length
- Later chapter: Lebesgue integral extends integrability beyond Darboux