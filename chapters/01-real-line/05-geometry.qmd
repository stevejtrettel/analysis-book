## Geometry Reborn

### The Plane

::: {#def-euclidean-space}
## Euclidean Space
$\RR^n = \{(x_1, \ldots, x_n) : x_i \in \RR\}$.
:::

::: {#def-distance}
## Distance
For $p = (p_1, \ldots, p_n)$ and $q = (q_1, \ldots, q_n)$ in $\RR^n$, the distance is $d(p, q) = \sqrt{\sum_{i=1}^{n}(q_i - p_i)^2}$.
:::

### Measuring Sets

::: {#def-diameter}
## Diameter
The diameter of $S \subseteq \RR^n$ is $\operatorname{diam}(S) = \sup\{d(p,q) : p, q \in S\}$.
:::

::: {#def-distance-sets}
## Distance to a Set
$d(p, S) = \inf\{d(p,q) : q \in S\}$ and $d(S, T) = \inf\{d(p,q) : p \in S, q \in T\}$.
:::

### Measuring Curves

::: {#def-curve-length}
## Length of a Curve
The length of a curve is the supremum of inscribed polygonal lengths. A curve is **rectifiable** if this supremum is finite.
:::

### Measuring Regions

::: {#def-area}
## Area
$A_{\text{inner}}(R) = \sup\{\operatorname{area}(P) : P \subseteq R,\; P \text{ polygon}\}$ and $A_{\text{outer}}(R) = \inf\{\operatorname{area}(P) : R \subseteq P,\; P \text{ polygon}\}$. The region $R$ has area if $A_{\text{inner}}(R) = A_{\text{outer}}(R)$; the common value is $\operatorname{area}(R)$.
:::

### Trigonometry

::: {#def-trig}
## Sine and Cosine
For $\theta \geq 0$, let $P(\theta)$ be the unique point on the unit circle at arc length $\theta$ counterclockwise from $(1,0)$. Then $\cos\theta$ is the $x$-coordinate of $P(\theta)$ and $\sin\theta$ is the $y$-coordinate.
:::

::: {#prp-pythagorean-identity}
## Pythagorean Identity
$\cos^2\theta + \sin^2\theta = 1$.
:::

::: {#prp-angle-addition}
## Angle Addition Formulas (Exercise)
$\cos(\alpha+\beta) = \cos\alpha\cos\beta - \sin\alpha\sin\beta$ and $\sin(\alpha+\beta) = \sin\alpha\cos\beta + \cos\alpha\sin\beta$.
:::

### $\bigstar$ Trigonometric Identities

### Exercises
