
We complete the space of functions to allow differentiation everywhere and limits of approximate identities. Distributions extend integration-against-a-function to general linear functionals. This makes differentiation total, gives meaning to $\delta$, and unlocks the Fourier transform on $\mathbb{R}$.


**The recurring theme: sequences that "should" converge**

- Approximate identities: $\phi_\epsilon \to ???$ as $\epsilon \to 0$
  - Concentrated, positive, integral 1
  - Not Cauchy in any $L^p$ — they blow up!
  - But $\int \phi_\epsilon f \to f(0)$ for every nice $f$

- Heat kernel: $K_t \to ???$ as $t \to 0$
  - Same story
  - The "limit" should be initial data for heat equation

- Derivatives of rough functions:
  - Step function $H$: what is $H'$?
  - Approximate: $H_\epsilon$ smooth, $H_\epsilon \to H$
  - $H_\epsilon'$ is concentrated spike at origin
  - $H_\epsilon' \to ???$

- Eigenfunctions that aren't functions (Ch 13):
  - $e^{i\xi x}$ should be eigenfunction of $\frac{d}{dx}$
  - But $e^{i\xi x} \notin L^2(\mathbb{R})$

- Wave equation kernel (Ch 14):
  - $W_t = \frac{1}{2}(\delta_{ct} + \delta_{-ct})$
  - Can't even state without $\delta$

**Historical note:**
- Heaviside (1890s): operational calculus, treats $\delta$ formally
- Dirac (1930s): uses $\delta$ freely in quantum mechanics
- Mathematicians: "That's not rigorous!"
- Schwartz (1950s): theory of distributions makes it rigorous, wins Fields Medal

**The theme: completion**

| Level | Space | What's missing | Completion |
|-------|-------|----------------|------------|
| Ch 1 | $\mathbb{Q}$ | Limits of Cauchy sequences | $\mathbb{R}$ |
| Ch 10 | Riemann integrable | Limits of monotone sequences | Lebesgue integrable |
| Ch 15 | Smooth functions | Derivatives of rough functions; limits of approximate identities | Distributions |

"Reaching for infinity" — we keep completing to allow more limiting operations.
