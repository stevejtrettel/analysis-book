## The Real Numbers

### The Definition of $\RR$

::: {#def-real-numbers}
## The Real Numbers
$\RR$ is a complete ordered field.
:::

::: {#thm-real-numbers-exist}
## Existence and Uniqueness of $\RR$
A complete ordered field exists and is unique up to isomorphism. (Proof deferred.)
:::

### No Monsters (The Archimedean Property)

::: {#thm-archimedean}
## Archimedean Property
For any $x \in \RR$, there exists $n \in \NN$ with $n > x$.
:::

::: {#cor-archimedean-epsilon}
For any $\varepsilon > 0$, there exists $n \in \NN$ with $1/n < \varepsilon$.
:::

### Density

::: {#thm-density-rationals}
## Density of $\QQ$
Between any two real numbers lies a rational.
:::

::: {#prp-density-irrationals}
## Density of the Irrationals (Exercise)
Between any two real numbers lies an irrational.
:::

### Roots Exist

::: {#thm-sqrt2-exists}
$\sup\{x \in \RR : x > 0,\; x^2 < 2\}$ exists and its square is $2$.
:::

::: {#thm-nth-roots}
For any $a > 0$ and $n \in \NN$, $\sqrt[n]{a}$ exists.
:::

### Infinite Riches (Uncountability)

::: {#thm-R-uncountable}
## $\RR$ is Uncountable
Given any list $x_1, x_2, \ldots$ of real numbers, there exists a real number not on the list.
:::

::: {#cor-irrationals-uncountable}
The irrationals are uncountable.
:::

::: {#cor-transcendentals-exist}
## Transcendental Numbers Exist (Exercise)
$\mathbb{A}$ is countable, so transcendental numbers exist.
:::

### $\bigstar$ Exponents and Logarithms

::: {#def-rational-exponent}
## Rational Exponent
For $a > 0$ and $p/q \in \QQ$ with $q > 0$, define $a^{p/q} = (\sqrt[q]{a})^p$.
:::

::: {#prp-rational-exponent}
## (Exercise)
Rational exponents are well-defined (independent of the representation of $p/q$) and satisfy $a^{r+s} = a^r \cdot a^s$ and $a^{rs} = (a^r)^s$ for $a > 0$ and $r, s \in \QQ$.
:::

::: {#prp-rational-exponent-monotone}
## (Exercise)
If $a > 1$ and $r < s$ are rational, then $a^r < a^s$.
:::

::: {#def-real-exponent}
## Real Exponent
For $a > 1$ and $x \in \RR$, define $a^x = \sup\{a^r : r \in \QQ,\; r < x\}$.
:::

::: {#thm-exponent-laws}
## Laws of Exponents (Exercise)
$a^{x+y} = a^x \cdot a^y$ for $a > 1$ and $x, y \in \RR$.
:::

::: {#def-logarithm}
## Logarithm
For $a > 1$ and $y > 0$, define $\log_a(y) = \sup\{r \in \QQ : a^r < y\}$.
:::

::: {#thm-logarithm-laws}
## Laws of Logarithms (Exercise)
$a^{\log_a(y)} = y$ and $\log_a(xy) = \log_a(x) + \log_a(y)$ for $a > 1$ and $x, y > 0$.
:::

### Exercises
