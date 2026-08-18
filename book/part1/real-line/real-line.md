# The Real Line {#ch-real-line}

Stub chapter proving the build pipeline; real content gets rebuilt from
`plan/ch01-real-line/` (see `plan/MAP.md`).

## Incompleteness of the Rationals {#sec-incompleteness}

The diagonal of a unit square has length $\sqrt{2}$, and no fraction
represents it exactly: the approximations

$$
x_{n+1} = \frac{1}{2}\left(x_n + \frac{2}{x_n}\right)
$$ {#eq-babylonian}

are each rational, each closer to $\sqrt{2}$ than the last, and their
target is not in $\QQ$.

:::theorem{#thm-sqrt2 title="Irrationality of the Square Root of Two"}
There is no rational number $p/q$ with $(p/q)^2 = 2$.
:::

:::proof
Suppose $p/q$ is in lowest terms and $p^2 = 2q^2$. Then $p$ is even,
so $p = 2k$ and $q^2 = 2k^2$, making $q$ even too — contradicting
lowest terms.
:::

## Completeness {#sec-completeness}

By @thm-sqrt2, the iteration @eq-babylonian converges to no rational
number: the real line is the completion that gives such processes a
home.
