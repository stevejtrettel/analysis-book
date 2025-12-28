## Reaching for Infinity

 NOTE TO SELF

 - perhaps we do the periodic case first? (or in parallel)?
 - some things are easier (no worries about compact support)
 - duality is *even cleaner* for fourier
 - is our original kernel for the fourier series proof a periodic one?


**What approximate identities do**

- Recall (Ch 12): $\phi_\epsilon$ with $\int \phi_\epsilon = 1$, $\phi_\epsilon \geq 0$, concentrating at 0
- For each $\epsilon$: $f \mapsto \int \phi_\epsilon(x) f(x)\, dx$ is a linear functional
- As $\epsilon \to 0$: converges to $f \mapsto f(0)$
- The limit is still a linear functional... but not integration against any function

**The key observation**

- Integration against a function: $f \mapsto \int g(x) f(x)\, dx$
- This is a linear functional on test functions
- Not every linear functional arises this way
- But limits of such functionals should still be "something"

**Test functions**

- Definition: $\mathcal{D} = C_c^\infty(\mathbb{R})$ — smooth, compactly supported
- Why smooth? Can integrate by parts freely
- Why compact support? No convergence issues at infinity
- Examples: bump functions
- $\mathcal{D}$ is a vector space

**Convergence in $\mathcal{D}$**

- Definition: $\phi_n \to \phi$ in $\mathcal{D}$ means:
  1. All $\phi_n$ supported in common compact set $K$
  2. $\phi_n^{(k)} \to \phi^{(k)}$ uniformly for all $k \geq 0$
- This is strong convergence — controls all derivatives
- Remark: can build from seminorms $p_{K,k}(f) = \sup_{x \in K} |f^{(k)}(x)|$

**Distributions: the definition**

- A distribution is a continuous linear functional $T: \mathcal{D} \to \mathbb{R}$
- Linear: $T(a\phi + b\psi) = aT(\phi) + bT(\psi)$
- Continuous: $\phi_n \to \phi$ in $\mathcal{D}$ implies $T(\phi_n) \to T(\phi)$
- Notation: write $\langle T, \phi \rangle$ instead of $T(\phi)$
- Space of distributions: $\mathcal{D}'$

**Regular distributions**

- For $g \in L^1_{loc}$: define $T_g$ by $\langle T_g, \phi \rangle = \int g(x)\phi(x)\, dx$
- Check: linear ✓
- Check: continuous (DCT) ✓
- So $T_g$ is a distribution
- Notation: write $\langle g, \phi \rangle = \int g\phi$ — extending integral notation
- Functions "are" distributions (via this embedding)

**The delta distribution**

- Definition: $\langle \delta, \phi \rangle = \phi(0)$
- Linear? $\langle \delta, a\phi + b\psi \rangle = a\phi(0) + b\psi(0)$ ✓
- Continuous? If $\phi_n \to \phi$ uniformly, then $\phi_n(0) \to \phi(0)$ ✓
- Is $\delta = T_g$ for some function $g$?
- **Claim: No.** 
- Proof: Would need $\int g\phi = \phi(0)$ for all $\phi$
- Take $\phi$ with $\phi(0) = 0$ but $\phi \neq 0$: need $\int g\phi = 0$ for all such $\phi$
- This forces $g = 0$ a.e., but then $\int g\phi = 0 \neq \phi(0)$ for $\phi$ with $\phi(0) \neq 0$
- Contradiction. $\delta$ is NOT a function.

**Delta as limit of approximate identities**

- $\langle \phi_\epsilon, \psi \rangle = \int \phi_\epsilon(x) \psi(x)\, dx \to \psi(0) = \langle \delta, \psi \rangle$
- The approximate identities converge to $\delta$ in the sense of distributions
- This is the rigorous meaning of "$\phi_\epsilon \to \delta$"
- We have COMPLETED the space to include this limit

**Convergence of distributions**

- Definition: $T_n \to T$ in $\mathcal{D}'$ means $\langle T_n, \phi \rangle \to \langle T, \phi \rangle$ for all $\phi \in \mathcal{D}$
- This is weak-* convergence (pointwise on test functions)
- Distributions form a complete space in this sense

**Other examples**

- $\delta_a$: $\langle \delta_a, \phi \rangle = \phi(a)$ (delta at point $a$)
- Principal value: $\langle \text{p.v.}\frac{1}{x}, \phi \rangle = \lim_{\epsilon \to 0} \int_{|x| > \epsilon} \frac{\phi(x)}{x}\, dx$
- Functions with growth: $e^{x}$ defines distribution via $\langle e^x, \phi \rangle = \int e^x \phi$ (finite since $\phi$ has compact support)

**Operations on distributions**

- Addition: $\langle S + T, \phi \rangle = \langle S, \phi \rangle + \langle T, \phi \rangle$
- Scalar multiplication: $\langle cT, \phi \rangle = c\langle T, \phi \rangle$
- Multiplication by smooth function: $\langle gT, \phi \rangle = \langle T, g\phi \rangle$
- Translation: $\langle T_a, \phi \rangle = \langle T, \phi(\cdot + a) \rangle$
- Dilation: $\langle T(cx), \phi \rangle = \frac{1}{|c|}\langle T, \phi(\cdot/c) \rangle$

**Extended Guided Exercise: Riesz Representation and Integration**

This exercise develops a parallel perspective: distributions as measures we integrate against.

*Part 1: Riesz Representation Theorem*
- State: Every continuous linear functional on $C[a,b]$ has the form $f \mapsto \int f\, d\mu$ for a unique signed measure $\mu$
- The functional $f \mapsto f(c)$ corresponds to the point mass $\delta_c$
- So $\delta$ really IS something we can "integrate against"

*Part 2: Riemann-Stieltjes Connection*
- Recall (or introduce): $\int f\, dg = \lim \sum f(x_i)(g(x_{i+1}) - g(x_i))$
- If $g = H$ (Heaviside), then $\int f\, dH = f(0)$
- The "jump" in $H$ captures the point mass

*Part 3: Revisiting Our Axioms*
- Ch 10: We axiomatized integration against Lebesgue measure
- Could generalize: integration against arbitrary measures
- Point masses, weighted sums of point masses, continuous measures...
- Distributions extend this further: $\delta'$ is "integration against" something that isn't even a measure

*Part 4: The Hierarchy*
$$\text{Functions} \subset \text{Measures} \subset \text{Distributions}$$
- Functions: $\langle f, \phi \rangle = \int f\phi\, dx$
- Measures: $\langle \mu, \phi \rangle = \int \phi\, d\mu$
- Distributions: $\langle T, \phi \rangle = T(\phi)$
- Each level allows more "integration against" operations
- Distributions complete the picture: closed under differentiation
