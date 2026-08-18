## Reproving Theorems


**Theme:** Familiar theorems from Part I were really about metric space structure, not specifically about $\mathbb{R}$.

**Compactness: continuous image**

- Theorem: If $K$ is compact and $f: K \to Y$ is continuous, then $f(K)$ is compact
- Proof: Same as Part I — extract subsequence, use continuity

**Compactness: maximum and minimum**

- Theorem: If $K$ is compact and $f: K \to \mathbb{R}$ is continuous, then $f$ achieves its max and min
- Proof: $f(K)$ is compact subset of $\mathbb{R}$, hence closed and bounded, hence contains its sup

**Compactness: uniform continuity**

- Theorem: If $K$ is compact and $f: K \to Y$ is continuous, then $f$ is uniformly continuous
- Proof: Same as Part I

**Heine-Borel in $\mathbb{R}^n$**

- Theorem: A subset of $\mathbb{R}^n$ is compact iff it is closed and bounded
- Proof: Bounded means contained in a cube; cube is compact (Bolzano-Weierstrass iterated); closed subset of compact is compact

**Connectedness: continuous image**

- Theorem: If $X$ is connected and $f: X \to Y$ is continuous, then $f(X)$ is connected
- Proof: If $f(X) = U \cup V$ separated, then $X = f^{-1}(U) \cup f^{-1}(V)$ separated

**Connectedness implies IVT**

- Corollary: If $f: [a,b] \to \mathbb{R}$ is continuous and $f(a) < c < f(b)$, then $f(x) = c$ for some $x$
- Proof: $f([a,b])$ is connected subset of $\mathbb{R}$, hence an interval
- The intermediate value theorem IS "continuous image of connected is connected"

**Infinite-dimensional contrast: closed ball is NOT compact**

- Theorem: The closed unit ball in $C[a,b]$ (sup norm) is not compact
- Proof: The sequence $f_n(x) = x^n$ on $[0,1]$ has no convergent subsequence (converges pointwise to discontinuous function, but convergence in sup norm implies uniform convergence implies continuous limit)
- Or: construct sequence with $\|f_n - f_m\| = 1$ for all $n \neq m$
- This is why Arzelà-Ascoli (Ch 12) needs extra conditions

**Contraction mapping theorem**

- Definition: $T: X \to X$ is a contraction if $d(Tx, Ty) \leq c \cdot d(x,y)$ for some $c < 1$
- Theorem: If $X$ is complete and $T$ is a contraction, then $T$ has a unique fixed point
- Proof: (Brief — same as Part I, cite earlier) Start anywhere, iterate, Cauchy sequence, completeness gives limit, limit is fixed point, uniqueness by contraction property

**Application: Cantor set as fixed point**

- Consider $T(A) = \frac{1}{3}A \cup (\frac{2}{3} + \frac{1}{3}A)$ on closed subsets of $[0,1]$ with Hausdorff metric
- Claim: $T$ is a contraction (with constant $1/3$)
- Hausdorff metric on closed subsets is complete (state; details to guided exercises)
- By contraction mapping: unique fixed point $C$ with $T(C) = C$
- This fixed point IS the Cantor set!
- A fractal defined as a fixed point

*[Note: Further exploration at chapter end — more fractals (Sierpinski triangle, Koch curve) as fixed points of iterated function systems]*

*[Note: Guided exercises — prove Hausdorff metric is complete; verify contraction constant for other IFS examples]*
