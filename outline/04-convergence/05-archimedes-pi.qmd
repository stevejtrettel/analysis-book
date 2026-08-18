## Archimedes' π

### Narrative

- Archimedes trapped the circle between inscribed and circumscribed polygons
- A beautiful doubling recurrence lets us compute successive approximations
- Anchoring to Ch 1's `def-curve-length`, this gives a rigorous existence proof for π
- The same constant governs both perimeter and area: Archimedes' great theorem
- Bonus: evaluating Viète's product (convergence established back in §4.2) identifies it as $2/\pi$

### Opening (unnumbered)

- How to define π? "Ratio of circumference to diameter" assumes we already know what
  circumference *is*
- Ch 1's `def-curve-length` defines the length of a curve as the supremum of inscribed
  polygonal lengths — a curve is *rectifiable* if this supremum is finite
- So to make π rigorous, we must show the unit circle is rectifiable, i.e., that this
  supremum is a finite number; *then* we can define π as half that length
- Archimedes' idea: trap the circle between inscribed and circumscribed polygons and squeeze
- Historical tour — all of whom used essentially Archimedes' method: Archimedes (96-gon),
  Liu Hui (263 CE, 3072-gon), Zu Chongzhi (5th c., got 355/113), al-Kashi (1424, 16 digits)

---

### §4.5.1 Archimedes' Method

- Goal: set up the sequences $(a_n)$ and $(b_n)$, state Archimedes' convexity axiom,
  and give the doubling recurrence
- Setup: unit circle; $a_n$ = half-perimeter of regular inscribed $n$-gon,
  $b_n$ = half-perimeter of regular circumscribed $n$-gon; $n$ runs through the
  doubling sequence $6, 12, 24, 48, \ldots$
- Starting values (stated here, derived in guided exercise): $a_6 = 3$, $b_6 = 2\sqrt{3}$
- **def-archimedes-postulate**: "Of any two convex arcs with common endpoints, the one
  enclosing the other has greater length." (Archimedes' Postulate 2 from *On the Sphere
  and Cylinder*)
  - Short prose: Archimedes took this as an axiom; once arc length is formalized via
    `def-curve-length` the principle is provable — flag "return to this in Ch 9"
  - Immediate consequence (prose, inline): for a convex arc against polygonal chords,
    $a_n < \text{arc length} < b_n$
- **thm-doubling-recurrence**: $b_{2n} = H(a_n, b_n) = 2 a_n b_n / (a_n + b_n)$ and
  $a_{2n} = G(a_n, b_{2n}) = \sqrt{a_n \cdot b_{2n}}$ (harmonic and geometric means)
  - Proof deferred to guided exercise (trig derivation using Ch 1's Pythagorean and
    angle-addition identities)
  - Historical remark: Archimedes used pure synthetic geometry — no trig

### §4.5.2 The Existence of π

- Goal: prove the unit circle is rectifiable, then define π
- Strategy: first prove the two sequences share a limit (using MCT + a ratio trick), then
  use that to argue the supremum in `def-curve-length` exists, then name half of it π
- **lem-perimeter-monotonicity**: $(a_n)$ strictly increasing, $(b_n)$ strictly decreasing,
  $a_n < b_n$
  - Proof (one-liner sketch): for $0 < a < b$, $a < H(a,b) < b$ and $a < G(a,c) < c$ when
    $a < c$; apply to the recurrence
- **prp-perimeters-share-limit**: $\lim a_n = \lim b_n$
  - Proof: MCT gives $a_n \nearrow L_a$, $b_n \searrow L_b$, $L_a \leq L_b$; ratio trick:
    $r_n = a_n/b_n$ satisfies $r_{2n} = \sqrt{(r_n + 1)/2}$, increasing and bounded by 1,
    so $r_n \to L$ with $L = \sqrt{(L+1)/2}$, forcing $L = 1$
- **thm-pi-exists**: The unit circle is rectifiable (in the sense of `def-curve-length`),
  with length equal to $2 \lim a_n = 2 \lim b_n$
  - Proof: by def-archimedes-postulate, every inscribed polygonal length is bounded above
    by any circumscribed polygonal length, which is finite; hence the sup of inscribed
    polygonal lengths exists and is finite — rectifiability established
  - Sandwich: $\lim a_n \leq \sup(\text{inscribed}) \leq \inf(\text{circumscribed}) \leq \lim b_n$;
    by prp-perimeters-share-limit both outer bounds collapse, so $\sup(\text{inscribed}) = \lim a_n$
  - Double to get the full circle length
