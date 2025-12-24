## Convergence Theorems

**Monotone Convergence Theorem**

- Theorem (MCT): $f_n \in L^1$, $f_n \nearrow f$, $\sup I(f_n) < \infty \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- Already proved in 10.2; state cleanly here as the first payoff

**Dominated Convergence Theorem**

- Theorem (DCT): $f_n \in L^1$, $f_n \to f$ pointwise, $|f_n| \leq g$ for some $g \in L^1 \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- The workhorse theorem—this is what you actually use
- Proof via MCT applied to $\inf$/$\sup$ sequences

**Revisiting the Failures**

- Spike functions $f_n = n \cdot \chi_{[0,1/n]}$: no dominating function (would need $g(0) = \infty$)
- DCT diagnoses exactly why interchange fails
- Not a pathology—a precise answer

**Application: Differentiating Under the Integral**

- Setup: $F(t) = \int_a^b f(x,t) \, dx$
- Theorem: If $\frac{\partial f}{\partial t}$ exists and $\left| \frac{\partial f}{\partial t} \right| \leq g \in L^1$, then $F'(t) = \int_a^b \frac{\partial f}{\partial t} \, dx$
- Proof: Apply DCT to difference quotients

**Application: Integrating Series Term-by-Term**

- Setup: $\sum f_n$ where each $f_n \in L^1$
- Theorem: If $\sum \int |f_n| < \infty$, then $\int \sum f_n = \sum \int f_n$
- Proof: Partial sums dominated by $\sum |f_n|$, apply DCT



**The Fundamental Theorem of Calculus**

**Part 1 extends nicely**:
- Theorem: If $f \in L^1$, then $F(x) = \int_a^x f$ is differentiable a.e. with $F'(x) = f(x)$ a.e.
- We can integrate any $L^1$ function and recover it by differentiation

**Part 2 is subtle**:
- Just having $F'$ exist and be integrable isn't enough
- Counterexample: The Cantor function (devil's staircase)
  - Continuous, increasing, $F(0) = 0$, $F(1) = 1$
  - $F'(x) = 0$ a.e. (flat on complement of Cantor set)
  - But $\int_0^1 F' = 0 \neq 1 = F(1) - F(0)$
- The function "gains height" on the Cantor set where it has no derivative

**Absolute continuity**:
- Definition: $F$ is absolutely continuous if for every $\varepsilon > 0$ there exists $\delta > 0$ such that for any finite collection of disjoint intervals $(a_i, b_i)$ with $\sum(b_i - a_i) < \delta$, we have $\sum |F(b_i) - F(a_i)| < \varepsilon$
- Stronger than uniform continuity (handles multiple intervals simultaneously)
- The Cantor function is uniformly continuous but not absolutely continuous

**Part 2 for Lebesgue**:
- Theorem: If $F$ absolutely continuous, then $F'$ exists a.e., $F' \in L^1$, and $\int_a^b F' = F(b) - F(a)$

**The beautiful characterization**:
- $L^1 = \{F' : F \text{ absolutely continuous}\}$
- Lebesgue integrable functions are exactly the a.e. derivatives of absolutely continuous functions
- Parallels: Darboux integrable $\leftrightarrow$ derivatives of Lipschitz functions



**Completeness**

- Theorem: If $f_n \in L^1$ and $\sum \int |f_{n+1} - f_n| < \infty$, then $f_n$ converges to some $f \in L^1$
- Equivalently: Cauchy sequences in the $\int |\cdot|$ sense converge
- False for Darboux integrable functions
- "Completing the Integral"—we've filled the holes

**Series Closure**

- Theorem: If $f_n \in L^1$ and $\sum \int |f_n| < \infty$, then $\sum f_n \in L^1$
- False for Darboux: $f_n = \chi_{\{q_n\}}$, each integrable, sum is $\chi_{\mathbb{Q}}$
- $L^1$ closed under absolutely convergent series


