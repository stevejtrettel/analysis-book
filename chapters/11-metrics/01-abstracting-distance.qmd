## Abstracting Distance


**Definition of metric space**

- A set $X$ with distance function $d: X \times X \to [0, \infty)$
- Axioms: $d(x,y) = 0 \iff x = y$; $d(x,y) = d(y,x)$; $d(x,z) \leq d(x,y) + d(y,z)$
- We've been doing this on $\mathbb{R}$ all along

**Examples — Euclidean spaces**

- $\mathbb{R}$ with $d(x,y) = |x - y|$
- $\mathbb{R}^n$ with Euclidean distance $d(x,y) = \sqrt{\sum (x_i - y_i)^2}$
- $\mathbb{C}$ with $d(z,w) = |z - w|$

**Examples — Sequence spaces**

- $\ell^1$: sequences with $\sum |a_n| < \infty$, distance $d(a,b) = \sum |a_n - b_n|$
- $\ell^2$: sequences with $\sum |a_n|^2 < \infty$, distance $d(a,b) = \sqrt{\sum |a_n - b_n|^2}$
- $\ell^\infty$: bounded sequences, distance $d(a,b) = \sup_n |a_n - b_n|$
- These are infinite-dimensional analogues of $\mathbb{R}^n$

**Examples — Function spaces**

- $C[a,b]$ with sup norm: $d(f,g) = \sup_{x \in [a,b]} |f(x) - g(x)|$
- $C[a,b]$ with $L^1$ norm: $d(f,g) = \int_a^b |f(x) - g(x)|\, dx$
- Same set, different metrics! Different notions of "close"

**Examples — Other**

- Discrete metric: $d(x,y) = 1$ if $x \neq y$, else $0$. Every subset is open!
- Hausdorff metric on closed bounded subsets: $d_H(A,B) = \max\{\sup_{a \in A} d(a,B), \sup_{b \in B} d(b,A)\}$

**Balls and topology**

- Open ball: $B_r(x) = \{y : d(x,y) < r\}$
- Closed ball: $\bar{B}_r(x) = \{y : d(x,y) \leq r\}$
- Open set: every point has a ball around it contained in the set
- Closed set: complement is open (equivalently: contains all its limit points)

**Convergence**

- $x_n \to x$ means $d(x_n, x) \to 0$
- Same definition as $\mathbb{R}$, works in any metric space

**Continuity**

- $f: X \to Y$ continuous at $x$ if $x_n \to x$ implies $f(x_n) \to f(x)$
- Equivalently: preimage of open is open
- Equivalently: $\varepsilon$-$\delta$ definition

**Cauchy sequences and completeness**

- Cauchy: for all $\varepsilon > 0$, exists $N$ such that $m, n > N$ implies $d(x_m, x_n) < \varepsilon$
- Complete: every Cauchy sequence converges
- $\mathbb{R}$, $\mathbb{R}^n$, $\mathbb{C}$: complete
- $\ell^1$, $\ell^2$, $\ell^\infty$: complete
- $C[a,b]$ with sup norm: complete
- $C[a,b]$ with $L^1$ norm: NOT complete! (Cauchy sequences can converge to discontinuous functions)
- $\mathbb{Q}$: NOT complete

**Sequential compactness**

- Definition: every sequence has a convergent subsequence
- In $\mathbb{R}^n$: compact iff closed and bounded (Heine-Borel)
- Foreshadow: this will NOT hold in infinite dimensions

**Connectedness**

- Definition: cannot be written as union of two disjoint nonempty open sets
- Path-connected implies connected
- $\mathbb{R}$, $\mathbb{R}^n$, $\mathbb{C}$: connected
- $\mathbb{Q}$: totally disconnected

**Inner products and metrics (brief paragraph)**

- An inner product $\langle \cdot, \cdot \rangle$ induces a norm $\|x\| = \sqrt{\langle x, x \rangle}$
- A norm induces a metric $d(x,y) = \|x - y\|$
- Examples: Euclidean inner product on $\mathbb{R}^n$, $L^2$ inner product on functions
- Not every metric comes from a norm (discrete metric doesn't)

*[Note: End of section practice — verifying examples are metrics, checking completeness of specific spaces, showing specific sets are open/closed]*