- **def-pi**: π is half the length of the unit circle, in the sense of `def-curve-length`
- **cor-pi-archimedes**: (combining the Archimedean computation with the definition)
  $\pi = \lim a_n = \lim b_n$, and $a_n < \pi < b_n$ for every $n$ in the doubling sequence;
  the nested intervals $[a_n, b_n]$ collapse to π and give rigorous error bounds

### §4.5.3 Approximating π

- Goal: use the machinery to get explicit numerical bounds on π (concrete payoff)
- Computation requires approximating square roots — enter Archimedes' rational bounds
  $265/153 < \sqrt{3} < 1351/780$ (he needed this to compute $b_6 = 2\sqrt{3}$ rationally)
- After 4 doublings from the hexagon (to the 96-gon), substituting these rational bounds
  at each step, Archimedes obtained:
- **prp-archimedes-bounds**: $3\tfrac{10}{71} < \pi < 3\tfrac{1}{7}$
  - Proof: computation deferred to guided exercise (carefully propagating inequalities
    through the recurrence to avoid losing tightness)
- Prose historical tour (short — no proof):
  - Zu Chongzhi (5th c. CE): pushed the doubling to a 12288-gon, obtained $\pi \approx 355/113$
    accurate to seven decimals — a record held for nearly 1000 years
  - al-Kashi (1424): 16 decimal digits by refining the same method
- Remark on rate of convergence (prose, with pointer to Exercise 4): quadratic in $1/n$,
  which explains why just 4 doublings from the hexagon suffice for 3 decimals

### §4.5.4 The Area Constant is π

- Goal: show the unit disk has area (in the sense of `def-area`), equal to π — so the
  *same* constant governs the disk's area and the circle's circumference
- Setup: by `def-area`, a region has area iff $A_{\text{inner}} = A_{\text{outer}}$;
  we must show this common value exists for the unit disk, and equals π
- Let $A_n$, $B_n$ denote the areas of the regular inscribed and circumscribed $n$-gons
  along the doubling sequence
- **lem-polygon-area-formulas**: $A_n = a_n h_n$ and $B_n = b_n$, where $h_n$ is the
  apothem (distance from center to side-midpoint) of the inscribed $n$-gon, and
  $h_n^2 + (a_n/n)^2 = 1$
  - Proof: triangle-fan decomposition (pure algebra)
    - Inscribed: $n$ isoceles triangles, base $2 a_n / n$, height $h_n$, total $a_n h_n$
    - Circumscribed: $n$ isoceles triangles, base $2 b_n / n$, height 1, total $b_n$
    - Pythagoras on (center, side-midpoint, vertex) gives $h_n^2 + (a_n/n)^2 = 1$
- **prp-polygon-areas-share-limit**: $\lim A_n = \lim B_n = \pi$
  - Proof (analysis): $a_n$ bounded above (by π), $n \to \infty$, so $a_n/n \to 0$;
    continuity of $\sqrt{\cdot}$ gives $h_n = \sqrt{1 - (a_n/n)^2} \to 1$;
    hence $A_n = a_n h_n \to \pi \cdot 1 = \pi$; $B_n = b_n \to \pi$ by cor-pi-archimedes
- **thm-area-exists-equals-pi**: The unit disk has area (in the sense of `def-area`)
  equal to π. More generally, a disk of radius $r$ has area $\pi r^2 = \tfrac{1}{2} \cdot
  \text{circumference} \cdot r$.
  - Proof: inscribed polygons contained in disk give $A_n \leq A_{\text{inner}}$;
    circumscribed polygons contain disk give $A_{\text{outer}} \leq B_n$;
    always $A_{\text{inner}} \leq A_{\text{outer}}$; sandwiched by prp-polygon-areas-share-limit
    both inner and outer collapse to π
  - Radius-$r$ extension by homothety (polygon side-lengths and apothem scale by $r$,
    area by $r^2$)
- **thm-circumference (Exercise)**: The circumference of a circle of radius $r$ is $2\pi r$
  - Proof deferred to guided exercise: scale Archimedes' construction by $r$, rerun squeeze
- Closing observation (prose): the *same* constant π governs both circumference and area;
  Archimedes' formulation "Area = (1/2) × Circumference × radius" makes this especially vivid

### §4.5.5 Viète's Formula

- Callback: in §4.2 (@prp-viete-convergence) we proved the nested-radical product
  converges; here we identify its value as $2/\pi$
- Strategy: telescope the doubling recurrence starting from the inscribed square
- Starting point: the inscribed 4-gon has $a_4 = 2\sqrt{2}$
- Apply the doubling recurrence from $n = 4, 8, 16, \ldots$ to generate
  $a_8, a_{16}, a_{32}, \ldots$
