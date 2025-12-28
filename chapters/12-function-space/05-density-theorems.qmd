## Density Theorems


**The Question**

- $C^\infty$ is dense (12.4). Can even less suffice?
- Are polynomials dense? Trig polynomials?

**Weierstrass Approximation Theorem**

- **Theorem**: Polynomials are dense in $C[a,b]$
- Every continuous function is a uniform limit of polynomials
- Remarkable: polynomials are so rigid (analytic!), yet they approximate everything

**Proof via Bernstein Polynomials**

- $B_n(f)(x) = \sum_{k=0}^n f(k/n) \binom{n}{k} x^k (1-x)^{n-k}$
- Probabilistic interpretation: expected value of $f$ at binomial random variable
- Theorem: $B_n(f) \to f$ uniformly for continuous $f$
- Proof uses law of large numbers flavor

**Stone-Weierstrass: The General Principle**

- **Theorem**: Let $X$ be compact, $A \subset C(X)$ a subalgebra. If:
  1. $A$ separates points
  2. $A$ contains constants
  
  Then $A$ is dense in $C(X)$.

**Corollaries**

- **Polynomials dense in $C[a,b]$**: $f(x) = x$ separates points ✓
- **Trig polynomials dense in $C(\mathbb{T})$**: $e^{ix}$ separates points ✓

**The Narrative**

- 12.4 showed: smooth functions approximate continuous
- 12.5 shows: even polynomials suffice
- **Looking ahead**: Fourier gives EXPLICIT approximations (Ch 13)
