# Chapter 10: Completing the Integral

## Overview

This chapter extends the integral from continuous functions to the Lebesgue integral via the Daniell construction. The key insight: demanding the Monotone Convergence Theorem as an axiom, while preserving linearity, *forces* a unique extension of the integral to a much larger class of functions.

**The arc:**
> Exploration → Limitation → Construction → Payoff → Vocabulary → Perspective

We first explore what our axiomatic integral already handles, discovering it's a vector space with many nice properties—but it's not closed under limits. The Daniell construction extends in two stages: first to "upper functions" $L^\uparrow$ (enforcing MCT), then to $L^1 = L^\uparrow - L^\uparrow$ (enforcing linearity). The verification that MCT survives the second extension is the technical heart. The payoff: DCT, differentiation under the integral, term-by-term integration, completeness, and a clean FTC via absolute continuity.

---

## Historical Prelude (Unnumbered)

### The Problem of Limits

Fourier's 1807 claim that "any function" could be written as a sum of sines and cosines demanded a reckoning. To make sense of infinite series of functions, mathematicians needed to interchange integrals with infinite sums:

$$\int \sum_{n=1}^{\infty} f_n = \sum_{n=1}^{\infty} \int f_n$$

When is this valid? The 19th century saw increasing concern. Riemann extended the integral beyond continuous functions, but not far enough. Pathological examples accumulated—functions that were limits of integrable functions but not themselves integrable.

### Lebesgue's Revolution

Henri Lebesgue (1902) asked a different question: instead of asking which functions are integrable, ask what properties the integral *should* have, then find the largest class of functions for which those properties hold.

His answer: if we demand that monotone limits behave well (the Monotone Convergence Theorem), there is a unique maximal extension of the integral. This extension—the Lebesgue integral—is the foundation of modern analysis.

### The Daniell Approach

Percy Daniell (1918) found an elegant path to Lebesgue's integral: start with the integral on continuous functions, extend by monotone limits, then by differences. No measure theory needed as a foundation—measure emerges as a consequence.

This is the approach we take: the integral comes first, measure follows.

---

## 10.1 The Convergence Problem

### Beyond Continuous Functions

Our axiomatic integral was built for continuous functions. But the Darboux construction works more broadly.

**Definition**: For a bounded function $f$ on $[a,b]$, define the *lower integral* and *upper integral* as:

$$\underline{\int_a^b} f = \sup_P L(f, P), \qquad \overline{\int_a^b} f = \inf_P U(f, P)$$

**Definition**: A bounded function $f$ is *Darboux integrable* on $[a,b]$ if the lower and upper integrals are equal:

$$\underline{\int_a^b} f = \overline{\int_a^b} f$$

In this case, the common value is $\int_a^b f$.

What functions does this capture?

### The Class of Integrable Functions

**Many functions are integrable:**

*Continuous functions* are integrable by Chapter 8—uniform continuity forces sup $L$ = inf $U$.

*Piecewise continuous functions* are integrable: if $f$ has finitely many discontinuities, enclose each in a tiny interval. The contribution to $U - L$ from these intervals can be made arbitrarily small.

*Monotone functions* are integrable:

**Theorem**: If $f$ is monotone on $[a,b]$, then $f$ is Darboux integrable.

*Proof*: Suppose $f$ is increasing (decreasing is similar). On the uniform partition $P_n$ with mesh $(b-a)/n$, the oscillation $M_i - m_i$ on each subinterval equals $f(x_i) - f(x_{i-1})$. So:

$$U(f, P_n) - L(f, P_n) = \sum_{i=1}^{n} (M_i - m_i) \cdot \frac{b-a}{n} = \frac{b-a}{n} \sum_{i=1}^{n} [f(x_i) - f(x_{i-1})]$$

The sum telescopes to $f(b) - f(a)$. Thus:

$$U(f, P_n) - L(f, P_n) = \frac{(b-a)(f(b) - f(a))}{n} \to 0$$

as $n \to \infty$. Therefore sup $L$ = inf $U$, and $f$ is integrable. ∎

*The ruler function* $f: [0,1] \to \mathbb{R}$ defined by $f(p/q) = 1/q$ for reduced fractions and $f(x) = 0$ for irrational $x$ is integrable with $\int_0^1 f = 0$. This function is discontinuous at every rational—a dense set—yet still integrable. (Exercise: prove this.)

**General principle**: Discontinuities must be "small" in a precise sense we'll clarify in Section 10.4.

### It's a Vector Space

**Theorem**: The Darboux integrable functions on $[a,b]$ form a vector space, and the integral is linear.

*Proof*: If $f, g$ are integrable and $\alpha, \beta \in \mathbb{R}$, then for any partition $P$:

$$L(\alpha f + \beta g, P) \geq \alpha L(f, P) + \beta L(g, P) - \text{(error from taking inf of sum vs sum of inf)}$$

The technical details involve showing the errors vanish as the partition refines. The result:

