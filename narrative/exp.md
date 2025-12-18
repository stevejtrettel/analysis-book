# The Exponential Story

A narrative thread tracking the development of $e$ and exponential functions through the text.

---

## Preface

- **Motivation**: Compound interest — what happens as compounding becomes continuous?
- **The sequence**: $(1 + 1/n)^n$ for $n = 1, 2, 3, ...$
- **Numerical evidence**: $2, 2.25, 2.37, 2.44, ... \to 2.71828...$
- **The question**: Does this converge? To what?
- **Foreshadowing**: This defines a fundamental constant $e$, the base of natural logarithms

---

## Chapter 1: The Real Numbers

### 1.5 Properties of ℝ

- **Definition (provisional)**: For $a > 0$ and $x \in \RR$, define $a^x$ as:
  - $a^x = \sup\{a^r : r \in \QQ, r < x\}$ when $a > 1$
  - $a^x = \inf\{a^r : r \in \QQ, r < x\}$ when $0 < a < 1$
- **Remark**: This extends exponentiation from rationals to all reals
- **The question**: Is this the "right" definition? Does it agree with limits?

---

## Chapter 2: Limits

### 2.3 Monotone Convergence

- **Theorem**: $(1 + 1/n)^n$ is increasing
- **Proof**: Bernoulli's inequality or AM-GM argument
- **Theorem**: $(1 + 1/n)^n < 3$ for all $n$
- **Proof**: Binomial expansion + bound $k! \geq 2^{k-1}$
- **Corollary (MCT)**: $(1 + 1/n)^n$ converges to some limit $\leq 3$

- **Definition**: $e = \lim_{n \to \infty} (1 + 1/n)^n$

- **Theorem**: $(1 + 1/n)^{n+1}$ is decreasing
- **Theorem**: Both $(1 + 1/n)^n$ and $(1 + 1/n)^{n+1}$ converge to $e$
- **Proof**: Gap $(1+1/n)^{n+1} - (1+1/n)^n = (1+1/n)^n \cdot (1/n) \to 0$
- **Nested intervals**: $\{e\} = \bigcap_n [(1+1/n)^n, (1+1/n)^{n+1}]$
- **Numerical bounds**: $2.5 < e < 3$ (crude); $2.71 < e < 2.72$ (better)

- **Theorem**: Exponentials as limits agree with sup definition
- **Statement**: If $r_n \to x$ (rationals), then $a^{r_n} \to a^x$
- **Significance**: The Ch 1 sup definition and the limit definition coincide

### 2.5 Representing Real Numbers

- **Theorem**: $e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8, ...]$
- **Pattern**: $[2; \overline{1, 2k, 1}]$ for $k = 1, 2, 3, ...$
- **Remark**: Proof requires integration — see Chapter 7
- **Contrast**: 
  - √2 = $[1; \overline{2}]$ — period 1
  - φ = $[1; \overline{1}]$ — period 1
  - e = $[2; 1, 2, 1, 1, 4, ...]$ — pattern but not periodic
  - π = $[3; 7, 15, 1, 292, ...]$ — no pattern at all
- **Significance**: e is transcendental but has a beautiful CF; π is transcendental with chaotic CF

---

## Chapter 4: Exchanging Limits

### 4.5 Dominated Convergence (Tannery)

- **The Big Theorem**: $(1 + x/n)^n = \sum_{k=0}^\infty \frac{x^k}{k!}$ for all $x \in \RR$

- **Proof outline**:
  1. Binomial expansion: $(1 + x/n)^n = \sum_{k=0}^n \binom{n}{k} \frac{x^k}{n^k}$
  2. Write $a_k(n) = \binom{n}{k} \frac{x^k}{n^k}$ for $k \leq n$, and $0$ for $k > n$
  3. For fixed $k$: $\lim_n a_k(n) = \frac{x^k}{k!}$ (since $\frac{n(n-1)...(n-k+1)}{n^k} \to 1$)
  4. Domination: $|a_k(n)| \leq \frac{|x|^k}{k!} = M_k$ with $\sum M_k = e^{|x|} < \infty$
  5. Tannery: $\lim_n \sum_k a_k(n) = \sum_k \lim_n a_k(n) = \sum_{k=0}^\infty \frac{x^k}{k!}$

- **Corollary**: $e = \sum_{k=0}^\infty \frac{1}{k!} = 1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + ...$

- **Corollary**: The compound interest limit equals the series definition

- **Remark**: This is a major triumph — two very different-looking definitions of $e$ coincide

---

## Chapter 5: Continuity (Planned)

### Continuity of Exponentials

- **Theorem**: $f(x) = a^x$ is continuous on $\RR$ for $a > 0$
- **Proof**: Uses sequential characterization + limit laws
- **Corollary**: $e^x$ is continuous

### The Natural Exponential

- **Definition**: $\exp(x) = e^x = \sum_{k=0}^\infty \frac{x^k}{k!}$
- **Remark**: Power series defines $\exp$ directly; $e = \exp(1)$