- Key observation: the ratio $a_{2n}/a_n$ equals $\cos(\theta_n/2)$ (via the trig derivation
  from @thm-doubling-recurrence), which by the half-angle identity equals
  $\sqrt{(1 + \cos\theta_n)/2}$ — producing nested square roots when iterated
- Iteration from $\theta_4 = \pi/4$ (so $\cos\theta_4 = \sqrt{2}/2$):
  $\sqrt{2+\sqrt{2}}/2, \sqrt{2+\sqrt{2+\sqrt{2}}}/2, \ldots$
- Telescope: $\lim_{k \to \infty} a_{4 \cdot 2^k} = a_4 \cdot \prod_{j \geq 0} (a_{4 \cdot 2^{j+1}}/a_{4 \cdot 2^j}) = \pi$
- Rearrange (the first $\sqrt{2}/2$ factor absorbs the $a_4 = 2\sqrt{2}$ normalization,
  and flipping to $2/\pi$ on the left):
- **thm-viete-formula**:
  $$\frac{2}{\pi} = \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{2+\sqrt{2}}}{2} \cdot \frac{\sqrt{2+\sqrt{2+\sqrt{2}}}}{2} \cdots$$
  - Proof deferred to guided exercise
- Historical remark (prose): Viète (1593) — first known infinite product for π, predating
  Wallis and the analytic era; an instance of a pre-calculus result that previewed the
  coming century's techniques

### §4.5.6 Guided Exercises

This section bundles the trig-heavy computations deferred from the main text. Each uses
`def-trig`, `prp-pythagorean-identity`, and `prp-angle-addition` from §1.5.

**Exercise: The Doubling Recurrence** — proof of @thm-doubling-recurrence.
- (a) Set $\theta_n = \pi/n$; show $a_n = n \sin\theta_n$, $b_n = n \tan\theta_n$
- (b) From angle-addition derive $\sin(2\alpha) = 2\sin\alpha\cos\alpha$ and
  $\cos(2\alpha) = 2\cos^2\alpha - 1$; then derive $\tan(\theta/2) = \sin\theta/(1 + \cos\theta)$
- (c) Apply $\theta_{2n} = \theta_n/2$ to get $b_{2n} = 2 a_n b_n / (a_n + b_n)$
- (d) Show $a_{2n} = \sqrt{a_n \cdot b_{2n}}$
- *Flag to self: §1.5 currently has `prp-pythagorean-identity` and `prp-angle-addition`;
  double-angle and half-angle tangent identities are **not yet there** — either add to §1.5
  or make part (b) self-contained with an in-exercise derivation. Best choice: add them as
  a `prp-double-angle` in §1.5 (via exercise) since they're useful everywhere.*

**Exercise: Starting the Recurrence from the Hexagon** — verify $a_6 = 3$, $b_6 = 2\sqrt{3}$.
- Geometric observation: inscribed hexagon decomposes into 6 equilateral triangles of side 1
- Circumscribed hexagon: compute via apothem, $b_6 = 2\sqrt{3}$
- Run one step of @thm-doubling-recurrence to produce $(a_{12}, b_{12})$

**Exercise: Circumference of a Radius-$r$ Circle** — proof of @thm-circumference.
- Scale every inscribed polygon of the unit circle by factor $r$; sides scale by $r$
- Half-perimeter sequence becomes $r \cdot a_n \to r \pi$ by @thm-pi-exists
- Full circumference: $2 \pi r$
- Remark: underlying general principle — curve length is linear under homothety

**Exercise: Viète's Product** — proof of @thm-viete-formula.
- (a) Start from inscribed 4-gon ($a_4 = 2\sqrt{2}$, $\theta_4 = \pi/4$); use the half-angle
  cosine identity to show $a_{2n}/a_n = \cos(\theta_n/2) = \sqrt{(1 + \cos\theta_n)/2}$
- (b) Iterate from $\cos(\pi/4) = \sqrt{2}/2$ to generate the nested radicals
- (c) Telescope: $\pi = \lim a_{4 \cdot 2^k} = 2\sqrt{2} \cdot \prod_k (a_{4 \cdot 2^{k+1}}/a_{4 \cdot 2^k})$
- (d) Rearrange to the stated form

**Exercise: Archimedes' 96-gon Bounds** — proof of @prp-archimedes-bounds.
- Accept $265/153 < \sqrt{3} < 1351/780$ as rational bounds for $\sqrt{3}$
- From $(a_6, b_6) = (3, 2\sqrt{3})$, apply @thm-doubling-recurrence four times, using
  rational bounds in place of exact roots to propagate errors carefully