$$\int_a^b (\alpha f + \beta g) = \alpha \int_a^b f + \beta \int_a^b g$$

∎

We can do algebra with integrable functions.

### The Boundary

**Example**: The function $\chi_{\mathbb{Q}}: [0,1] \to \mathbb{R}$ defined by $\chi_{\mathbb{Q}}(x) = 1$ if $x \in \mathbb{Q}$ and $\chi_{\mathbb{Q}}(x) = 0$ otherwise is *not* Darboux integrable.

*Proof*: On any subinterval $[x_{i-1}, x_i]$, there exist both rationals and irrationals. So $m_i = 0$ and $M_i = 1$ for every subinterval.

Therefore $L(f, P) = 0$ and $U(f, P) = 1$ for every partition $P$.

Thus sup $L = 0 \neq 1 =$ inf $U$, and $\chi_{\mathbb{Q}}$ is not integrable. ∎

This isn't just a curiosity—it's the boundary of our class.

### Power Series III Was Special

In Chapter 9, we proved term-by-term integration for power series works beautifully:

$$\int \left( \sum_{n=0}^{\infty} a_n x^n \right) = \sum_{n=0}^{\infty} \frac{a_n x^{n+1}}{n+1}$$

We used this to compute $\ln(1+x)$, $\arctan(x)$, and $\pi$.

You might expect limits generally behave this well. They don't.

### The Convergence Problem

