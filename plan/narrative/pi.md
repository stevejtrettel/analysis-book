# The π Story

A narrative thread tracking the development of π through the text.

---

## Preface

- **Motivation**: The circumference of a circle is proportional to its diameter — but what is the constant?
- **Archimedes' method**: Inscribe and circumscribe regular polygons; perimeters bound the circumference
- **The doubling recurrence**: Given $n$-gon values, compute $2n$-gon values via harmonic and geometric means
- **Numerical evidence**: Hexagon → 12-gon → 24-gon → ... gives $3.14159...$
- **The question**: Do these sequences converge? To the same limit? What *is* this limit?
- **Foreshadowing**: This will be fully resolved in Chapter 2, with rates analyzed in Chapter 3

---

## Chapter 2: Limits

### 2.1 Convergence

- **Definition**: For unit circle, define:
  - $a_n$ = half-perimeter of inscribed regular $n$-gon
  - $b_n$ = half-perimeter of circumscribed regular $n$-gon
- **Starting values**: $a_6 = 3$, $b_6 = 2\sqrt{3} \approx 3.464$
- **Geometric fact**: $a_n < (\text{half-circumference}) < b_n$
- **Immediate bound**: $3 < \pi < 3.465$ from hexagon alone
- **The doubling recurrence** (stated):
  - $b_{2n} = H(a_n, b_n) = \frac{2a_n b_n}{a_n + b_n}$ (harmonic mean)
  - $a_{2n} = G(a_n, b_{2n}) = \sqrt{a_n \cdot b_{2n}}$ (geometric mean)
- **Remark**: This is a *coupled* sequence — each depends on both previous values
- **Exercises**: Derive recurrences via trig identities; compute $a_{12}, b_{12}, a_{24}, b_{24}$

### 2.2 Limit Laws

- **Comparison table introduced**: √2 vs π
  - √2: single sequence, Pell equation
  - π: coupled sequences, HG means
- **Remark**: Limit laws alone cannot prove these sequences converge — need MCT

### 2.3 Monotone Convergence

- **Definitions**: Arithmetic, geometric, harmonic means
- **Theorem (AM-GM-HM inequality)**: $H(a,b) \leq G(a,b) \leq A(a,b)$ with equality iff $a = b$
- **Corollary**: If $a < b$, then $a < H(a,b) < G(a,b) < A(a,b) < b$
- **Theorem**: $(a_n)$ is increasing along doubling subsequence
  - Proof: $a_{2n} = \sqrt{a_n \cdot b_{2n}} > \sqrt{a_n \cdot a_n} = a_n$ since $b_{2n} > a_n$
- **Theorem**: $(b_n)$ is decreasing along doubling subsequence
  - Proof: $b_{2n} = H(a_n, b_n) < b_n$ since harmonic mean $<$ larger input
- **Theorem**: $a_n < b_n$ for all $n$ (by induction using means-lie-between)
- **Corollary (MCT)**: Both sequences converge
  - $(a_n)$ increasing, bounded above by $b_6$ → converges to some $L_a$
  - $(b_n)$ decreasing, bounded below by $a_6$ → converges to some $L_b$
- **Area fact**: $B_n = b_n$ exactly (circumscribed area = circumscribed half-perimeter)
- **Looking ahead**: We have $L_a \leq L_b$. Are they equal? Resolved in 2.4!

### 2.4 Infinite Processes

- **Technique**: To prove two sequences have the same limit, show their ratio → 1
- **Definition**: $r_n = a_n/b_n \in (0, 1)$
- **Lemma**: $r_{2n} = g(r_n)$ where $g(r) = \sqrt{(r+1)/2}$
- **Proof**:
  $$\frac{a_n}{b_{2n}} = \frac{a_n(a_n + b_n)}{2a_n b_n} = \frac{r_n + 1}{2}$$
  $$r_{2n} = \sqrt{\frac{a_n}{b_{2n}}} = \sqrt{\frac{r_n + 1}{2}}$$
- **Apply Recursive Sequence Operation Manual**:
  1. Bounded: $r_n < 1$ (since $a_n < b_n$) ✓
  2. Monotone: $r_{n+1} > r_n$ iff $(r_n+1)/2 > r_n^2$ iff $(2r_n+1)(r_n-1) < 0$ ✓
  3. MCT → $r_n \to L$ for some $L \leq 1$
  4. Taking limits: $L = \sqrt{(L+1)/2}$, so $2L^2 = L + 1$
  5. Solve: $(2L+1)(L-1) = 0$ → $L = 1$ (since $L > 0$)
- **Conclusion**: $r_n = a_n/b_n \to 1$, so $L_a = L_b$

- **Definition**: The number $\pi$ is the common limit:
  $$\pi = \lim_{n \to \infty} a_n = \lim_{n \to \infty} b_n$$

- **Corollaries**:
  1. $a_n < \pi < b_n$ for all $n$ (rigorous error bounds!)
  2. Circumference of unit circle is $2\pi$
  3. Area of unit circle is $\pi$ (since $B_n = b_n \to \pi$)
  4. **Archimedes' Theorem**: Area $= \frac{1}{2} \times$ Circumference $\times$ Radius

- **Complete comparison table**: √2 vs π
  | Aspect | √2 | π |
  |--------|-----|---|
  | Definition | $\sup\{r : r^2 < 2\}$ | $\lim a_n = \lim b_n$ |
  | Sequence type | Single | Coupled |
  | MCT proof | Monotone + bounded | Ratio trick |
  | Error bounds | From Pell | From geometry |
  | Nature | Algebraic | Transcendental |

