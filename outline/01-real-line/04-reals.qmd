## The Real Numbers

### Narrative

- **The bold move**: define $\RR$ as a complete ordered field
- Axiomatic method: say what reals *do*, not what they *are*
- Existence and uniqueness theorem (stated)
- **No monsters**: $\NN$ unbounded, no infinitesimals
- **Archimedean property**: $na > b$ for some $n$ (completeness implies this)
- **Density of $\QQ$**: between any two reals lies a rational
- **Density of irrationals**: between any two reals lies an irrational
- **The payoff**: $\sqrt{2}$ exists! $\sup\{x : x^2 < 2\}$ works
- $n$th roots exist; rational exponents; real exponents via sup
- Logarithms via sup
- **Surprise**: $\RR$ is uncountable (nested intervals proof)
- $\QQ$ countable, $\RR$ uncountable $\Rightarrow$ "most" reals irrational
- $\AA$ countable $\Rightarrow$ transcendentals exist, "most" reals transcendental
- Computables countable $\Rightarrow$ "most" reals indescribable
- **Closing**: We built $\RR$ to fill holes in $\QQ$; it's an uncountable ocean where rationals, algebraics, computables are countable dust

### Content

### The Definition of $\RR$
- Definition: $\RR$ is a complete ordered field
- Axiomatic method: we say what reals *do*, not what they *are*
- Theorem (stated): A complete ordered field exists and is unique up to isomorphism
- Remark: constructions (Dedekind cuts, Cauchy sequences) prove existence; we focus on using completeness

### No Monsters (Archimedean Property)
- Theorem: For any $x \in \RR$, there exists $n \in \NN$ with $n > x$ (prove in text)
- Proof idea: if $\NN$ were bounded above, $\sup \NN$ would exist; derive contradiction
- Corollary: For any $\varepsilon > 0$, there exists $n \in \NN$ with $1/n < \varepsilon$
- Interpretation: no infinitely large or infinitely small reals; every real lives between two integers

### Density
- Theorem: Between any two reals lies a rational (prove in text)
- Proof uses Archimedean property to find suitable denominator
- Theorem: Between any two reals lies an irrational (quick corollary using $\sqrt{2}$)
- Interpretation: rationals are everywhere dense — we've filled gaps, not added alien regions

### Roots Exist
- Theorem: $\sqrt{2}$ exists in $\RR$ (prove in text — THIS IS THE PAYOFF)
- Let $S = \{x \in \RR : x > 0, x^2 < 2\}$
- ✎ Inline: Verify $1 \in S$ and $2$ is an upper bound for $S$
- By completeness, $s = \sup S$ exists; prove $s^2 = 2$ by ruling out $s^2 < 2$ and $s^2 > 2$
- Corollary: $\sqrt{a}$ exists for any $a \geq 0$ (same proof)
- Definition: $\sqrt[n]{a} = \sup\{x \geq 0 : x^n < a\}$ for $a > 0$
- Theorem: $(\sqrt[n]{a})^n = a$ (exercise)
- Remark: AM-GM (§1.2 exercise) now holds unconditionally in $\RR$: for $a, b \geq 0$, $\frac{a+b}{2} \geq \sqrt{ab}$

### Infinite Riches (Uncountability)
- Theorem: $\RR$ is uncountable (prove in text — nested intervals argument)
- Proof: given any list $x_1, x_2, \ldots$, construct nested intervals avoiding each $x_n$; intersection contains a real not on the list
- Corollary: The irrationals are uncountable (if irrationals were countable, $\RR = \QQ \cup (\RR \setminus \QQ)$ would be countable)
- "Most" reals are irrational ($\QQ$ countable, $\RR$ uncountable)
- $\AA$ countable $\Rightarrow$ transcendentals exist, "most" reals transcendental (exercise)
- Computables countable $\Rightarrow$ "most" reals not computable
- Definables countable $\Rightarrow$ "most" reals not describable
- Interpretation: we built $\RR$ to fill holes in $\QQ$; we got an uncountable ocean where rationals, algebraics, computables are countable dust

### Guided Exercises

### Exponents and Logarithms

We extend exponentiation from integer exponents to rational exponents to real exponents, using completeness.

(a) For $a > 0$ and $p/q \in \QQ$ with $q > 0$, define $a^{p/q} = (\sqrt[q]{a})^p$. Prove this is well-defined: if $p/q = r/s$, then $(\sqrt[q]{a})^p = (\sqrt[s]{a})^r$.

(b) Prove $a^{r+s} = a^r \cdot a^s$ for $a > 0$ and $r, s \in \QQ$.

(c) Prove $a^{rs} = (a^r)^s$ for $a > 0$ and $r, s \in \QQ$.

(d) Prove: if $a > 1$ and $r < s$ are rational, then $a^r < a^s$.

(e) For $a > 1$ and $x \in \RR$, define $a^x = \sup\{a^r : r \in \QQ, r < x\}$. Prove this agrees with the previous definition when $x \in \QQ$.

(f) Prove $a^{x+y} = a^x \cdot a^y$ for $a > 1$ and $x, y \in \RR$.

(g) For $a > 1$ and $y > 0$, define $\log_a(y) = \sup\{r \in \QQ : a^r < y\}$. Prove $a^{\log_a(y)} = y$.

(h) Prove $\log_a(xy) = \log_a(x) + \log_a(y)$ for $x, y > 0$.

### Exercises

*Archimedean Property*
- Prove: for any $x, y > 0$, there exists $n \in \NN$ with $nx > y$
- Prove: for any $x \in \RR$, there exist integers $m, n$ with $m < x < n$

*Roots*
- Prove $(\sqrt[n]{a})^n = a$ for $a > 0$ and $n \in \NN$
- Prove $\sqrt[n]{ab} = \sqrt[n]{a} \cdot \sqrt[n]{b}$
- Prove $\sqrt[m]{\sqrt[n]{a}} = \sqrt[mn]{a}$

*Exponents*
- Prove rational exponents are well-defined: $a^{p/q}$ doesn't depend on the representation of $p/q$
- Prove $a^{r+s} = a^r \cdot a^s$ for rational $r, s$
- Prove $(a^r)^s = a^{rs}$ for rational $r, s$
- Prove: $a^x < a^y$ for $a > 1$ and $x < y$ (real exponents)
- ★ Extend the definition of $a^x$ to $0 < a < 1$ and verify the expected properties

*Countability*
- Prove $\AA$ is countable (hint: countably many polynomials with integer coefficients, each has finitely many roots)
- Prove the set of computable reals is countable (hint: countably many algorithms)
- Prove: if $A$ is countable and $B$ is uncountable, then $B \setminus A$ is uncountable

### Dependencies

**Requires**: §1.1 (countability, Cantor), §1.2 (ordered field), §1.3 (motivation), §1.4 (completeness, nested intervals)

**Used in**: §2.2 (Archimedean in $\varepsilon$-$N$ proofs), §2.3 (density of $\QQ$), §2.4 (roots in Babylonian, AM-GM)