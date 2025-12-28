## The Spaces $C^k$, $L^1$, $L^2$

**$C[a,b]$: Continuous Functions**

- Definition: continuous functions on $[a,b]$
- Sup norm: $\|f\|_\infty = \sup_{x \in [a,b]} |f(x)|$
- Measures: worst-case error

**$C^k[a,b]$: Differentiable Functions**

- Definition: $k$ times continuously differentiable
- Norm: $\|f\|_{C^k} = \sum_{j=0}^k \|f^{(j)}\|_\infty$
- Measures: control of function and its derivatives
- $C^\infty[a,b]$: smooth functions (infinitely differentiable)
- Inclusions: $C^\infty \subset \cdots \subset C^2 \subset C^1 \subset C^0 = C$

**$L^1[a,b]$: Integrable Functions**

- Definition: functions with $\int_a^b |f| < \infty$
- Norm: $\|f\|_1 = \int_a^b |f|$
- Measures: total size
- Technical point: identify functions equal almost everywhere

**$L^2[a,b]$: Square-Integrable Functions**

- Definition: functions with $\int_a^b |f|^2 < \infty$
- Norm: $\|f\|_2 = \left(\int_a^b |f|^2\right)^{1/2}$
- **Inner product**: $\langle f, g \rangle = \int_a^b f \bar{g}$
- Cauchy-Schwarz: $|\langle f, g \rangle| \leq \|f\|_2 \|g\|_2$
- Measures: energy / mean-square

**Inclusions on Bounded Intervals**

- $C[a,b] \subset L^2[a,b] \subset L^1[a,b]$
- $\|f\|_1 \leq \sqrt{b-a} \|f\|_2 \leq (b-a) \|f\|_\infty$

**Guided Exercises**

- General $L^p$: $\|f\|_p = \left(\int |f|^p\right)^{1/p}$
- Hölder's inequality: $\|fg\|_1 \leq \|f\|_p \|g\|_q$ where $\frac{1}{p} + \frac{1}{q} = 1$