- Verify the resulting rational bounds yield $3\tfrac{10}{71} < \pi < 3\tfrac{1}{7}$

**Exercise: The Pell-Adjacent $\sqrt{3}$ Observation (optional)** — cross-reference to §4.4's
guided exercise on $\sqrt{3} = [1; \overline{1,2}]$.
- Connect $b_6 = 2\sqrt{3}$ to the convergents of $\sqrt{3}$'s continued fraction
- Ask students to compare Archimedes' bound $265/153 < \sqrt{3} < 1351/780$ to early convergents
- Observation: the continued-fraction machinery of §4.4 is exactly what gives optimal
  rational approximations of $\sqrt{3}$ — Archimedes was effectively inventing this

---

### Exercises

*Archimedes' Method*
- Verify $a_6 = 3$ and $b_6 = 2\sqrt{3}$ directly (no recurrence)
- Apply @thm-doubling-recurrence 4 times from $(a_6, b_6)$ to get $(a_{96}, b_{96})$;
  compare to $3\tfrac{10}{71} < \pi < 3\tfrac{1}{7}$
- Monotonicity via geometry: give a direct geometric argument (using
  @def-archimedes-postulate) that $a_n < a_{2n}$ and $b_{2n} < b_n$; compare with the
  algebraic proof of @lem-perimeter-monotonicity
- Rate of convergence: show $b_n - a_n = O(1/n^2)$ as $n \to \infty$ (hint: Taylor
  expansion, or inequalities $\theta - \theta^3/6 < \sin\theta < \theta$ and
  $\theta < \tan\theta < \theta + \theta^3$ for small $\theta$)

*The Existence and Value of π*
- Rerun the existence argument starting from the inscribed square — does the limit change?
- One-sided area: show that taking only the sup of inscribed polygonal areas also gives π
  (historically the first definition; Jordan's refinement adds the outer match)
- Sector areas: adapt @thm-area-exists-equals-pi to show a circular sector of angle
  $\theta$ (radians) has area $\theta/2$

*Further Identities*
- Wallis's product (preview, no proof): $\frac{\pi}{2} = \frac{2}{1} \cdot \frac{2}{3} \cdot
  \frac{4}{3} \cdot \frac{4}{5} \cdot \frac{6}{5} \cdot \frac{6}{7} \cdots$;
  verify numerically the first 10 partial products bracket $\pi/2$; full proof awaits
  integration theory
- Leibniz–Gregory (preview, no proof): $\pi/4 = 1 - 1/3 + 1/5 - 1/7 + \cdots$;
  compute partial sums, observe slow convergence, contrast with Archimedes' quadratic rate

### Dependencies

*From Chapter 1 (The Real Line)*

- @def-curve-length (§1.5): **central** — anchors @def-pi and @thm-pi-exists
- @def-area (§1.5): **central** — anchors @thm-area-exists-equals-pi
- @def-trig (§1.5): unit-circle definition of sine and cosine
- @prp-pythagorean-identity (§1.5)
- @prp-angle-addition (§1.5)
- **FLAG**: double-angle identities (sine, cosine) and half-angle tangent identity are
  needed in the guided exercises but are **not yet** in §1.5. Action item: add them to §1.5
  as a `prp-double-angle` block (or a pair: `prp-double-angle` and `prp-half-angle`),
  ideally with the proof as a §1.5 exercise (they follow immediately from `prp-angle-addition`).

*From Chapter 2 (Sequences)*

- Supremum/infimum of bounded sequences
- @thm-mct (Monotone Convergence Theorem): central to @prp-perimeters-share-limit and
  @prp-polygon-areas-share-limit

*From Chapter 4 (Earlier Sections)*

- §4.1 squeeze theorem (used implicitly whenever two bounding sequences share a limit)
- §4.2 @prp-viete-convergence: convergence of the Viète product (reused in @thm-viete-formula)
- §4.4 continued fractions: not a dependency, but §4.4's $\sqrt{3} = [1; \overline{1,2}]$
  guided exercise connects to the optional Pell-adjacent exercise here

*Forward Dependencies (used in...)*

- Later chapters using π explicitly: integration (series/integrals), Fourier, complex analysis
- Ch 5 (series): Wallis, Leibniz–Gregory, Machin-like series will appear there; their
  identification of specific values as π rests on the existence of π established here
- Historical/narrative continuation: Ch 9 returns to Archimedes' Postulate 2 to prove it
  rigorously from `def-curve-length`
