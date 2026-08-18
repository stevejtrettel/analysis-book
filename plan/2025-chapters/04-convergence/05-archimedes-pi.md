## Measurement of the Circle

<!-- Opening prose: see outline. Archimedes' squeeze, historical tour (Archimedes, Liu Hui, Zu Chongzhi, al-Kashi), anchoring to def-curve-length from Ch 1, and the twin payoffs — existence of π and the identification of the area constant. -->

### Archimedes' Method

By @def-curve-length, the length of a curve is the supremum of its inscribed polygonal lengths. To define $\pi$ we must show this supremum is finite for the unit circle. Following Archimedes, let $a_n$ and $b_n$ denote the half-perimeters of the regular **inscribed** and **circumscribed** $n$-gons in the unit circle, with $n$ running through the doubling sequence $n = 6, 12, 24, 48, \ldots$. Starting from the hexagon, $a_6 = 3$ and $b_6 = 2\sqrt{3}$.

::: {#def-archimedes-postulate}
## Archimedes' Postulate
Of any two convex arcs with common endpoints, the one enclosing the other has greater length.
:::

Archimedes took this as an axiom (Postulate 2 of *On the Sphere and Cylinder*); once arc length is formalized as in @def-curve-length the principle is provable — we return to this in Ch 9. Applied to the circle against polygonal chords, it gives $a_n < \text{half-circumference} < b_n$.

::: {#thm-doubling-recurrence}
## The Doubling Recurrence
Along the doubling sequence,
$$b_{2n} = \frac{2 a_n b_n}{a_n + b_n} = H(a_n, b_n), \qquad a_{2n} = \sqrt{a_n \, b_{2n}} = G(a_n, b_{2n}).$$
:::

<!-- Proof: guided exercise (trig derivation). -->

### The Existence of $\pi$

::: {#lem-perimeter-monotonicity}
## Monotonicity of the Archimedean Sequences
Along the doubling sequence, $(a_n)$ is strictly increasing, $(b_n)$ is strictly decreasing, and $a_n < b_n$.
:::

<!-- Proof: for $0 < a < b$, harmonic/geometric means satisfy $a < H(a,b) < b$ and $a < G(a,c) < c$ for $a<c$. Apply to the recurrence. -->

::: {#prp-perimeters-share-limit}
## Archimedean Common Limit
$\lim a_n = \lim b_n$.
:::

<!-- Proof: MCT + ratio trick. $r_n = a_n/b_n$ satisfies $r_{2n} = \sqrt{(r_n+1)/2}$, increasing and bounded by 1, hence $r_n \to L$ with $L = \sqrt{(L+1)/2}$, forcing $L = 1$. -->

::: {#thm-pi-exists}
## Existence of $\pi$
The unit circle is rectifiable (in the sense of @def-curve-length), with length equal to $2\lim a_n = 2\lim b_n$.
:::

<!-- Proof: every inscribed polygonal length is bounded above by a circumscribed polygonal length, hence $\sup(\text{inscribed}) < \infty$. Sandwich $\lim a_n \leq \sup \leq \inf \leq \lim b_n$ collapses by @prp-perimeters-share-limit. -->

::: {#def-pi}
## $\pi$
$\pi$ is half the length of the unit circle, in the sense of @def-curve-length.
:::

::: {#cor-pi-archimedes}
## Archimedes' Formula for $\pi$
$\pi = \lim a_n = \lim b_n$, and $a_n < \pi < b_n$ for every $n$ in the doubling sequence. The nested intervals $[a_n, b_n]$ collapse to $\pi$ and give rigorous error bounds.
:::

### Approximating $\pi$

::: {#prp-archimedes-bounds}
## Archimedes' Bounds
$$3\tfrac{10}{71} \;<\; \pi \;<\; 3\tfrac{1}{7}.$$
:::

<!-- Proof: 4 applications of @thm-doubling-recurrence from $(a_6, b_6)$, using $265/153 < \sqrt{3} < 1351/780$ to keep rational bounds. Deferred to guided exercise. -->

Six centuries after Archimedes, **Zu Chongzhi** (5th c. CE) pushed the same method to a 12288-gon and obtained $\pi \approx 355/113$, accurate to seven decimals — a record unsurpassed until al-Kashi's 16-digit computation in 1424.

### The Area Constant is $\pi$

By @def-area, a region has area iff the supremum of inscribed polygonal areas equals the infimum of circumscribed polygonal areas. Let $A_n$, $B_n$ denote these polygonal areas along the doubling sequence.

::: {#lem-polygon-area-formulas}
## Polygon Area Formulas
For the regular inscribed and circumscribed $n$-gons in the unit circle,
$$A_n = a_n h_n, \qquad B_n = b_n,$$
where $h_n$ is the **apothem** of the inscribed $n$-gon and satisfies $h_n^2 + (a_n/n)^2 = 1$.
:::

<!-- Proof: triangle-fan decomposition (pure algebra + Pythagoras). -->

::: {#prp-polygon-areas-share-limit}
## Convergence of Polygon Areas
$\lim A_n = \lim B_n = \pi$.
:::

<!-- Proof: $a_n/n \to 0$ (since $a_n$ bounded), so $h_n \to 1$; thus $A_n = a_n h_n \to \pi$, and $B_n = b_n \to \pi$ by @cor-pi-archimedes. -->

::: {#thm-area-exists-equals-pi}
## Archimedes' Area Theorem
The unit disk has area (in the sense of @def-area) equal to $\pi$. A disk of radius $r$ has area
$$\pi r^2 \;=\; \tfrac{1}{2} \cdot \text{Circumference} \cdot r.$$
:::

<!-- Proof: $A_n \leq A_{\text{inner}} \leq A_{\text{outer}} \leq B_n$; squeeze by @prp-polygon-areas-share-limit. Radius-$r$ case by homothety. -->

The *same* constant $\pi$ governs both circumference and area.

::: {#thm-circumference}
## Circumference (Exercise)
The circumference of a circle of radius $r$ is $2\pi r$.
:::

<!-- Proof: guided exercise — scale the Archimedean construction by $r$ and rerun the squeeze. -->

### Viète's Formula

In §4.2 (@prp-viete-convergence) we proved Viète's infinite product converges; here we identify its value.

::: {#thm-viete-formula}
## Viète's Formula
$$\frac{2}{\pi} \;=\; \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2 + \sqrt{2}}}{2} \cdot \frac{\sqrt{2 + \sqrt{2 + \sqrt{2}}}}{2} \cdots$$
:::

<!-- Proof: telescope @thm-doubling-recurrence from the inscribed square ($a_4 = 2\sqrt{2}$); the ratio $a_{2n}/a_n = \cos(\theta_n/2)$ produces nested square roots via the half-angle identity. Deferred to guided exercise. -->

### Guided Exercises

<!--
(1) The Doubling Recurrence (@thm-doubling-recurrence): trig derivation using def-trig, prp-pythagorean-identity, prp-angle-addition. Needs double-angle (sine, cosine) and half-angle tangent identities — see §1.5 flag.

(2) Starting the Recurrence from the Hexagon: verify $a_6 = 3$, $b_6 = 2\sqrt{3}$; run one doubling step.

(3) Circumference of a Radius-$r$ Circle (@thm-circumference): scale by $r$ and rerun the squeeze.

(4) Viète's Product (@thm-viete-formula): iterate half-angle identity from $\cos(\pi/4) = \sqrt{2}/2$; telescope.

(5) Archimedes' 96-gon Bounds (@prp-archimedes-bounds): apply doubling four times from $(a_6, b_6)$ using rational bounds for $\sqrt{3}$.

(6) OPTIONAL — Pell-adjacent $\sqrt{3}$ observation: connect $b_6 = 2\sqrt{3}$ to the convergents of $\sqrt{3} = [1; \overline{1,2}]$ from §4.4.

FLAG: §1.5 currently has prp-pythagorean-identity and prp-angle-addition but NOT double-angle or half-angle tangent identities. Add these to §1.5 before finalizing exercise (1).
-->

### Exercises
