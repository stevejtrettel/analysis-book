## Foundations

### Logic and Sets

**Quantifiers** ($\forall$, $\exists$, $\Rightarrow$, $\Leftrightarrow$, $\neg$)

**Negation**

**Sets**, **power set**

**Induction**, **strong induction**, **well-ordering**

### Functions and Cardinality

**Function**

**Injective**, **surjective**, **bijective**

**Composition**

**Cardinality**, **countable**, **uncountable**

### Fields

::: {#def-field}
## Field
A field $(F, +, \cdot)$ satisfies: $(F,+)$ is an abelian group with identity $0$; $(F \setminus \{0\}, \cdot)$ is an abelian group with identity $1$; and $a(b+c) = ab + ac$.
:::

::: {#prp-field-basics}
In any field: $0 \cdot a = 0$, $(-1)\cdot a = -a$, and $ab = 0 \Rightarrow a = 0$ or $b = 0$.
:::

### Orders

::: {#def-total-order}
## Total Order
A total order $<$ on a set $S$ satisfies transitivity ($a < b$ and $b < c \Rightarrow a < c$) and trichotomy (exactly one of $a < b$, $a = b$, $a > b$).
:::

::: {#def-ordered-field}
## Ordered Field
An ordered field is a field with a total order $<$ satisfying: $a < b \Rightarrow a + c < b + c$, and $a < b, c > 0 \Rightarrow ac < bc$.
:::

::: {#prp-squares-nonneg}
In an ordered field, $a^2 \geq 0$ for all $a$, with equality iff $a = 0$.
:::

::: {#cor-one-positive}
$1 > 0$.
:::

::: {#def-interval}
## Intervals
$(a,b)$, $[a,b]$, $[a,b)$, $(a,b]$; the symbols $\infty$ and $-\infty$ are not elements of the field but formal conventions: $(a, \infty) = \{x : x > a\}$, $(-\infty, b) = \{x : x < b\}$, etc.
:::

**Positivity**

### Absolute Value and Intervals

::: {#def-absolute-value}
## Absolute Value
$|a| = a$ if $a \geq 0$, $|a| = -a$ if $a < 0$.
:::

::: {#prp-absolute-value-properties}
$|a| \geq 0$; $|a| = 0$ iff $a = 0$; $|ab| = |a||b|$.
:::

::: {#thm-triangle-inequality}
## Triangle Inequality
$|a + b| \leq |a| + |b|$.
:::

::: {#cor-reverse-triangle}
## Reverse Triangle Inequality
$\big||a| - |b|\big| \leq |a - b|$.
:::

**Distance**: $|a - b|$ is the distance between $a$ and $b$

### Algebraic Tools

**Powers**, **binomial coefficient**

::: {#thm-bernoulli}
## Bernoulli's Inequality
$(1 + x)^n \geq 1 + nx$ for $x \geq -1$, $n \in \NN$.
:::

::: {#thm-binomial}
## Binomial Theorem
$(a+b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$.
:::

::: {#prp-pascal}
## Pascal's Identity (Exercise)
$\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$.
:::

::: {#thm-amgm}
## AM-GM Inequality
$\frac{a+b}{2} \geq \sqrt{ab}$ for $a, b \geq 0$, with equality iff $a = b$.
:::

### $\bigstar$ Base-$b$ Representation of Integers

### Exercises
