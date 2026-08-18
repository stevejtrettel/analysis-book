
## Extending Series


**Theme:** Our theory of series works wherever we have completeness and compatible multiplication.

**Absolute convergence in complete metric spaces**

- Recall: In $\mathbb{R}$, absolute convergence implies convergence
- The proof used: completeness (Cauchy criterion) and triangle inequality
- Same proof works in any complete normed space!
- If $\sum \|a_n\| < \infty$, then $\sum a_n$ converges

**Power series in complete normed rings**

- Setup: $(R, \|\cdot\|)$ is complete, has multiplication, and $\|xy\| \leq \|x\|\|y\|$ (submultiplicative)
- Examples: $\mathbb{R}$, $\mathbb{C}$, $M_n(\mathbb{R})$, $M_n(\mathbb{C})$
- Claim: If $\sum |a_n| \|x\|^n < \infty$, then $\sum a_n x^n$ converges
- In particular: $e^x = \sum \frac{x^n}{n!}$ converges for all $x$ (since $\sum \frac{\|x\|^n}{n!} = e^{\|x\|} < \infty$)
- Same for $\sin x$, $\cos x$, etc.

**The complex numbers**

- $\mathbb{C} = \mathbb{R}^2$ with multiplication $(a,b)(c,d) = (ac - bd, ad + bc)$
- Write $(0,1) = i$; then $i^2 = -1$
- $|z| = \sqrt{a^2 + b^2}$ is a norm with $|zw| = |z||w|$ (multiplicative, even better than submultiplicative!)
- $\mathbb{C}$ is complete (because $\mathbb{R}^2$ is)

**Euler's formula**

- $e^{i\theta} = \sum \frac{(i\theta)^n}{n!}$ converges for all $\theta \in \mathbb{R}$
- Separate real and imaginary parts:
  - Real: $1 - \frac{\theta^2}{2!} + \frac{\theta^4}{4!} - \cdots = \cos\theta$
  - Imaginary: $\theta - \frac{\theta^3}{3!} + \frac{\theta^5}{5!} - \cdots = \sin\theta$
- Therefore: $e^{i\theta} = \cos\theta + i\sin\theta$
- This is WHERE complex exponentials come from
- Corollary: $|e^{i\theta}| = 1$ (lives on unit circle)
- Corollary: $e^{i\pi} + 1 = 0$ (Euler's identity)

**Matrix exponential**

- $M_n(\mathbb{R})$: $n \times n$ real matrices with operator norm $\|A\| = \sup_{\|x\|=1} \|Ax\|$
- Key property: $\|AB\| \leq \|A\| \|B\|$ (submultiplicative)
- $M_n(\mathbb{R})$ is complete (it's $\mathbb{R}^{n^2}$ topologically)
- Definition: $e^A = \sum_{n=0}^\infty \frac{A^n}{n!}$
- Convergence: $\|A^n/n!\| \leq \|A\|^n/n!$, so $\sum \|A^n/n!\| \leq e^{\|A\|} < \infty$

**Properties of matrix exponential**

- $e^0 = I$
- $\frac{d}{dt} e^{tA} = A e^{tA}$
- If $AB = BA$, then $e^{A+B} = e^A e^B$
- Warning: $e^{A+B} \neq e^A e^B$ in general when $AB \neq BA$!

**Computing $e^A$ via eigenvalues**

- If $A = PDP^{-1}$ with $D$ diagonal, then $e^A = P e^D P^{-1}$
- $e^D$ is diagonal with $(e^D)_{ii} = e^{D_{ii}}$
- Real eigenvalues: exponential growth/decay
- Complex eigenvalues: oscillation!

**Complex eigenvalues and rotation**

- Let $A = \begin{pmatrix} 0 & -\omega \\ \omega & 0 \end{pmatrix}$
- Eigenvalues: $\pm i\omega$
- Compute: $e^{tA} = \begin{pmatrix} \cos(\omega t) & -\sin(\omega t) \\ \sin(\omega t) & \cos(\omega t) \end{pmatrix}$
- This IS rotation by angle $\omega t$!
- Complex eigenvalues explain oscillation in differential equations (Ch 14)

*[Note: Practice — compute $e^A$ for specific matrices; verify properties]*

*[Note: Guided exercises — prove $e^{A+B} = e^A e^B$ when $AB = BA$; explore what goes wrong when $AB \neq BA$]*