**Failure Mode 1** (Integrals don't converge correctly):

Define $f_n: [0,1] \to \mathbb{R}$ by $f_n(x) = n$ for $x \in [0, 1/n]$ and $f_n(x) = 0$ otherwise.

Then:
- Each $f_n$ is integrable with $\int_0^1 f_n = n \cdot \frac{1}{n} = 1$
- $f_n \to 0$ pointwise (for any $x > 0$, eventually $f_n(x) = 0$)
- The limit $f = 0$ is integrable with $\int_0^1 0 = 0$

But $\int f_n = 1 \not\to 0 = \int f$. The integrals don't converge to the integral of the limit!

**Failure Mode 2** (Limit not integrable):

Enumerate the rationals in $[0,1]$ as $q_1, q_2, q_3, \ldots$. Define:

$$f_n = \chi_{\{q_1, \ldots, q_n\}}$$

Then:
- Each $f_n$ is integrable (finite set of discontinuities) with $\int_0^1 f_n = 0$
- $f_n \nearrow \chi_{\mathbb{Q}}$ pointwise
- But $\chi_{\mathbb{Q}}$ is not Darboux integrable

**The class of Darboux integrable functions is not closed under limits.**

### Why This Matters

Fourier series require interchanging $\int$ and $\sum$. Parameter integrals require interchanging $\int$ and $\frac{d}{dt}$. Without control over limits, these operations are unjustified.

Power series were the exception—their uniform convergence on compact subsets made everything work. General limits need more delicate handling.

### A Sanity Check

Not all limit interchanges fail. Let $g_n$ be "tent functions" on $[0,1]$:

$$g_n(x) = \begin{cases} nx & 0 \leq x \leq 1/n \\ 1 & 1/n < x < 1 - 1/n \\ n(1-x) & 1 - 1/n \leq x \leq 1 \end{cases}$$

Then $g_n \nearrow \chi_{(0,1)}$ and $\int_0^1 g_n = 1 - \frac{1}{n} \to 1 = \int_0^1 \chi_{(0,1)}$.

The limit interchange works! What's the difference?

### The Key Observation

In Failure Mode 2: $\int f_n = 0 \to 0$. The integrals are converging to what "should" be the answer. The problem isn't that we get the wrong value—it's that $\chi_{\mathbb{Q}}$ has *no* integral, even though there's an obvious candidate: 0.

Could we extend by *defining* $\int \chi_{\mathbb{Q}} = 0$?

More generally: if $f_n \nearrow f$ with $\int f_n$ bounded, could we *define* $\int f = \lim \int f_n$?

### What We Want

We seek an extension of the integral to a larger class satisfying:

**Monotone Convergence Theorem (MCT)**: If $f_n \nearrow f$ pointwise and $\sup_n \int f_n < \infty$, then $f$ is integrable and $\int f_n \to \int f$.

**Linearity**: The integrable functions form a vector space and $\int$ is linear.

The remarkable fact: demanding both *forces* a unique extension.

---

## 10.2 The Daniell Construction

### The Plan

We extend in two stages:

1. **First extension** ($C[a,b] \to L^\uparrow$): Close under increasing limits. This enforces MCT.

2. **Second extension** ($L^\uparrow \to L^1$): Close under subtraction. This enforces linearity.

The verification:
- $I^+$ is well-defined on $L^\uparrow$ (different approximating sequences give the same answer)
- $I$ is well-defined on $L^1$
- MCT survives the second extension

### Dini's Theorem

The technical heart of the construction requires understanding when pointwise convergence of continuous functions implies convergence of integrals.

**Theorem (Dini)**: Let $f_n \in C[a,b]$ with $f_n \searrow 0$ pointwise. Then $I(f_n) \to 0$.

*Proof*: Fix $\varepsilon > 0$. For each $x \in [a,b]$, since $f_n(x) \to 0$, there exists $N_x$ such that $f_{N_x}(x) < \varepsilon$.

By continuity of $f_{N_x}$, there exists an open interval $U_x$ containing $x$ on which $f_{N_x} < \varepsilon$.

The collection $\{U_x : x \in [a,b]\}$ covers $[a,b]$. By the Heine-Borel theorem (or: by Bolzano-Weierstrass and a compactness argument), finitely many $U_{x_1}, \ldots, U_{x_k}$ cover $[a,b]$.

Let $N = \max\{N_{x_1}, \ldots, N_{x_k}\}$. Since $f_n$ is decreasing, for any $n \geq N$ and any $x \in [a,b]$:

$x \in U_{x_j}$ for some $j$, so $f_n(x) \leq f_N(x) \leq f_{N_{x_j}}(x) < \varepsilon$.

Thus $f_n < \varepsilon$ on all of $[a,b]$ for $n \geq N$. Therefore:

$$I(f_n) = \int_a^b f_n \leq \varepsilon(b-a)$$

Since $\varepsilon$ was arbitrary, $I(f_n) \to 0$. ∎

**Corollary (Daniell's Condition)**: If $f_n \in C[a,b]$ and $f_n \searrow 0$ pointwise, then $I(f_n) \to 0$.

This is the bridge between pointwise convergence (which we have) and integral convergence (which we need).

### Upper Functions

**Definition**: A function $f: [a,b] \to \mathbb{R} \cup \{+\infty\}$ is an *upper function* (written $f \in L^\uparrow$) if there exist $f_n \in C[a,b]$ with $f_n \nearrow f$ pointwise.

We allow $f(x) = +\infty$ at some points.

**Examples**:
- Every continuous function is in $L^\uparrow$ (take $f_n = f$)
- $\chi_{(a,b]} \in L^\uparrow$ (approximate by continuous ramps)
- $\chi_{\mathbb{Q}} \notin L^\uparrow$ (can't approach a spike from below continuously)

**Definition**: For $f \in L^\uparrow$ with approximating sequence $f_n \nearrow f$, define:

$$I^+(f) = \lim_{n \to \infty} I(f_n)$$

The limit exists (possibly $= +\infty$) since $I(f_n)$ is increasing.

But is this well-defined? Different sequences might give different limits.

### Well-Definedness of $I^+$

**Key Lemma**: If $f_n \nearrow f$ with $f_n \in C[a,b]$, and $g \in C[a,b]$ with $g \leq f$, then:

$$I(g) \leq \lim_{n \to \infty} I(f_n)$$

*Proof*: Consider the functions $h_n = g - (f_n \wedge g)$, where $f_n \wedge g = \min(f_n, g)$.

**Claim 1**: Each $h_n$ is continuous.

The pointwise min of continuous functions is continuous (Chapter 6 exercise), so $f_n \wedge g$ is continuous, hence $h_n = g - (f_n \wedge g)$ is continuous.

**Claim 2**: $h_n \searrow 0$ pointwise.

Since $f_n \nearrow f$ and $g \leq f$, eventually $f_n(x) \geq g(x)$ for each $x$. Thus $f_n(x) \wedge g(x) \nearrow g(x)$, so $h_n(x) = g(x) - f_n(x) \wedge g(x) \searrow 0$.

**Claim 3**: $h_n \geq 0$.

We have $f_n \wedge g \leq g$, so $h_n = g - (f_n \wedge g) \geq 0$.

By Dini's theorem, $I(h_n) \to 0$.

Now:

$$I(g) = I(f_n \wedge g) + I(h_n) \leq I(f_n) + I(h_n)$$

(using monotonicity: $f_n \wedge g \leq f_n$).

Taking $n \to \infty$: $I(g) \leq \lim I(f_n) + 0 = \lim I(f_n)$. ∎

**Theorem**: $I^+$ is well-defined on $L^\uparrow$.

*Proof*: Suppose $f_n \nearrow f$ and $g_n \nearrow f$ with all $f_n, g_n \in C[a,b]$.

For any fixed $m$, we have $g_m \leq f$. By the Key Lemma:

$$I(g_m) \leq \lim_n I(f_n)$$

Taking $m \to \infty$: $\lim_m I(g_m) \leq \lim_n I(f_n)$.

By symmetry, $\lim_n I(f_n) \leq \lim_m I(g_m)$.

Therefore $\lim_n I(f_n) = \lim_m I(g_m)$. ∎

### Properties of $I^+$

**Theorem**: $I^+$ on $L^\uparrow$ satisfies:

1. **Extension**: $I^+(f) = I(f)$ for $f \in C[a,b]$
2. **Monotonicity**: $f \leq g \Rightarrow I^+(f) \leq I^+(g)$
3. **Additivity**: $I^+(f + g) = I^+(f) + I^+(g)$
4. **Positive homogeneity**: $c \geq 0 \Rightarrow I^+(cf) = c \, I^+(f)$
5. **MCT for $L^\uparrow$**: If $f_n \in L^\uparrow$, $f_n \nearrow f$, and $\sup I^+(f_n) < \infty$, then $f \in L^\uparrow$ and $I^+(f_n) \to I^+(f)$

*Proof of MCT for $L^\uparrow$*: Each $f_n$ is an increasing limit of continuous functions. By a diagonalization argument, we can construct continuous functions increasing to $f$. The details are left as an exercise. ∎

### The Linearity Problem

$L^\uparrow$ is a *cone*: closed under addition and positive scalar multiplication. But it's not a vector space.

If $f_n \nearrow f$, then $-f_n \searrow -f$—the wrong direction! We can't get $-f \in L^\uparrow$ from $f \in L^\uparrow$.

For analysis, we need subtraction. We need a vector space.

### Integrable Functions

**Definition**: A function $f: [a,b] \to \mathbb{R}$ is *integrable* (written $f \in L^1$) if $f = g - h$ for some $g, h \in L^\uparrow$ with $I^+(g), I^+(h) < \infty$.

**Definition**: For $f = g - h \in L^1$, define:

$$I(f) = I^+(g) - I^+(h)$$

**Theorem**: $I$ is well-defined on $L^1$.

*Proof*: Suppose $g_1 - h_1 = g_2 - h_2$ with all functions in $L^\uparrow$.

Then $g_1 + h_2 = g_2 + h_1$. Both sides are in $L^\uparrow$ (sums of upper functions).

By additivity of $I^+$:

$$I^+(g_1) + I^+(h_2) = I^+(g_2) + I^+(h_1)$$

Rearranging: $I^+(g_1) - I^+(h_1) = I^+(g_2) - I^+(h_2)$. ∎

### Properties of $I$ on $L^1$

**Theorem**: $L^1$ is a vector space and $I: L^1 \to \mathbb{R}$ is linear.

*Proof*: If $f = g_1 - h_1$ and $f' = g_2 - h_2$, then:

$$f + f' = (g_1 + g_2) - (h_1 + h_2) \in L^1$$

$$I(f + f') = I^+(g_1 + g_2) - I^+(h_1 + h_2) = I^+(g_1) - I^+(h_1) + I^+(g_2) - I^+(h_2) = I(f) + I(f')$$

For $c \in \mathbb{R}$: if $c \geq 0$, then $cf = cg - ch$; if $c < 0$, then $cf = (-c)h - (-c)g$.

Linearity follows. ∎

The integral also inherits extension, monotonicity, and interval additivity from $I^+$.

### MCT Survives

The crucial verification: we extended $L^\uparrow$ to $L^1$ for linearity. Did we break MCT?

**Key Lemma**: If $f \in L^1$ and $f \geq 0$, then $f \in L^\uparrow$.

*Proof sketch*: Write $f = g - h$ with $g, h \in L^\uparrow$. Since $f \geq 0$, we have $h \leq g$. The construction shows $f$ can be written as an increasing limit of continuous functions. ∎

**Theorem (MCT for $L^1$)**: If $f_n \in L^1$, $f_n \nearrow f$ pointwise, and $\sup I(f_n) < \infty$, then $f \in L^1$ and $I(f_n) \to I(f)$.

*Proof*: Replace $f_n$ with $f_n - f_1$ to assume $f_n \geq 0$ (the sequence is still increasing).

By the Key Lemma, each $f_n \in L^\uparrow$.

Apply MCT for $L^\uparrow$: $f \in L^\uparrow \subset L^1$ and $I^+(f_n) \to I^+(f) = I(f)$. ∎

### What We've Built

An integral $I$ on $L^1 \supset C[a,b]$ satisfying:
- Extension, monotonicity, interval additivity (original axioms)
- Linearity
- MCT

Next: harvest the consequences.

---

## 10.3 Convergence Theorems

### Monotone Convergence Theorem

We've already proved MCT; let's state it cleanly as our first payoff.

**Theorem (Monotone Convergence Theorem)**: Let $f_n \in L^1$ with $f_n \nearrow f$ pointwise. If $\sup_n I(f_n) < \infty$, then $f \in L^1$ and:

$$I(f_n) \to I(f)$$

Similarly for $f_n \searrow f$ with $\inf_n I(f_n) > -\infty$.

### Dominated Convergence Theorem

**Theorem (Dominated Convergence Theorem)**: Let $f_n \in L^1$ with $f_n \to f$ pointwise. If there exists $g \in L^1$ with $|f_n| \leq g$ for all $n$, then $f \in L^1$ and:

$$I(f_n) \to I(f)$$

*Proof*: Define:

$$g_n = \inf_{k \geq n} f_k, \qquad h_n = \sup_{k \geq n} f_k$$

Then $g_n \nearrow f$ and $h_n \searrow f$ pointwise (since $f_n \to f$).

Also $-g \leq g_n \leq h_n \leq g$, so all functions are bounded by $g \in L^1$.

By MCT applied to $g_n$ and $-h_n$:

$$I(g_n) \to I(f), \qquad I(h_n) \to I(f)$$

Since $g_n \leq f_n \leq h_n$, by monotonicity:

$$I(g_n) \leq I(f_n) \leq I(h_n)$$

By the squeeze theorem, $I(f_n) \to I(f)$. ∎

DCT is the workhorse of analysis. It tells you exactly when limit interchange is valid.

### Revisiting the Failures

The spike functions $f_n = n \cdot \chi_{[0,1/n]}$ have no dominating function in $L^1$. Any $g$ with $|f_n| \leq g$ must satisfy $g(0) \geq n$ for all $n$, so $g(0) = \infty$.

DCT diagnoses exactly why the limit interchange failed: no dominating function exists.

### Application: Differentiating Under the Integral

**Theorem (Leibniz Integral Rule)**: Let $f(x,t)$ be defined for $x \in [a,b]$ and $t$ in an interval. Suppose:
1. $f(x, t)$ is integrable in $x$ for each $t$
2. $\frac{\partial f}{\partial t}$ exists and is integrable in $x$
3. $\left| \frac{\partial f}{\partial t}(x,t) \right| \leq g(x)$ for some $g \in L^1$

Then $F(t) = \int_a^b f(x,t) \, dx$ is differentiable with:

$$F'(t) = \int_a^b \frac{\partial f}{\partial t}(x,t) \, dx$$

*Proof*: The difference quotient is:

$$\frac{F(t+h) - F(t)}{h} = \int_a^b \frac{f(x, t+h) - f(x,t)}{h} \, dx$$

As $h \to 0$, the integrand converges pointwise to $\frac{\partial f}{\partial t}$.

By the mean value theorem, the difference quotient is bounded by $g$. Apply DCT. ∎

### Application: Integrating Series Term-by-Term

**Theorem**: Let $f_n \in L^1$ with $\sum_{n=1}^{\infty} \int |f_n| < \infty$. Then $\sum f_n \in L^1$ and:

$$\int \sum_{n=1}^{\infty} f_n = \sum_{n=1}^{\infty} \int f_n$$

*Proof*: The partial sums $S_N = \sum_{n=1}^{N} f_n$ satisfy:

$$|S_N| \leq \sum_{n=1}^{N} |f_n| \leq \sum_{n=1}^{\infty} |f_n| =: g$$

Since $\int g = \sum \int |f_n| < \infty$, we have $g \in L^1$.

Apply DCT to $S_N \to \sum f_n$. ∎

### The Fundamental Theorem of Calculus

How does FTC extend to $L^1$?

**Part 1 extends nicely**:

**Theorem**: If $f \in L^1$, then $F(x) = \int_a^x f$ is differentiable almost everywhere with $F'(x) = f(x)$ a.e.

We can integrate any $L^1$ function and recover it (a.e.) by differentiation.

**Part 2 is subtle**:

Having $F'$ exist and be integrable isn't enough.

**Counterexample (Cantor Function)**: The Cantor function $F: [0,1] \to [0,1]$ is:
- Continuous and increasing
- $F(0) = 0$, $F(1) = 1$
- $F'(x) = 0$ almost everywhere (flat on the complement of the Cantor set)

But $\int_0^1 F' = \int_0^1 0 = 0 \neq 1 = F(1) - F(0)$.

FTC fails! The function "gains height" on the Cantor set, where it has no derivative.

**The fix: Absolute Continuity**

**Definition**: A function $F: [a,b] \to \mathbb{R}$ is *absolutely continuous* if for every $\varepsilon > 0$, there exists $\delta > 0$ such that for any finite collection of disjoint intervals $(a_i, b_i) \subset [a,b]$:

$$\sum_i (b_i - a_i) < \delta \implies \sum_i |F(b_i) - F(a_i)| < \varepsilon$$

This is stronger than uniform continuity, which only handles one interval at a time.

**Example**: The Cantor function is uniformly continuous but not absolutely continuous. It can change significantly over a collection of tiny intervals covering the Cantor set.

**Theorem (FTC for Lebesgue)**: If $F$ is absolutely continuous on $[a,b]$, then:
1. $F'$ exists almost everywhere
2. $F' \in L^1$
3. $\int_a^b F' = F(b) - F(a)$

**The Beautiful Characterization**:

$$L^1 = \{F' : F \text{ absolutely continuous}\}$$

Lebesgue integrable functions are exactly the a.e. derivatives of absolutely continuous functions.

Compare: Darboux integrable functions are derivatives of Lipschitz functions (where the derivative exists).

### Completeness

**Theorem**: If $f_n \in L^1$ and $\sum_{n=1}^{\infty} \int |f_{n+1} - f_n| < \infty$, then there exists $f \in L^1$ with $\int |f_n - f| \to 0$.

Informally: Cauchy sequences (in the $\int |\cdot|$ sense) converge.

This is *false* for Darboux integrable functions—you can have a Cauchy sequence converging to something non-integrable.

"Completing the Integral"—we've filled the holes. Full discussion in Chapter 11.

### Series Closure

**Theorem**: If $f_n \in L^1$ and $\sum \int |f_n| < \infty$, then $\sum f_n \in L^1$.

*False for Darboux*: Let $f_n = \chi_{\{q_n\}}$ where $q_n$ enumerates the rationals. Each $f_n$ is Darboux integrable with $\int f_n = 0$. But $\sum f_n = \chi_{\mathbb{Q}}$, which is not Darboux integrable.

$L^1$ is closed under absolutely convergent series. The Darboux integrable functions are not.

---

## 10.4 Null Sets and Measure

### Null Sets

**Definition**: A set $E \subset [a,b]$ is *null* (or has *measure zero*) if for every $\varepsilon > 0$, $E$ can be covered by countably many intervals of total length $< \varepsilon$.

**Examples**:
- Any finite set is null
- Any countable set is null (cover the $n$th point by an interval of length $\varepsilon/2^n$)
- The Cantor set is null (it has total length $1 - 1 = 0$ after removing middle thirds)

**Theorem**: $E$ is null if and only if $\chi_E \in L^1$ with $I(\chi_E) = 0$.

*Proof*: ($\Leftarrow$) If $I(\chi_E) = 0$, approximate $\chi_E$ from below by continuous functions. The construction yields covers of arbitrarily small total length.

($\Rightarrow$) If $E$ is null, build continuous functions increasing to $\chi_E$ using the covering intervals. The integrals tend to 0. ∎

### Properties of Null Sets

**Theorem**:
1. Any subset of a null set is null
2. A countable union of null sets is null

*Proof of (2)*: Let $E = \bigcup_{n=1}^{\infty} E_n$ with each $E_n$ null.

Given $\varepsilon > 0$, cover $E_n$ by intervals of total length $< \varepsilon/2^n$.

The union of all these intervals covers $E$ and has total length $< \sum \varepsilon/2^n = \varepsilon$. ∎

### Almost Everywhere

**Definition**: A property holds *almost everywhere* (a.e.) if the set where it fails is null.

- "$f = g$ a.e." means $\{x : f(x) \neq g(x)\}$ is null
- "$f_n \to f$ a.e." means $\{x : f_n(x) \not\to f(x)\}$ is null

### The A.E. Modification Theorem

**Theorem**: If $f = g$ a.e. and $f \in L^1$, then $g \in L^1$ and $I(f) = I(g)$.

*Proof*: We have $g = f + (g - f)$ where $g - f = 0$ a.e.

It suffices to show: if $h = 0$ a.e., then $h \in L^1$ with $I(h) = 0$.

The set $E = \{x : h(x) \neq 0\}$ is null. By the characterization, $\chi_E \in L^1$ with $I(\chi_E) = 0$.

For any $M$, $|h| \leq M\chi_E$ on the set where $|h| \leq M$. Building up carefully, $h \in L^1$ with $I(h) = 0$. ∎

**This is striking**: Modify a function on infinitely many points, and the integral is unchanged.

**False for Darboux**: $f = 0$ and $g = \chi_{\mathbb{Q}}$ differ only on $\mathbb{Q}$, a null set. But $f$ is Darboux integrable while $g$ is not.

This is perhaps the most dramatic difference between Darboux and Lebesgue integrability.

### Measurable Sets

**Definition**: A set $E \subset [a,b]$ is *measurable* if $\chi_E \in L^1$.

**Examples**:
- All intervals are measurable
- All open sets are measurable (countable unions of intervals)
- All closed sets are measurable
- Countable unions and intersections of measurable sets are measurable

**Non-example**: Non-measurable sets exist, but constructing them requires the axiom of choice.

### Lebesgue Measure

**Definition**: For a measurable set $E$, the *Lebesgue measure* is:

$$\mu(E) = I(\chi_E)$$

**Properties**:
1. $\mu(E) \geq 0$
2. $\mu(\varnothing) = 0$
3. $\mu([a,b]) = b - a$
4. **Countable additivity**: If $E_1, E_2, \ldots$ are disjoint measurable sets, then:
$$\mu\left( \bigsqcup_{n=1}^{\infty} E_n \right) = \sum_{n=1}^{\infty} \mu(E_n)$$

*Proof of (4)*: We have $\chi_{\bigsqcup E_n} = \sum \chi_{E_n}$.

The partial sums $\sum_{n=1}^{N} \chi_{E_n}$ are dominated by $\chi_{[a,b]}$. Apply DCT. ∎

### The Integral-First Philosophy

Traditional measure theory proceeds:
1. Define measure (length, area, volume generalized)
2. Define measurable functions
3. Define the integral

Our approach reverses this:
1. Define the integral (Daniell construction)
2. Define measure as $\mu(E) = I(\chi_E)$

For analysis, the integral is primary. Measure is a derived concept.

---

## 10.5 Why Lebesgue?

### Uniqueness

**Theorem**: Any extension of $I$ from $C[a,b]$ satisfying linearity and MCT must agree with the Lebesgue integral.

*Proof sketch*: MCT forces the values on $L^\uparrow$. If $f_n \nearrow f$ with $f_n \in C[a,b]$, then any extension $\tilde{I}$ satisfying MCT must have:

$$\tilde{I}(f) = \lim_n \tilde{I}(f_n) = \lim_n I(f_n) = I^+(f)$$

Linearity then forces values on $L^1 = L^\uparrow - L^\uparrow$. ∎

There was no choice. MCT determined everything.

### Maximality

**Theorem**: $L^1$ is the largest class where $f$ integrable $\Rightarrow |f|$ integrable.

This "absolute integrability" property is fundamental. Extensions beyond $L^1$ (like Henstock-Kurzweil) lose it: there exist HK-integrable functions whose absolute value is not HK-integrable.

### Completeness Revisited

Define $d(f, g) = \int |f - g|$ for $f, g \in L^1$ (identifying functions that agree a.e.).

**Theorem**: $L^1$ with this metric is complete.

In fact: $L^1$ is the *completion* of $C[a,b]$ under this metric. Every $f \in L^1$ is a limit of continuous functions (in the $\int|\cdot|$ sense).

We added exactly the missing limits—nothing more, nothing less.

### A General Machine

The Daniell construction used the length axiom $\mu([c,d]) = d - c$ only as *input*. The machinery—positivity, linearity, Daniell's condition—did the work.

**Alternative input**: Replace $\mu([c,d]) = d - c$ with $\mu((c,d]) = g(d) - g(c)$ for an increasing right-continuous function $g$.

The same machine produces a new integral—the Lebesgue-Stieltjes integral with respect to $g$.

**Theorem (Riesz Representation)**: Every positive linear functional on $C[a,b]$ arises this way. That is, the integrals constructed by the Daniell machine (with varying inputs $g$) are precisely *all* finite Borel measures on $[a,b]$.

This will be developed fully in the measure theory chapter.

### Beyond Lebesgue: Other Integrals

The Lebesgue integral isn't the only extension of the Darboux integral.

**The Henstock-Kurzweil Integral**:

Recall the Darboux integral uses Riemann sums with partitions. The HK integral uses "gauge" partitions—the mesh can vary across the interval.

**Theorem**: Every derivative is HK-integrable, and FTC holds without any absolute continuity requirement.

**Example**: $F(x) = x^2 \sin(1/x^2)$ for $x \neq 0$, $F(0) = 0$.

This is differentiable everywhere, but $F'$ is not Lebesgue integrable (it oscillates too wildly near 0). However, $F'$ is HK-integrable, and $\int_0^1 F' = F(1) - F(0)$.

**The tradeoff**:
- HK has a better FTC (every derivative is integrable)
- Lebesgue has a better space ($L^1$ is complete, $L^p$ theory works)

Different integrals answer different questions.

### Closing Perspective

| Integral | Strength | Limitation |
|----------|----------|------------|
| Darboux | Simple, geometric | Poor limit behavior |
| Lebesgue | Good limits, complete $L^1$ | Some derivatives excluded |
| Henstock-Kurzweil | Full FTC | No $L^p$ theory |

For functional analysis and modern mathematics, Lebesgue is essential. It's not the only integral, but it's the *right* integral for analysis.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| 10.1 | Exploration: what Darboux integrates; limitation: not closed under limits |
| 10.2 | Construction: $L^\uparrow$ for MCT, $L^1$ for linearity, verify compatibility |
| 10.3 | Payoff: DCT, applications, FTC via absolute continuity, completeness |
| 10.4 | Vocabulary: null sets, a.e., measure from integration |
| 10.5 | Perspective: uniqueness, maximality, generalization, alternatives |

## Key Theorems

1. **Monotone Convergence Theorem**: $f_n \nearrow f$, $\sup I(f_n) < \infty \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
2. **Dominated Convergence Theorem**: $f_n \to f$ pointwise, $|f_n| \leq g \in L^1 \Rightarrow I(f_n) \to I(f)$
3. **Dini's Theorem**: $f_n \in C[a,b]$, $f_n \searrow 0$ pointwise $\Rightarrow I(f_n) \to 0$
4. **FTC for Lebesgue**: $F$ absolutely continuous $\Rightarrow \int_a^b F' = F(b) - F(a)$
5. **A.E. Modification**: $f = g$ a.e., $f \in L^1 \Rightarrow g \in L^1$ with same integral
6. **Uniqueness**: MCT + linearity forces the Lebesgue integral

## Definitions Introduced

- Darboux integrable (upper integral = lower integral)
- Upper function ($L^\uparrow$): increasing limit of continuous functions
- Integrable function ($L^1$): difference of upper functions
- Null set / measure zero
- Almost everywhere (a.e.)
- Absolutely continuous function
- Measurable set
- Lebesgue measure

---

## Exercises

### Section 10.1

1. Prove that the ruler function $f(p/q) = 1/q$, $f(\text{irrational}) = 0$ is Darboux integrable with $\int_0^1 f = 0$. (Hint: Given $\varepsilon$, how many rationals $p/q$ have $1/q > \varepsilon$?)

2. Show that if $f$ is Darboux integrable and $g = f$ except at finitely many points, then $g$ is Darboux integrable with $\int g = \int f$.

3. Prove that $f$ Darboux integrable, $g$ Darboux integrable implies $fg$ Darboux integrable. (Hint: Use uniform bounds and $fg - f'g' = f(g-g') + g'(f-f')$.)

4. Give an example of $f_n \to f$ pointwise, all $f_n$ and $f$ Darboux integrable, but $\int f_n \not\to \int f$.

5. Let $f_n = \chi_{[n, n+1]}$ on $[0, \infty)$. Show $f_n \to 0$ pointwise but there is no dominating function in $L^1$. (This illustrates why DCT needs the dominating function.)

### Section 10.2

6. Prove that $\chi_{(0,1]} \in L^\uparrow$ by explicitly constructing continuous functions $f_n \nearrow \chi_{(0,1]}$.

7. Show that $\chi_{\{1/2\}} \notin L^\uparrow$. (Hint: If $f_n \nearrow \chi_{\{1/2\}}$ with $f_n$ continuous, what happens at points near $1/2$?)

8. Prove that if $f, g \in L^\uparrow$, then $\max(f, g) \in L^\uparrow$ and $\min(f, g) \in L^\uparrow$.

9. (MCT for $L^\uparrow$ details) Fill in the diagonalization argument: if $f_n \in L^\uparrow$ with $f_n \nearrow f$, construct continuous $g_k \nearrow f$.

10. Prove: if $f \in L^1$ and $f \geq 0$, then $f \in L^\uparrow$. (This is the key lemma for MCT on $L^1$.)

### Section 10.3

11. Use DCT to prove: $\lim_{n \to \infty} \int_0^1 \frac{nx}{1 + n^2x^2} \, dx = 0$.

12. Use Leibniz's rule to compute $\frac{d}{dt} \int_0^1 e^{-tx^2} \, dx$ and evaluate at $t = 0$.

13. Prove term-by-term: $\int_0^1 \frac{1}{1-x} \, dx = \sum_{n=0}^{\infty} \frac{1}{n+1}$ (formally—both sides diverge, but the partial sums match).

14. Show that the Cantor function satisfies $F' = 0$ a.e. but $F(1) - F(0) = 1$. Where does the FTC argument fail?

15. Prove: if $F$ is Lipschitz on $[a,b]$, then $F$ is absolutely continuous.

16. Prove: if $F$ is absolutely continuous and $F' = 0$ a.e., then $F$ is constant.

### Section 10.4

17. Show that $\mathbb{Q} \cap [0,1]$ is a null set by explicit construction of covers.

18. Prove that the Cantor set has measure zero.

19. Give an example of an uncountable null set. (The Cantor set works.)

20. Prove: if $E$ is null and $f: E \to \mathbb{R}$ is any function, then extending $f$ by 0 outside $E$ gives $f \in L^1$ with $\int f = 0$.

21. Construct a measurable set $E \subset [0,1]$ with $\mu(E) = 1/2$.

22. (Harder) Construct a measurable set $E \subset [0,1]$ such that for every interval $(a,b) \subset [0,1]$, both $E \cap (a,b)$ and $E^c \cap (a,b)$ have positive measure. (This is a "fat" Cantor set construction.)

### Section 10.5

23. Verify the uniqueness argument: if $\tilde{I}$ satisfies MCT and agrees with $I$ on $C[a,b]$, show $\tilde{I} = I^+$ on $L^\uparrow$.

24. Give an example of a function that is HK-integrable but not Lebesgue integrable. (Hint: highly oscillatory derivatives.)

25. (Project) Read about the Riesz representation theorem and explain how every positive linear functional on $C[a,b]$ corresponds to a measure.

---

## Dependencies

**Requires from earlier chapters**:
- Supremum and infimum (Ch 1)
- Sequences and series (Ch 4–5)
- Continuity, uniform continuity (Ch 6)
- Heine-Borel / Bolzano-Weierstrass (Ch 6)
- Integration of continuous functions, Darboux construction (Ch 8)
- Power Series III: term-by-term integration (Ch 9)

**Sets up for later chapters**:
- Metric spaces: $L^1$ as key example of complete space
- Function spaces: $L^p$ spaces, Banach spaces
- Fourier analysis: DCT for series manipulation, $L^2$ theory
- Measure theory: Riesz representation, general measures
