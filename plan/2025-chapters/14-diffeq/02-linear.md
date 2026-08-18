## Linear ODEs

**Higher-Order Linear Equations**

- $y^{(n)} + a_{n-1}y^{(n-1)} + \cdots + a_0 y = 0$
- Convert to system via companion matrix
- Eigenvalues of companion matrix = roots of characteristic polynomial
- Standard theory: $n$ linearly independent solutions, general solution is linear combination


**The Problem**

- $\mathbf{y}' = A\mathbf{y}$ where $A$ is $n \times n$ constant matrix
- Initial condition $\mathbf{y}(0) = \mathbf{y}_0$

**The Matrix Exponential (Recall from Ch 11)**

- $e^{A} = \sum_{k=0}^\infty \frac{A^k}{k!}$
- Converges for all $A$ (comparison with $e^{\|A\|}$)
- Key property: $\frac{d}{dt} e^{At} = A e^{At}$

**Solution of $\mathbf{y}' = A\mathbf{y}$**

- Theorem: $\mathbf{y}(t) = e^{At}\mathbf{y}_0$
- Proof: Verify by differentiation
- Existence, uniqueness, and explicit formula all at once

**Computing $e^{At}$: Diagonalizable Case**

- If $A = PDP^{-1}$ with $D$ diagonal, then $e^{At} = P e^{Dt} P^{-1}$
- $e^{Dt} = \text{diag}(e^{\lambda_1 t}, \ldots, e^{\lambda_n t})$
- Each eigenvalue contributes a mode

**Real vs Complex Eigenvalues**

- Real $\lambda$: mode $e^{\lambda t}$ (growth or decay)
- Complex $\lambda = a + bi$: mode $e^{at}(\cos(bt) + i\sin(bt))$
- For real $A$: complex eigenvalues come in conjugate pairs
- Combined contribution: $e^{at}(c_1\cos(bt) + c_2\sin(bt))$ — oscillation!

**Example: Harmonic Oscillator**

- $y'' + \omega^2 y = 0$ becomes $\mathbf{y}' = \begin{pmatrix} 0 & 1 \\ -\omega^2 & 0 \end{pmatrix} \mathbf{y}$
- Eigenvalues: $\pm i\omega$
- Solution: $y(t) = c_1 \cos(\omega t) + c_2 \sin(\omega t)$
- Complex eigenvalues explain oscillation

**Non-Diagonalizable Case** (brief)

- Jordan normal form: $A = PJP^{-1}$
- $e^{Jt}$ involves polynomial times exponential: $t^k e^{\lambda t}$
- Generalized eigenvectors
- State without developing fully

**Inhomogeneous Systems: Variation of Parameters**

- Problem: $\mathbf{y}' = A\mathbf{y} + \mathbf{g}(t)$
- Guess: $\mathbf{y}(t) = e^{At}\mathbf{c}(t)$ (vary the "constant")
- Substitute: $\mathbf{c}'(t) = e^{-At}\mathbf{g}(t)$
- Solution: $\mathbf{y}(t) = e^{At}\mathbf{y}_0 + \int_0^t e^{A(t-s)}\mathbf{g}(s)\, ds$
- The integral is a convolution!

