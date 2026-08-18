# The √2 Story

A narrative thread tracking the development of √2 through the text.

---

## Preface

- **Motivation**: The diagonal of a unit square has length √2 — but what *is* √2?
- **The Babylonian iteration**: $x_{n+1} = (x_n + 2/x_n)/2$ — ancient algorithm, converges rapidly
- **The question**: Why does this work? What does it converge *to*?
- **Foreshadowing**: This iteration will be fully justified in Chapter 2

---

## Chapter 1: The Real Numbers

### 1.3 The Incompleteness of ℚ

- **Theorem**: There is no rational number whose square is 2
- **Proof**: Classic parity argument (if $p^2 = 2q^2$ in lowest terms, both $p, q$ must be even — contradiction)
- **Consequence**: The rationals have "gaps" — sequences of rationals can approach something not in ℚ
- **Remark**: The Babylonian sequence consists of rationals, yet converges to something irrational

### 1.4 Completeness

- **Definition**: $\sqrt{2} = \sup\{r \in \QQ : r^2 < 2\}$
- **Theorem**: This supremum exists (by completeness of ℝ)
- **Theorem**: $(\sqrt{2})^2 = 2$ (the sup actually achieves what we want)
- **Remark**: Completeness guarantees √2 exists; now we need to *compute* it

### 1.5 Properties of ℝ

- **Exercise**: Verify $1 < \sqrt{2} < 2$ from the sup definition
- **Exercise**: Prove $\sqrt{2}$ is the unique positive real with $x^2 = 2$

---

## Chapter 2: Limits

### 2.1 Convergence

- **Example**: The Babylonian sequence $x_1 = 2$, $x_{n+1} = (x_n + 2/x_n)/2$
- **Numerical evidence**: $2, 1.5, 1.417, 1.4142157...$  — converging to √2?
- **The question**: How do we *prove* this converges, and to √2?

### 2.2 Limit Laws

- **The Pell equation**: Integers $p_n, q_n$ satisfying $p_n^2 - 2q_n^2 = \pm 1$
- **Theorem**: If $p_n^2 = 2q_n^2 \pm 1$ and $q_n \to \infty$, then $p_n/q_n \to \sqrt{2}$
- **Proof**: $(p_n/q_n)^2 = 2 \pm 1/q_n^2 \to 2$; apply square root limit law
- **Remark**: This proves convergence *using* the limit laws, but requires knowing Pell solutions exist
- **Comparison table**: √2 vs π — begins tracking parallel development

### 2.3 Monotone Convergence

- **Theorem (Babylonian via MCT)**: The Babylonian sequence converges to √2
- **Proof**:
  1. $x_n \geq \sqrt{2}$ for $n \geq 2$ (AM-GM: $(x_n + 2/x_n)/2 \geq \sqrt{2}$)
  2. $x_n$ is decreasing for $n \geq 2$ (since $x_n \geq \sqrt{2}$ implies $x_{n+1} \leq x_n$)
  3. MCT → converges to some $L \geq \sqrt{2}$
  4. Taking limits: $L = (L + 2/L)/2$ → $L^2 = 2$ → $L = \sqrt{2}$
- **Remark**: Compare to Pell proof — MCT is simpler, doesn't require knowing Pell solutions
- **Remark**: MCT fails in ℚ — the sequence $1, 1.4, 1.41, 1.414, ...$ has no rational limit

### 2.4 Infinite Processes

- **Recursive Sequence Operation Manual**: Applied to Babylonian as paradigm example
- **Comparison**: √2 (single sequence) vs π (coupled sequences) vs φ (nested radical)

### 2.5 Representing Real Numbers

- **Theorem**: $\sqrt{2} = [1; \overline{2}] = [1; 2, 2, 2, ...]$ (periodic continued fraction)
- **Proof**: Compute $a_0 = 1$, $x_1 = 1/(\sqrt{2}-1) = \sqrt{2}+1$, $a_1 = 2$, pattern repeats
- **Theorem**: Convergents $1/1, 3/2, 7/5, 17/12, 41/29, ...$ are exactly the Pell solutions!
- **Proof**: Key identity $p_n q_{n-1} - p_{n-1} q_n = (-1)^{n-1}$ gives $p_n^2 - 2q_n^2 = (-1)^n$
- **The Full Circle**: 
  - Ch 1: Defined √2 as sup
  - Ch 2.2: Pell convergents approach √2
  - Ch 2.3: Babylonian converges via MCT  
  - Ch 2.5: CF explains *why* Pell works — convergents of √2!
- **Theorem (Lagrange)**: Quadratic irrationals ↔ eventually periodic CFs
- **Remark**: √2 has the simplest periodic CF: period 1, repeating digit 2

---

## Chapter 3: Detecting Convergence

### 3.4 Contraction Mappings

- **Theorem**: Babylonian has *quadratic* convergence (even better than contraction!)
- **Formula**: $x_{n+1} - \sqrt{2} = (x_n - \sqrt{2})^2 / (2x_n)$
- **Proof**: Direct algebraic verification
- **Consequence**: Error squares each step — doubles correct digits per iteration
- **Numerical**: Starting from $x_0 = 2$:
  - $|x_1 - \sqrt{2}| \approx 0.086$
  - $|x_2 - \sqrt{2}| \approx 0.003$
  - $|x_3 - \sqrt{2}| \approx 0.000003$
  - $|x_4 - \sqrt{2}| \approx 10^{-12}$
- **Comparison**: Babylonian (quadratic) vs Pell convergents (linear) vs Archimedes for π (linear)

---

## Later Chapters (Planned)

### Chapter 5: Continuity

- **Application**: $f(x) = x^2$ is continuous, so $x_n \to L$ implies $x_n^2 \to L^2$
- **Remark**: This justifies the square root limit law used in 2.2

### Chapter 6: Differentiation

- **Newton's method**: Babylonian is Newton's method for $f(x) = x^2 - 2$
- **General Newton**: $x_{n+1} = x_n - f(x_n)/f'(x_n)$
- **Theorem**: Newton's method has quadratic convergence (when $f'(L) \neq 0$)
- **Remark**: Explains why Babylonian is quadratic — special case of general principle

### Chapter 7: Integration

- **Formula**: $\sqrt{2} = \int_0^1 \frac{dx}{\sqrt{1 - x^2/2}}$ (related to arcsine)

### Power Series Chapter

- **Binomial series**: $(1 + x)^{1/2} = 1 + x/2 - x^2/8 + ...$
- **Application**: $\sqrt{2} = \sqrt{1 + 1} = 1 + 1/2 - 1/8 + 1/16 - ...$ (slowly convergent)

---

## Summary: The √2 Trajectory

| Chapter | Key Development |
|---------|-----------------|
| Preface | Babylonian iteration introduced |
| 1.3 | √2 is irrational |
| 1.4 | √2 exists (completeness) |
| 2.2 | Pell equation approach |
| 2.3 | MCT proof of Babylonian |
| 2.5 | CF = $[1;\overline{2}]$, explains Pell |
| 3.4 | Quadratic convergence rate |
| 6 | Newton's method connection |

---

## Key Themes

1. **Multiple proofs**: Babylonian convergence proved via Pell (2.2), MCT (2.3), and Newton (6)
2. **Completeness is essential**: √2 exists because ℝ is complete; sequence converges for same reason
3. **Algebraic structure**: Pell equation, continued fractions, quadratic irrationals
4. **Convergence rates**: Quadratic convergence is exceptionally fast
5. **Historical continuity**: Babylonians → Greeks → modern analysis