---

## Chapter 6: Differentiation (Planned)

### The Derivative of exp

- **Theorem**: $\frac{d}{dx} e^x = e^x$
- **Proof**: Differentiate power series term by term (justified in power series chapter)
- **Remark**: This is *the* characterizing property of $e^x$

- **Theorem**: $e^x$ is the unique function with $f'(x) = f(x)$ and $f(0) = 1$

### The Functional Equation

- **Theorem**: $e^{x+y} = e^x \cdot e^y$
- **Proof 1**: Cauchy product of power series (from Ch 4)
- **Proof 2**: Both sides satisfy same ODE with same initial conditions

### Why e is Natural

- **Theorem**: $\frac{d}{dx} a^x = a^x \ln a$
- **Corollary**: The derivative equals the function only when $a = e$
- **Remark**: This explains why $e$ is the "natural" base — simplest calculus

---

## Chapter 7: Integration (Planned)

### The Natural Logarithm

- **Definition**: $\ln x = \int_1^x \frac{1}{t} \, dt$ for $x > 0$
- **Theorem**: $\ln$ and $\exp$ are inverses
- **Theorem**: $\ln(xy) = \ln x + \ln y$
- **Proof**: Differentiate both sides

### e as an Integral

- **Theorem**: $e$ is the unique number with $\int_1^e \frac{1}{t} \, dt = 1$
- **Remark**: Yet another definition of $e$!

### Proof of e's Continued Fraction

- **The integrals**: $I_n = \int_0^1 \frac{x^n(1-x)^n}{n!} e^x \, dx$
- **Properties**:
  1. $I_n > 0$
  2. $I_n \to 0$ (bounded by $(1/4)^n e / n!$)
  3. Recurrence gives CF partial quotients
  4. $I_n = q_n e - p_n$ for integers $p_n, q_n$
- **Conclusion**: Convergents $p_n/q_n \to e$ with pattern $[2; 1, 2k, 1]$

---

## Irrationality and Transcendence (Planned)

### Irrationality of e

- **Theorem**: $e$ is irrational
- **Proof**: Consider $S_n = n!(e - \sum_{k=0}^n 1/k!)$
  - If $e = p/q$, then $S_n \in \ZZ$ for $n \geq q$
  - But $0 < S_n < 1/n < 1$ for large $n$
  - Contradiction: no integer in $(0, 1)$
- **Remark**: One of the cleanest irrationality proofs in mathematics

### Transcendence of e

- **Theorem (Hermite, 1873)**: $e$ is transcendental
- **Significance**: $e$ is not a root of any polynomial with integer coefficients
- **Method**: Elaborate integral construction (guided project)
- **Contrast**: √2 is algebraic; $e$ and π are transcendental

### Irrationality of $e^r$

- **Theorem**: $e^r$ is irrational for nonzero rational $r$
- **Corollary**: $\ln 2$, $\ln 3$, etc. are irrational

---

## Summary: The Exponential Trajectory

| Chapter | Key Development |
|---------|-----------------|
| Preface | Compound interest motivation |
| 1.5 | $a^x$ defined via sup |
| 2.3 | $(1+1/n)^n$ converges; **define $e$** |
| 2.5 | CF = $[2; 1, 2, 1, 1, 4, ...]$ (stated) |
| 4.5 | Tannery: $(1+x/n)^n = \sum x^k/k!$ |
| 5 | Continuity of $e^x$ |
| 6 | $(e^x)' = e^x$; functional equation |
| 7 | $\ln x = \int_1^x 1/t \, dt$; CF proof |
| Later | Irrationality; transcendence |

---

## Key Themes

1. **Multiple equivalent definitions**:
   - Compound interest limit: $e = \lim (1+1/n)^n$
   - Series: $e = \sum 1/k!$
   - Integral: unique $e$ with $\int_1^e 1/t \, dt = 1$
   - Differential equation: $f' = f$, $f(0) = 1$

2. **Tannery as bridge**: Connects limit definition to series definition

3. **Why "natural"**: $e^x$ is its own derivative — simplest calculus

4. **Continued fraction mystery**: $e$ has a pattern; π does not. Why?

5. **Transcendence hierarchy**: 
   - √2: algebraic, periodic CF
   - φ: algebraic, periodic CF
   - $e$: transcendental, patterned CF
   - π: transcendental, chaotic CF

6. **Historical development**: Bernoulli (compound interest) → Euler (series) → Hermite (transcendence)

---

## Connections to Other Stories

### Link to √2:
- Both defined via limits
- Both use MCT for convergence
- √2 is algebraic; $e$ is transcendental

### Link to π:
- Both transcendental
- $e$ has patterned CF; π does not
- Both have elegant irrationality proofs via integrals
- Euler's identity: $e^{i\pi} + 1 = 0$ (complex analysis chapter)

### Link to sin/cos:
- $e^{ix} = \cos x + i \sin x$ (Euler's formula)
- Power series for $e^x$ specializes to sin, cos when $x$ imaginary
