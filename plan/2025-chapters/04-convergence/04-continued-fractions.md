## $\bigstar$ Continued Fractions

The decimal expansion of a real number depends on an arbitrary choice of base: in base $10$, $1/3 = 0.\overline{3}$, but in base $3$ it is simply $0.1$. **Continued fractions** offer an alternative representation that is base-independent. In this section we show that every real number has a unique continued fraction, that every continued fraction converges, and that continued fractions reveal arithmetic structure that decimal expansions obscure.

### Notation

::: {#def-continued-fraction}
## Continued Fraction
A **continued fraction** is an expression
$$[a_0; a_1, a_2, \ldots] = a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cdots}}}$$
with $a_0 \in \ZZ$ and $a_1, a_2, \ldots \in \NN$. The integers $a_i$ are the **partial quotients**. A **finite continued fraction** $[a_0; a_1, \ldots, a_n]$ is the same expression with only $n+1$ entries — a rational number. The $n$-th **convergent** of an infinite continued fraction is the truncation $c_n = [a_0; a_1, \ldots, a_n]$.
:::

::: {#prp-convergent-identities}
## Convergent Identities (Exercise)
Let $[a_0; a_1, a_2, \ldots]$ have convergents $c_n = [a_0; a_1, \ldots, a_n]$. Define integers $p_n, q_n$ by the seeds $p_{-1} = 1$, $p_0 = a_0$, $q_{-1} = 0$, $q_0 = 1$ and the recurrence
$$p_n = a_n p_{n-1} + p_{n-2}, \qquad q_n = a_n q_{n-1} + q_{n-2}.$$

Then:

(1) $c_n = p_n/q_n$.

(2) $p_n q_{n-1} - p_{n-1} q_n = (-1)^{n-1}$.

(3) $\gcd(p_n, q_n) = 1$.

(4) $\dfrac{p_n}{q_n} - \dfrac{p_{n-1}}{q_{n-1}} = \dfrac{(-1)^{n-1}}{q_n q_{n-1}}$.
:::

Each part is pure algebra — no limits or estimates — and follows by induction or by direct manipulation. We defer the arguments to the exercises.

### Every Continued Fraction Converges

::: {#thm-cf-convergence}
## Convergence of Continued Fractions
Every infinite continued fraction $[a_0; a_1, a_2, \ldots]$ converges to a real number.
:::

<!-- Proof prose: apply the difference formula (prp-convergent-identities (4)): consecutive convergents alternate in sign with gap 1/(q_n q_{n-1}). Even convergents increase, odd decrease, every even < every odd, and the gap vanishes once q_n → ∞. This is the even-odd sandwich technique from §4.1. Inline exercise: prove q_n ≥ F_n (Fibonacci) by induction, which gives q_n → ∞. -->

This generalizes the even-odd sandwich argument we used for $\sqrt{2}$ in @prp-sqrt2-continued-fraction.

### Every Real has a Continued Fraction

We construct continued fractions for arbitrary reals using the **greedy continued fraction algorithm**: set $a_0 = \lfloor x \rfloor$; if $x = a_0$ stop; otherwise set $x_1 = 1/(x - a_0)$, $a_1 = \lfloor x_1 \rfloor$, and repeat.

<!-- Worked example: 17/7. a_0 = 2, x_1 = 7/3, a_1 = 2, x_2 = 3, stop. So 17/7 = [2; 2, 3]. Verify [2; 2, 3] = 2 + 1/(2 + 1/3) = 17/7 inline. -->

::: {#thm-cf-existence}
## Existence of Continued Fractions
For every real number $x$, the greedy algorithm produces a continued fraction whose convergents satisfy $c_n \to x$.
:::

::: {#prp-cf-rational-iff-finite}
## Rationals and Finite Continued Fractions
The greedy algorithm terminates at a finite step if and only if $x \in \QQ$.
:::

::: {#prp-cf-uniqueness}
## Uniqueness
Under the convention that a finite continued fraction does not end with $a_n = 1$, every real number has a unique continued fraction representation.
:::

Rationals have finite continued fractions — a property of the number itself, independent of any choice of base.

### Patterns

A **quadratic irrational** is an irrational root of an integer quadratic $ax^2 + bx + c = 0$. A continued fraction is **purely periodic** if it has the form $[\overline{a_1, \ldots, a_m}]$, and **eventually periodic** if it has the form $[a_0; a_1, \ldots, a_k, \overline{b_1, \ldots, b_m}]$.

::: {#thm-periodic-cf}
## Periodic Continued Fractions
A real number has an eventually periodic continued fraction if and only if it is a quadratic irrational.
:::

<!-- Proof prose (periodic ⟹ quadratic): a purely periodic tail t = [overline{a_1, ..., a_m}] is a fixed point of the map obtained by one full period, giving a quadratic equation for t. The simplest case [overline{a}] satisfies t = a + 1/t, which is exactly the fixed point equation for f(x) = a + 1/x from §4.3. -->

Examples: $\sqrt{2} = [1; \overline{2}]$, $\sqrt{3} = [1; \overline{1, 2}]$, $\sqrt{5} = [2; \overline{4}]$, $\phi = [\overline{1}]$.

The $\sqrt{2}$ story is now complete: we established its existence from a supremum (Ch 1), approximated it by the Babylonian method and Pell triples (Ch 2), proved convergence of a specific continued-fraction-like construction (§4.1), identified it as the fixed point of a contraction (§4.3), and finally recognize it here as the periodic continued fraction $[1; \overline{2}]$ — whose convergents are exactly the Pell triples.

<!-- Beyond-quadratics prose: cubics have NO known pattern — the continued fraction of cube-root(2) = [1; 3, 1, 5, 1, 1, 4, ...] appears random. Yet e = [2; overline{1, 2k, 1}] has a beautiful pattern, with proof in **Ch 5**. And π = [3; 7, 15, 1, 292, ...] is structureless, with the large 292 explaining why 355/113 is such an extraordinary rational approximation. Continued fractions reveal arithmetic structure that decimal expansions hide. -->

### Approximation and the Golden Ratio

::: {#prp-cf-approximation}
## Convergent Approximation Bound
For any real $x$ with convergents $p_n/q_n$,
$$\left|\, x - \frac{p_n}{q_n}\, \right| < \frac{1}{q_n\, q_{n+1}} < \frac{1}{q_n^{\,2}}.$$
:::

::: {#thm-cf-best-approximation}
## Convergents are Best Approximations
Among all fractions $p/q$ with $1 \leq q \leq q_n$, the convergent $p_n/q_n$ minimizes $\left|\, x - p/q\, \right|$.
:::

From the recurrence $q_n = a_n q_{n-1} + q_{n-2}$, larger partial quotients make $q_n$ grow faster, producing sharper approximations. This accounts for the extraordinary accuracy of $355/113$ for $\pi$: the partial quotient $292$ makes the next denominator enormous.

The golden ratio $\phi = [\overline{1}]$ has the smallest possible partial quotients, so its denominators $q_n = F_{n+1}$ (the Fibonacci numbers) grow as slowly as any continued fraction can. No real is harder to approximate by rationals.

::: {#thm-hurwitz}
## Hurwitz's Theorem
For every irrational $x$, there are infinitely many rationals $p/q$ with
$$\left|\, x - \frac{p}{q}\, \right| < \frac{1}{\sqrt{5}\, q^2}.$$
The constant $1/\sqrt{5}$ is sharp: for $x = \phi$, it cannot be replaced by any smaller constant.
:::

In this precise sense, the golden ratio is the *most irrational* real number.

### Guided Exercise: The Continued Fraction for $\sqrt{3}$

<!--
Walk students through:
(a) a_0 = floor(sqrt(3)) = 1. Rationalize: x_1 = 1/(sqrt(3) - 1) = (sqrt(3) + 1)/2.
(b) a_1 = 1. Compute x_2 = 1/(x_1 - 1) = sqrt(3) + 1.
(c) a_2 = 2. Show x_3 = 1/(x_2 - 2) = x_1, so sqrt(3) = [1; overline{1, 2}] with period 2.
(d) Compute convergents for n = 0, 1, 2, 3, 4 using the p_n, q_n recurrence.
(e) Compute p_n^2 - 3 q_n^2 for each. Identify the pattern.
(f) At period ends (n = 2, 4), verify p_n^2 - 3 q_n^2 = 1 — these are Pell solutions.
(g) Fundamental Pell solution: (p_2, q_2) = (2, 1). Verify 2^2 - 3·1^2 = 1.
This guided exercise incorporates the Pell story from Ch 2 into the CF framework.
-->

### Exercises
