## Pointwise Convergence


**The Question**

- We have $L^2$ convergence: $\|f - S_N f\|_2 \to 0$
- Does $S_N f(x) \to f(x)$ for each $x$?

**The Answer: Not Always**

- $L^2$ convergence does NOT imply pointwise convergence
- There exist continuous $f$ whose Fourier series diverges at a point!
- This is subtle and took decades to understand

**Fourier Partial Sums as Convolution**

- $S_N f(x) = \frac{1}{\pi}\int_0^\pi f(t) D_N(x-t)\, dt = (f * D_N)(x)$
- Dirichlet kernel: $D_N(t) = \frac{\sin((N+\frac{1}{2})t)}{\sin(\frac{t}{2})}$

**Why Dirichlet Fails**

- Recall approximate identities (Ch 12): $\phi_\epsilon \geq 0$, $\int \phi_\epsilon = 1$, concentrates at 0
- Dirichlet kernel: $\int D_N = \pi$ ✓, concentrates ✓, but $D_N \not\geq 0$ ✗
- In fact: $\int |D_N| \to \infty$ as $N \to \infty$
- NOT an approximate identity

**The Fejér Kernel**

- Cesàro means: $\sigma_N f = \frac{1}{N+1}(S_0 f + S_1 f + \cdots + S_N f)$
- This is also a convolution: $\sigma_N f = f * F_N$
- Fejér kernel: $F_N(t) = \frac{1}{N+1}\left(\frac{\sin((N+1)t/2)}{\sin(t/2)}\right)^2$
- Key property: $F_N \geq 0$ (it's a square!)
- Also: $\int F_N = \pi$, and $F_N$ concentrates at 0
- Fejér kernel IS an approximate identity


**Fejér's Theorem**

- Theorem: For continuous $f$, $\sigma_N f \to f$ uniformly
- Proof: Apply approximate identity theorem (Ch 12)
- Cesàro averaging "smooths out" the divergence of partial sums

**Corollary: Another Proof of Weierstrass**

- $\sigma_N f$ is a trig polynomial
- $\sigma_N f \to f$ uniformly
- Therefore trig polynomials are dense in $C(\mathbb{T})$

**The Moral**

- Ordinary convergence can fail
- Cesàro summation recovers convergence
- Averaging is powerful

