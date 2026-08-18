## Completing Differentiation


**Motivation: what should $\delta'$ be?**

- $\delta = \lim \phi_\epsilon$ where $\phi_\epsilon$ are approximate identities
- Each $\phi_\epsilon$ is smooth, so $\phi_\epsilon'$ exists
- Should have $\delta' = \lim \phi_\epsilon'$
- What does $\phi_\epsilon'$ do to a test function? Integration by parts:
$$\int \phi_\epsilon'(x) \psi(x)\, dx = -\int \phi_\epsilon(x) \psi'(x)\, dx$$
- Taking limit: $\langle \delta', \psi \rangle = -\langle \delta, \psi' \rangle = -\psi'(0)$

**Definition of distributional derivative**

$$\langle T', \phi \rangle = -\langle T, \phi' \rangle$$

- Motivation: integration by parts, boundary terms vanish (compact support)
- If $T = T_f$ for differentiable $f$: recovers ordinary derivative
- Works for ANY distribution — no smoothness required

**Theorem: Every distribution is infinitely differentiable**

- Define $T^{(n)}$ by: $\langle T^{(n)}, \phi \rangle = (-1)^n \langle T, \phi^{(n)} \rangle$
- Well-defined: test functions are infinitely differentiable
- We have COMPLETED differentiation: every object now has all derivatives

**Example: Heaviside function**

- $H(x) = \begin{cases} 0 & x < 0 \\ 1 & x \geq 0 \end{cases}$
- Compute: $\langle H', \phi \rangle = -\langle H, \phi' \rangle = -\int_0^\infty \phi'(x)\, dx = \phi(0) - \phi(\infty) = \phi(0)$
- Therefore: $H' = \delta$
- The derivative of a step is a spike!

**Example: Absolute value**

- $\langle |x|', \phi \rangle = -\int |x| \phi'(x)\, dx$
- Split: $= -\int_{-\infty}^0 (-x)\phi'(x)\, dx - \int_0^\infty x\phi'(x)\, dx$
- Integrate by parts each piece:
  - Left: $= -[(-x)\phi]_{-\infty}^0 - \int_{-\infty}^0 \phi\, dx = -\int_{-\infty}^0 \phi$
  - Right: $= -[x\phi]_0^\infty + \int_0^\infty \phi\, dx = \int_0^\infty \phi$
- Sum: $\int_0^\infty \phi - \int_{-\infty}^0 \phi = \int \text{sgn}(x)\phi(x)\, dx$
- Therefore: $(|x|)' = \text{sgn}(x)$
- Differentiate again: $(\text{sgn})' = 2\delta$

**General jump formula**

- If $f$ is piecewise smooth with jump of size $a$ at $x = c$:
- $f'_{\text{dist}} = f'_{\text{classical}} + a\delta_c$
- Jumps contribute delta functions to the derivative

**The completion perspective**

- Smooth functions: all derivatives exist (classically)
- Continuous functions: first derivative may not exist classically
- $L^1_{loc}$ functions: derivatives may not exist classically
- Distributions: ALL have ALL derivatives
- The space is now closed under differentiation

**Theorem: Differentiation is continuous**

- If $T_n \to T$ in $\mathcal{D}'$, then $T_n' \to T'$ in $\mathcal{D}'$
- Proof: $\langle T_n', \phi \rangle = -\langle T_n, \phi' \rangle \to -\langle T, \phi' \rangle = \langle T', \phi \rangle$
- Limits and derivatives commute in distribution space
- This FAILS for ordinary functions

**Convolution with test functions**

- For $T \in \mathcal{D}'$, $\phi \in \mathcal{D}$: define $(T * \phi)(x) = \langle T, \phi(x - \cdot) \rangle$
- This is a smooth function!
- $(T * \phi)' = T' * \phi = T * \phi'$
- Convolution with smooth function regularizes