### 2.5 Representing Real Numbers

- **Remark (The Mystery of π)**: The continued fraction of π has **no known pattern**:
  $$\pi = [3; 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14, ...]$$
- **Contrast**: √2 = $[1; \overline{2}]$, $\phi = [1; \overline{1}]$, $e = [2; 1, 2, 1, 1, 4, ...]$
- **The famous 292**: Gives approximation $355/113 \approx 3.1415929$ (6 decimal places!)
- **Remark**: Despite computing millions of partial quotients, no pattern found
- **Philosophical**: π's CF looks like a "random" real number — deep mystery

---

## Chapter 3: Detecting Convergence

### 3.4 Contraction Mappings

- **Theorem**: The iteration $g(r) = \sqrt{(r+1)/2}$ is a contraction with constant $c = \frac{1}{2\sqrt{2}} \approx 0.354$
- **Proof**: 
  $$|g(r) - g(s)| = \frac{|r-s|/2}{\sqrt{(r+1)/2} + \sqrt{(s+1)/2}} \leq \frac{|r-s|}{2\sqrt{2}}$$
- **Corollary**: $|r_n - 1| \leq c^n |r_0 - 1|$
- **Comparing error bounds**:
  | Source | Bound |
  |--------|-------|
  | Geometric (2.4) | $a_n < \pi < b_n$, error $< b_n - a_n$ |
  | Contraction (3.4) | $\|r_n - 1\| \leq c^n \|r_0 - 1\|$ |
- **For $n = 96$ (Archimedes' stopping point)**:
  - Geometric: $b_{96} - a_{96} \approx 0.0017$
  - Contraction on ratio: $|r_{96} - 1| < 10^{-20}$
- **Remark**: Contraction bound is on ratio, not directly on π; geometric bounds give direct intervals
- **Contrast with √2**: Babylonian has *quadratic* convergence; Archimedes is only linear

---

## Later Chapters (Planned)

### Chapter 5: Continuity

- **Application**: Continuity of trig functions justifies $a_n = n\sin(\pi/n) \to \pi$

### Chapter 6: Differentiation

- **L'Hôpital**: $\lim_{x \to 0} \frac{\sin x}{x} = 1$ — connects to $a_n/n \to \pi/n \cdot n/\sin(\pi/n)$

### Chapter 7: Integration

- **Definition (integral)**: $\pi = \int_{-1}^{1} \sqrt{1-x^2} \, dx \cdot 2$ (area of unit circle)
- **Theorem**: Integral definition agrees with Archimedes polygon definition
- **Arc length**: Circumference $= \int_0^{2\pi} \sqrt{(\cos t)^2 + (\sin t)^2} \, dt = 2\pi$
- **Connection**: Integration justifies what Archimedes did geometrically

### Chapter 7+: Integration Applications

- **Theorem**: $e$'s continued fraction $[2; 1, 2, 1, 1, 4, 1, 1, 6, ...]$
- **Proof**: Via integrals $I_n = \int_0^1 \frac{x^n(1-x)^n}{n!} e^x \, dx$
- **Remark**: No such integral proof known for π's CF — part of the mystery!

### Power Series / Trig Functions Chapter

- **Gregory-Leibniz**: $\frac{\pi}{4} = 1 - \frac{1}{3} + \frac{1}{5} - \frac{1}{7} + ...$
- **Proof**: Integrate $\frac{1}{1+x^2} = 1 - x^2 + x^4 - ...$ from 0 to 1
- **Machin's formula**: $\frac{\pi}{4} = 4\arctan\frac{1}{5} - \arctan\frac{1}{239}$
- **Remark**: Much faster than Gregory-Leibniz; used historically to compute π

### Transcendence (Appendix or Later)

- **Theorem (Lindemann, 1882)**: π is transcendental
- **Corollary**: Cannot square the circle with compass and straightedge
- **Contrast**: √2 is algebraic (root of $x^2 - 2 = 0$)
- **Connection**: Transcendence explains why π's CF has no pattern (non-algebraic)

### Irrationality Proofs

- **Theorem**: π is irrational (Niven's proof)
- **Proof**: Integral $J_n = \int_0^\pi \frac{x^n(\pi-x)^n}{n!} \sin x \, dx$
- **Parallel to e**: Same structure as e's irrationality proof

---

## Summary: The π Trajectory

| Chapter | Key Development |
|---------|-----------------|
| Preface | Archimedes method introduced |
| 2.1 | Define $a_n$, $b_n$, state recurrences |
| 2.3 | AM-GM-HM; MCT → both converge |
| 2.4 | Ratio trick → same limit; **define π** |
| 2.5 | CF has no pattern (mystery!) |
| 3.4 | Contraction gives rate; compare bounds |
| 7 | Integral definition; agrees with polygons |
| Later | Gregory-Leibniz, Machin, transcendence |

---

## Key Themes

1. **Coupled sequences**: Unlike √2, π requires tracking two sequences simultaneously
2. **Geometric bounds built-in**: $a_n < \pi < b_n$ gives error estimates for free
3. **The ratio trick**: Proving $a_n/b_n \to 1$ is the key insight
4. **Mystery of the CF**: π's continued fraction has no pattern — unlike √2, φ, e
5. **Multiple definitions**: Polygons, area integral, series — all give the same π
6. **Historical depth**: Archimedes (~250 BCE) → Lindemann (1882) → modern algorithms
7. **Transcendence**: π is "more irrational" than √2 — not the root of any polynomial
