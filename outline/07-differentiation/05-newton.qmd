## §7.5 Newton's Method

### Narrative

- Newton's method connects differentiation back to the iteration and contraction ideas of Chapter 4
- The algorithm is simple: follow the tangent line to the x-axis, repeat
- Convergence follows from contraction (§4.3); the rate is quadratic, explained by Taylor (§7.3)
- The Babylonian method from Chapter 2 is a special case — the story comes full circle

### Content

### The Algorithm
- Problem: find a root of f(x) = 0
- Newton iteration: x_{n+1} = x_n - f(x_n)/f'(x_n)
- Geometric interpretation: follow the tangent line at (x_n, f(x_n)) to the x-axis

### Convergence via Contraction
- Define g(x) = x - f(x)/f'(x); fixed points of g are roots of f
- Compute: g'(x) = f(x)f''(x)/(f'(x))²
- At a simple root r: g'(r) = 0
- Theorem: for x₀ sufficiently close to r, Newton's method converges (prove in text: g'(r) = 0 implies |g'| < 1 near r, so g is a contraction; callback to §4.3)

### Quadratic Convergence via Taylor
- Theorem: ε_{n+1} ≈ [f''(r)/(2f'(r))] εₙ² (prove in text: Taylor expand f(xₙ) around r)
- Consequence: errors square at each step — the number of correct digits roughly doubles each iteration

### Examples
- √2: x_{n+1} = (xₙ + 2/xₙ)/2 — the Babylonian method! (callback to ch2)
- ∛5: x_{n+1} = (2xₙ + 5/xₙ²)/3

### Failure Modes
- Multiple roots: g'(r) ≠ 0, convergence only linear
- Bad starting points: iteration may cycle, diverge, or find the wrong root
- f'(xₙ) = 0: division by zero

- Remark: Newton's method is fixed-point iteration x_{n+1} = g(xₙ). The same idea in function space — Picard iteration — solves differential equations; the contraction mapping theorem (§4.3) guarantees convergence in both settings.

### Guided Exercise

### Division by Multiplication

Apply Newton's method to f(x) = 1/x - a (for fixed a > 0).

(a) Derive the iteration x_{n+1} = xₙ(2 - axₙ).

(b) Show this computes 1/a using only multiplication and subtraction — no division.

(c) Prove convergence for suitable starting x₀.

(d) Demonstrate quadratic convergence numerically for a specific value of a.

(e) Remark: this is how computers actually perform division — they implement multiplication in hardware and use Newton's method for reciprocals.

### Exercises

- Apply Newton's method to find $\sqrt[4]{7}$
- What happens applying Newton to $f(x) = x^3$ starting at $x_0 = 1$? (A failure mode)
- Modified Newton for multiple roots: if $r$ is a root of multiplicity $m$, show the iteration $x_{n+1} = x_n - m \cdot f(x_n)/f'(x_n)$ restores quadratic convergence

### Notes

- We want interesting Newton's method calculations to include as exercises; candidates will open up once trig and log are available (ch8/9). Flag for later: Newton on ln(x) = 1 to compute e efficiently.
- Terminal section: nothing later depends on §7.5.

### Dependencies

**Requires**: §4.3 (contraction mappings), §7.1 (derivative, chain rule), §7.2 (MVT — for bounding g'), §7.3 (Taylor's theorem — for quadratic convergence)

**Used in**: None (terminal section)
