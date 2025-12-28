## Best Approximation


**Best Approximation in $L^2$**

- Given $f \in L^2$ and subspace $V$, find $g \in V$ minimizing $\|f - g\|_2$
- Theorem: unique best approximation exists; it's the orthogonal projection
- Characterization: $f - g \perp V$

**The Projection Formula**

- If $\{\phi_1, \ldots, \phi_n\}$ orthonormal:
$$g = \sum_{k=1}^n \langle f, \phi_k \rangle \phi_k$$
- Coefficients: $c_k = \langle f, \phi_k \rangle$
- This is linear algebra in function spaces

**Concrete Example: Best Cubic Approximation to $e^x$ on $[-1,1]$**

- Goal: find cubic $p(x)$ minimizing $\int_{-1}^1 |e^x - p(x)|^2\, dx$
- Step 1: Start with $\{1, x, x^2, x^3\}$
- Step 2: Apply Gram-Schmidt to get orthonormal $\{\phi_0, \phi_1, \phi_2, \phi_3\}$
  - $\phi_0 = \frac{1}{\sqrt{2}}$
  - $\phi_1 = \sqrt{\frac{3}{2}} x$
  - $\phi_2, \phi_3$: messier but computable
- Step 3: Compute $c_k = \int_{-1}^1 e^x \phi_k(x)\, dx$
- Step 4: Best cubic is $\sum_{k=0}^3 c_k \phi_k$
- Explicit answer (can verify numerically)

**From Finite to Infinite**

- What if we don't stop at degree 3?
- Orthonormal sequence $\{\phi_1, \phi_2, \ldots\}$
- Partial sums: $S_N f = \sum_{k=1}^N \langle f, \phi_k \rangle \phi_k$

**Bessel's Inequality**

- $\sum_{k=1}^\infty |\langle f, \phi_k \rangle|^2 \leq \|f\|_2^2$
- Proof: $\|f - S_N f\|^2 \geq 0$, expand and rearrange
- Coefficients can't be too big

**Parseval's Identity**

- If $\{\phi_k\}$ is complete (spans $L^2$):
$$\sum_{k=1}^\infty |\langle f, \phi_k \rangle|^2 = \|f\|_2^2$$
- Bessel becomes equality
- $L^2$ convergence: $\|f - S_N f\|_2 \to 0$

**Density Implies Completeness**

- If finite linear combinations of $\{\phi_k\}$ are dense in $L^2$, Parseval holds
- Connects to Stone-Weierstrass (Ch 12)
