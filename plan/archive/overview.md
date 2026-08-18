
## Chapter 1: Foundations

**Overall narrative**: We need a number system where calculus works. ℚ has holes that break IVT, EVT, and MVT. Patching holes one-by-one fails — every fix leaves more gaps. Solution: define ℝ axiomatically as a *complete* ordered field. Completeness fills all holes at once. Surprise: the resulting ℝ is uncountable.

**The arc:**
> Language of sets → Ordered field axioms → ℚ's incompleteness → Completeness axiom → ℝ exists and is uncountable

---

### Historical Prelude

- Greeks discover √2 irrational: geometry demands numbers ℚ lacks
- 2000 years of workarounds
- 19th century crisis: calculus needs rigorous foundations
- Dedekind, Cantor, Weierstrass: axiomatize completeness

---

### 1.1 Sets and Functions

- **Language we need**: sets, membership, subsets, unions, intersections
- Set-builder notation; standard sets ℕ, ℤ, ℚ
- Cartesian products
- **Functions**: domain, codomain, range
- Injective, surjective, bijective
- Composition and inverses
- Theorem: f has inverse iff f bijective
- Foreshadowing: no surjection A → 𝒫(A) (Cantor)

---

### 1.2 Ordered Fields
- **Field axioms**: +, ×, identities, inverses, distributivity
- ℚ is a field; ℤ is not
- Consequences: uniqueness of inverses, 0·a = 0, (−1)(−1) = 1
- **Order axioms**: positive elements P with closure and trichotomy
- Consequences: squares ≥ 0, 1 > 0, multiplying by negatives reverses
- **Absolute value**: |a| as distance from 0; |a − b| as distance between a, b
- Triangle inequality: |a + b| ≤ |a| + |b|
- Reverse triangle inequality
- Intervals: notation for (a,b), [a,b], rays
- Bernoulli's inequality: (1+x)ⁿ ≥ 1 + nx
- Roots notation introduced (existence requires completeness)

---

### 1.3 Incompleteness of ℚ

- **The first crisis**: √2 irrational — geometry demands a number ℚ lacks
- Proof: √2 irrational (classic)
- **Patching attempt 1**: ℚ(√2) = {a + b√2 : a,b ∈ ℚ} — but √3 missing
- **Patching attempt 2**: Constructible numbers (nested square roots) — but ∛2 missing
- **Patching attempt 3**: Algebraic numbers 𝔸 — but π missing (Lindemann 1882)
- Every patch leaves holes; can't construct our way out
- **The real crisis**: gaps break calculus
  - IVT fails in ℚ: f(x) = x² − 2 on [1,2] ∩ ℚ
  - EVT fails in ℚ: f(x) = 1/(x² − 2) unbounded on [1,2] ∩ ℚ
  - MVT fails (depends on EVT)
- Bisection, Newton's method produce sequences with no limit in ℚ
- **New strategy needed**: define ℝ by properties, not construction

---

### 1.4 Completeness

- **Motivation**: bisection gives nested intervals [1,2] ⊃ [1.4,1.5] ⊃ [1.41,1.42] ⊃ ...
- In ℚ, intersection empty — target doesn't exist
- **Bounds**: upper bound, lower bound, bounded
- **Supremum**: least upper bound (may or may not be in set)
- **Infimum**: greatest lower bound
- Examples: sup{1 − 1/n} = 1 ∉ S; sup[0,1] = 1 ∈ S
- Key example: {x ∈ ℚ : x² < 2} has no sup in ℚ — this is how holes manifest
- **Completeness axiom**: every nonempty set bounded above has a supremum
- ε-characterization: for any ε > 0, some element exceeds sup − ε
- Working with sup: translation, scaling, subsets, unions
- Infima exist in complete fields (take sup of lower bounds)
- **Nested Interval Property**: in complete fields, nested closed intervals have nonempty intersection
- Lengths → 0 implies intersection is single point

---

### 1.5 The Real Numbers

- **The bold move**: define ℝ as a complete ordered field
- Axiomatic method: say what reals *do*, not what they *are*
- Existence and uniqueness theorem (stated)
- **No monsters**: ℕ unbounded, no infinitesimals
- **Archimedean property**: na > b for some n (completeness implies this)
- **Density of ℚ**: between any two reals lies a rational
- **Density of irrationals**: between any two reals lies an irrational
- **The payoff**: √2 exists! sup{x : x² < 2} works
- nth roots exist; rational exponents; real exponents via sup
- Logarithms via sup
- **Surprise**: ℝ is uncountable (nested intervals proof)
- ℚ countable, ℝ uncountable ⟹ "most" reals irrational
- 𝔸 countable ⟹ transcendentals exist, "most" reals transcendental
- Computables countable ⟹ "most" reals indescribable
- **Closing**: We built ℝ to fill holes in ℚ; it's an uncountable ocean where rationals, algebraics, computables are countable dust

---

**Summary of the arc:**

- 1.1: Language (sets, functions) — tools we need
- 1.2: Ordered fields — arithmetic and order axioms
- 1.3: ℚ is incomplete — can't patch our way out
- 1.4: Completeness — the axiom that fills all holes
- 1.5: ℝ exists, is unique, is uncountable

---


## Chapter 2: Limits

**Overall narrative**: Chapter 1 revealed ℝ is uncountable — vastly more numbers than finite descriptions can name. How do we access them? Sequences are our tools. A sequence of rationals can reach any real. This chapter develops sequences as tools for exploring ℝ.

**The arc:**
> Sequences as tools → What is convergence? → Limit laws from ordered field axioms → MCT from completeness → Every real can be reached

---

### Historical Prelude

- Newton/Leibniz: what *is* a limit? "Ghosts of departed quantities"
- The crisis: calculus works but foundations are incoherent
- Cauchy/Weierstrass: ε-N definition replaces philosophy with calculation

---

### 2.1 Sequences and Series

**Tools for Reaching Real Numbers**

- Chapter 1: ℝ is uncountable, finite descriptions are countable
- **Key insight**: Infinite processes bridge the gap
- Sequences let us *name* numbers we can't write down
- Preview: we'll prove every real is the limit of a sequence of rationals

**What Is a Sequence?**

- Definition: function ℕ → ℝ; a list a₁, a₂, a₃, ...
- Two ways to specify: closed form vs recursive

**Many Objects Are Secretly Sequences**

- Series Σaₙ: the sequence of partial sums Sₙ = a₁ + a₂ + ⋯ + aₙ
- Products Πaₙ: the sequence of partial products Pₙ = a₁ · a₂ · ⋯ · aₙ
- Recursive processes: aₙ₊₁ = f(aₙ)
- **Unifying principle**: Master sequences, master them all

**Historical Examples: Tools in Action**

- *Archimedes and the parabola*: Sₙ = T(1 + 1/4 + ⋯ + 1/4ⁿ) — tool for finding area
- *Babylonians and √2*: xₙ₊₁ = (xₙ + 2/xₙ)/2 — tool for finding √2
- Both produce sequences; both "approach" something — but what does that mean?

**When Algebra Gives Closed Forms**

- Most sequences have no closed form for Sₙ or Pₙ
- But some do — and pure algebra (no limits!) gives the formula

**Geometric Partial Sums**

- Sₙ = 1 + r + r² + ⋯ + rⁿ
- Trick: compute Sₙ - rSₙ = 1 - rⁿ⁺¹
- Formula: Sₙ = (1 - rⁿ⁺¹)/(1 - r) for r ≠ 1

**Telescoping Series**

- Idea: terms cancel in pairs, leaving only endpoints
- If aₖ = tₖ - tₖ₋₁, then Sₙ = Σₖ₌₁ⁿ aₖ = tₙ - t₀
- Example: 1/(k(k+1)) = 1/k - 1/(k+1), so Σₖ₌₁ⁿ 1/(k(k+1)) = 1 - 1/(n+1)

**Telescoping Products**

- Same idea multiplicatively: terms cancel
- If aₖ = tₖ/tₖ₋₁, then Pₙ = Πₖ aₖ = tₙ/t₀
- Example: (1 - 1/k²) = (k-1)(k+1)/k² = [(k-1)/k] · [(k+1)/k]
- Πₖ₌₂ⁿ (1 - 1/k²) = (1/2) · ((n+1)/n) = (n+1)/(2n)

**The Question**

- We have Sₙ = (1 - rⁿ⁺¹)/(1-r) and Sₙ = 1 - 1/(n+1) and Pₙ = (n+1)/(2n)
- What happens as n → ∞? What does "→" mean?
- This is **convergence** — next section

---

### 2.2 Convergence

**The Definition**

- Motivation: "approaches" means "eventually stays arbitrarily close"
- The ε-N game: adversary picks tolerance, you find threshold
- Definition: aₙ → L if ∀ε > 0 ∃N: n > N ⟹ |aₙ - L| < ε
- Convergent vs divergent

**Examples Worked from Definition**

- 1/n → 0 (the fundamental example; use Archimedean property)
- Constant sequence c → c
- n/(n+1) → 1
- (-1)ⁿ diverges (direct argument: terms can't both be close to any L)

**Geometric Sequences**

- Lemma (Bernoulli's Inequality): (1+x)ⁿ ≥ 1 + nx for x ≥ -1
- Theorem: rⁿ → 0 for |r| < 1
- Theorem: rⁿ diverges for |r| > 1; diverges to +∞ for r > 1

**Basic Properties**

- Uniqueness of limits
- Convergent ⟹ bounded (converse false: (-1)ⁿ)
- Tails determine convergence

**Divergence to Infinity**

- Definition: aₙ → +∞, aₙ → -∞
- Example: n² → +∞

---

### 2.3 Limit Theorems

**Limits Respect Order**

- Theorem: aₙ → L and aₙ ≥ 0 ⟹ L ≥ 0
- Theorem: aₙ ≤ bₙ and both converge ⟹ limits respect ≤
- Warning: strict inequality not preserved
- Squeeze theorem

**Limits Respect Algebra**

- Limit laws: sum, difference, product, quotient, square root
- These follow from ordered field axioms

**Applications: Finishing What We Started**

- **Geometric series**: Sₙ = (1 - rⁿ⁺¹)/(1-r) → 1/(1-r) using rⁿ → 0 and limit laws
- **Archimedes resolved**: 1 + 1/4 + 1/16 + ⋯ = 1/(1 - 1/4) = 4/3
- **Telescoping series**: Sₙ = 1 - 1/(n+1) → 1, so Σ1/(k(k+1)) = 1
- **Telescoping product**: Pₙ = (n+1)/(2n) → 1/2, so Π(1 - 1/k²) = 1/2
- Conjugate trick: √(n+1) - √n → 0

**Density of Rationals**

- Theorem: between any two reals lies a rational
- Theorem: every real is the limit of a sequence of rationals
- **Payoff**: Sequences really do reach all of ℝ!

**The Limits of Limit Laws**

- Limit laws tell us *what* the limit is, not *that* it exists
- Babylonian example: *if* xₙ → L, then L = √2 — but doesn't prove convergence
- We need a new tool...

---

### 2.4 Monotone Convergence

**The Key Insight**

- Limit laws use ordered field axioms
- To prove existence (not just compute), we need completeness

**Monotone Sequences**

- Definitions: increasing, decreasing, monotone

**The Theorem**

- MCT: monotone + bounded ⟹ convergent
- Increasing bounded above → converges to sup
- Decreasing bounded below → converges to inf
- Proof uses completeness (ε-characterization of sup)

**The Babylonian Sequence**

- x₁ = 2, xₙ₊₁ = (xₙ + 2/xₙ)/2
- Show: xₙ ≥ √2 for n ≥ 2 (AM-GM)
- Show: (xₙ) decreasing (since xₙ² ≥ 2)
- MCT ⟹ converges; limit laws ⟹ limit is √2
- **Payoff**: Our tool reaches √2!

**The Number e**

- Definition: e = lim(1 + 1/n)ⁿ
- Theorem: (1 + 1/n)ⁿ increasing, bounded above by 3
- Theorem: (1 + 1/n)ⁿ⁺¹ decreasing, bounded below
- Both converge to e; nested intervals locate e

**More MCT Examples**

- Nested radicals: √(2 + √(2 + ⋯)) = 2
- Power tower: √2^√2^⋯ = 2

**Series via MCT**

- Nonnegative series: converges iff partial sums bounded
- Σ1/2ⁿ converges (partial sums < 2)
- Σ1/n² converges (compare to telescoping Σ1/(k(k-1)))

---

### 2.5 Representing Real Numbers

**The Naming Problem**

- Finite descriptions: countable
- ℝ: uncountable
- Conclusion: infinite processes *necessary* to name reals

**Decimal Expansions**

- Definition: 0.d₁d₂d₃... = Σdₙ/10ⁿ
- Every decimal converges (MCT: partial sums increasing, bounded)
- Every real has a decimal (greedy algorithm)
- Uniqueness up to trailing 9s; 0.999... = 1

**Characterizing Rationals**

- Theorem: x ∈ ℚ ⟺ eventually periodic decimal
- Irrationals: non-repeating decimals (√2, Liouville's number)

**Preview**

- Decimals privilege base 10 — arbitrary
- Continued fractions: another representation, developed in Chapter 4
- We'll see: CFs give "best" rational approximations, explain Pell equations

---


## Chapter 3: Sequences and Completeness

**Overall narrative**: Chapter 2 handled monotone sequences via MCT. What about bounded sequences with no monotone structure? What does completeness force on *all* bounded sequences?

---

### Historical Prelude
- Bolzano (1817): bounded sequences have accumulation points
- Cauchy's criterion: terms getting close to *each other*
- By century's end: recognized these are equivalent faces of completeness

---

### 3.1 Subsequences
- Definition of subsequence (n₁ < n₂ < n₃ < ...)
- Motivation: probing a sequence's behavior by examining parts
- Theorem: subsequences of convergent sequences inherit the limit
- Contrapositive: two subsequences with different limits ⟹ divergence
- Cleaner proof that (-1)ⁿ diverges (subsequences → 1 and → -1)
- Definition: subsequential limit (accumulation point)

---

### 3.2 Bolzano-Weierstrass
- Theorem: every bounded sequence has a convergent subsequence
- Proof via bisection → nested intervals (completeness!)
- Remark: fails in ℚ
- Corollary: bounded + exactly one subsequential limit ⟹ convergent
- Reframing: divergence of bounded sequences means *multiple* subsequential limits
- Motivation: study the *set* of all subsequential limits

---

### 3.3 Limsup and Liminf
- For bounded sequence, set of subsequential limits is nonempty (BW) and bounded
- Definition via subsequential limits: limsup = largest, liminf = smallest
- Alternative definition via tails: limsup = lim(sup of tail), liminf = lim(inf of tail)
- Prove these agree
- Theorem: limsup is achieved (some subsequence converges to it)
- Theorem: convergence ⟺ limsup = liminf
- Examples: compute limsup/liminf for oscillating sequences

---

### 3.4 The Cauchy Criterion
- Observation: limsup = liminf means "tail oscillation" → 0
- Define tail oscillation ωₙ = sup(tail) - inf(tail)
- ωₙ → 0 ⟺ convergence
- Unpack: ωₙ < ε means all pairs j, k ≥ n satisfy |aⱼ - aₖ| < ε
- This *is* the Cauchy condition — derived naturally from limsup/liminf!
- Definition: Cauchy sequence
- Theorem: convergent ⟺ Cauchy
- Proof sketch (⟸): Cauchy ⟹ bounded ⟹ BW ⟹ convergent subsequence ⟹ whole sequence converges
- Significance: intrinsic (examines only the sequence), metric (uses distance, not order)

---

### 3.5 The Many Faces of Completeness
- Completeness has appeared as:
  1. LUB (axiom)
  2. MCT
  3. Nested Intervals
  4. Bolzano-Weierstrass
  5. Cauchy completeness
- Theorem: for an ordered field, all five are equivalent
- Sketch the equivalence cycle (or key implications)
- Why it matters: Cauchy generalizes to metric spaces without order
- Historical note: Cantor's construction of ℝ via Cauchy sequences of rationals

---


## Chapter 4: Infinite Processes

**Overall narrative**: Series, products, recursive iterations, continued fractions — these are all "doing something infinitely many times." They're all sequences, and we apply our theory from Ch 2–3 to develop specialized techniques.

---

### Historical Prelude
- Euler's bold manipulations: sometimes right, sometimes wrong
- Cauchy's tests (1821): detect convergence without computing
- From art to science: systematic techniques

---

### 4.1 Finding Monotonicity
- Not all sequences are monotone, but some *decompose* into monotone pieces
- **Lemma (Even-Odd)**: If even-indexed terms → L and odd-indexed terms → L, then aₙ → L
- Generalization to k subsequences (state, assign HW)
- **Alternating Series Test**: bₙ ↘ 0 ⟹ Σ(−1)ⁿbₙ converges
  - Even partial sums ↑, odd partial sums ↓, gap → 0
- Example: alternating harmonic series
- **√2 continued fraction**: √2 = [1; 2̄]
  - Even convergents ↑, odd convergents ↓, gap → 0
  - Prove convergence; note the tail is [2; 2̄] which "repeats" — we'll exploit this in §4.3
- **Wallis product**: zig-zag partial products
  - Odd partial products ↓, even partial products ↑, gap → 0

---

### 4.2 Comparison
- **Comparison Test**: 0 ≤ aₙ ≤ bₙ and Σbₙ converges ⟹ Σaₙ converges
- **Limit Comparison**: aₙ/bₙ → L ∈ (0, ∞) ⟹ same behavior
- **Absolute convergence**: definition, implies convergence
- **Ratio Test**: comparison with geometric series via ratios
- **Root Test**: comparison with geometric series via n-th roots
- **Root Test (strong form)**: limsup version
- **Viète product**: factors → 1 geometrically fast, Cauchy/comparison gives convergence
- Remark: products with factors approaching 1 "fast enough" — connects to series via log (forward reference to Ch 6)

---

### 4.3 Contraction Mappings
- Recursive sequences aₙ₊₁ = f(aₙ): when do they converge?
- **Definition**: contraction with constant c ∈ (0,1)
- **Theorem**: unique fixed point, all orbits converge, rate |aₙ − L| ≤ cⁿ⁻¹|a₁ − L|
- Proof: geometric comparison → Cauchy → completeness
- Revisit Ch 2 examples with convergence rates: Babylonian/√2, nested radicals
- **√2 continued fraction revisited**: the tail [2; 2̄] satisfies t = 2 + 1/t
  - Iteration f(x) = 2 + 1/x is a contraction on [2, 3]
  - Fixed point is 1 + √2; then √2 = t − 1, same convergence rate
  - Periodic CF ↔ iteration — preview of Lagrange
- Remark: for those who know calculus, xₙ₊₁ = cos(xₙ) is another example

---

### 4.4 Continued Fractions
- Definition: [a₀; a₁, a₂, ...]
- Convergents pₙ/qₙ and recurrence relations
- Key identity: pₙqₙ₋₁ − pₙ₋₁qₙ = (−1)ⁿ⁻¹
- **Convergence**: even convergents ↑, odd ↓, apply §4.1 technique
- Every real has a CF; uniqueness
- **Lagrange**: quadratic irrationals ↔ eventually periodic
  - Connection to contraction maps: periodicity gives iteration
- Best rational approximation property
- **Pell connection**: convergents of √N solve p² − Nq² = ±1
  - Full √2 story complete: CF [1; 2̄] explains Pell solutions and Babylonian
- **The golden ratio surprise**: φ = [1; 1̄]
  - All 1s means slowest-growing denominators (Fibonacci!)
  - Worst case for rational approximation: "most irrational number"

---

### 4.5 Archimedes' π
- Inscribed/circumscribed polygon half-perimeters aₙ, bₙ
- Doubling recurrence: b₂ₙ = H(aₙ, bₙ), a₂ₙ = G(aₙ, b₂ₙ)
- Each sequence monotone → MCT → converge separately
- **Ratio trick**: rₙ = aₙ/bₙ → 1 (contraction or direct analysis)
- **Definition**: π = lim aₙ = lim bₙ
- Corollaries: circumference = 2π, area = π
- **Viète derived**: connect polygon ratios to nested radical product, show equals 2/π
- Archimedes' numerical bounds

---



## Chapter 5: Commutativity and Limits (working title)

**Overall narrative**: Operations that work freely for finite sums need conditions for infinite ones. Rearranging terms, swapping order of summation, interchanging a limit with a sum — all can fail without the right hypotheses. This chapter maps out when these operations are safe.

---

### Historical Prelude
- Euler's free manipulations: often right, sometimes wrong
- Riemann's shocking theorem (1854): rearrangements can change the sum
- Tannery, Mertens: conditions that make interchange safe
- The moral: infinity requires discipline

---

### 5.1 Rearrangements
- **Definition**: rearrangement via bijection π: ℕ → ℕ
- **Theorem**: absolutely convergent series can be rearranged freely (same sum)
- **Theorem (Riemann)**: conditionally convergent series can be rearranged to any value in ℝ ∪ {±∞}
- Proof sketch: positive and negative parts both diverge; alternate to hit target
- Example: rearranging alternating harmonic to (3/2)ln(2)
- Moral: absolute = robust, conditional = fragile

---

### 5.2 Iterated Limits
- **Definition**: double sequence a_{mn}
- **Definition**: iterated limits lim_m lim_n a_{mn} vs lim_n lim_m a_{mn}
- Examples where they differ: m/(m+n), (m-n)/(m+n), mn/(m²+n²)
- **Definition**: double limit lim_{m,n→∞} a_{mn}
- **Theorem**: if double limit exists and both iterated limits exist, they agree
- Remark: converse false — equal iterated limits don't guarantee double limit exists

---

### 5.3 Double Sums
- **Definition**: double series Σ_m Σ_n a_{mn}
- Order can matter: example where Σ_m Σ_n ≠ Σ_n Σ_m
- **Definition**: absolute convergence over the grid (Σ_{m,n} |a_{mn}| < ∞)
- **Theorem**: absolute convergence ⟹ can swap order, same sum
- **More generally**: under absolute convergence, any ordering works
  - Rows, columns (iterated sums)
  - Expanding squares
  - Anti-diagonals
- **Cauchy product**: Σaₙ times Σbₙ, summed along anti-diagonals (j + k = n)
  - cₙ = Σ_{k=0}^n aₖb_{n-k}
- **Theorem**: both series absolutely convergent ⟹ Cauchy product converges absolutely to (Σaₙ)(Σbₙ)
- **Theorem (Mertens)**: one absolutely convergent + one convergent ⟹ Cauchy product converges to (Σaₙ)(Σbₙ)
- **Application**: (1/(1-x))² = Σ(n+1)xⁿ via squaring geometric series
- **Application**: (Σxⁿ/n!)(Σyⁿ/n!) = Σ(x+y)ⁿ/n! via binomial identity
  - "This series has a remarkable property... deserves a name" (preview of Ch6)

---

### 5.4 Limits and Sums (Tannery)
- Different situation: lim_n Σ_k a_k(n) vs Σ_k lim_n a_k(n)
- Example where they differ: a_k(n) = 1/n for k ≤ n, else 0
- **Theorem (Tannery)**: if |a_k(n)| ≤ M_k for all n, and ΣM_k < ∞, then limit and sum commute
- Proof outline: split into head and tail, control each
- **Big application**: (1 + x/n)ⁿ = Σxᵏ/k!
  - Binomial expansion → for each k, the k-th term → xᵏ/k!
  - Domination: |term| ≤ |x|ᵏ/k!, and Σ|x|ᵏ/k! converges
  - Tannery applies: can interchange
- **Corollary**: e = Σ1/n! (connecting Ch2 limit definition to series)

---




## Chapter 6: Continuity

**Overall narrative**: We've studied sequences converging to numbers. Which functions "respect" that structure? The answer is continuity — functions that preserve convergence. On closed bounded intervals, continuous functions have remarkable forced properties. Power series provide a fundamental way to build continuous functions.

**The arc:**
> Definition(s) of continuity → Building continuous functions → Power series are continuous → Properties on [a,b] → Uniform continuity

---

## Historical Prelude

- What is a function? Euler's formulas → Fourier's challenge → Dirichlet's general definition
- What is continuity? Intuition: "no breaks," "draw without lifting pen"
- Dirichlet's function (1829): 1 on rationals, 0 on irrationals — discontinuous everywhere
- Weierstrass's monster (1872): continuous everywhere, differentiable nowhere
- These examples forced rigorous definitions

---

## 6.1 Continuity

**[NOTE: Need to decide which definition is primary]**

**Option A (Sequences first)**:

- Motivation: which functions preserve convergence?
- Sequential definition: f continuous at a iff (xₙ → a ⟹ f(xₙ) → f(a))
- ε-δ definition as equivalent local formulation
- Prove equivalence

**Option B (ε-δ first)**:

- Historical motivation: capturing "no breaks"
- ε-δ definition: ∀ε > 0 ∃δ > 0: |x − a| < δ ⟹ |f(x) − f(a)| < ε
- Connection to ε-N game from Ch 2
- Sequential characterization as equivalent (often easier for proofs)
- Prove equivalence

**Then (either way):**

- Limits of functions: lim_{x→a} f(x) (with 0 < |x − a|)
- Sequential characterization of function limits
- One-sided limits
- Continuity ⟺ lim_{x→a} f(x) = f(a)
- Types of discontinuities: removable, jump, essential
- Examples: sin(x)/x at 0 (removable), sign(x) at 0 (jump), sin(1/x) at 0 (essential), Dirichlet (essential everywhere)

---

## 6.2 Building Continuous Functions

- **Algebra of continuous functions**: sums, differences, products, quotients
  - Proof via sequential characterization + limit laws from Ch 2
- **Composition**: g continuous at a, f continuous at g(a) ⟹ f ∘ g continuous at a
- **Corollaries**: |f|, max(f,g), min(f,g) continuous
- **Basic examples**:
  - Constants and f(x) = x are continuous
  - Polynomials (induction on sums/products)
  - Rational functions (where denominator ≠ 0)
  - √x on [0, ∞)

---

## 6.3 Power Series I: Continuity

- **Definition**: power series Σaₙxⁿ
- **Radius of convergence R**: recall ratio/root tests from Ch 4
- **Theorem**: Power series are continuous on (−R, R)
  - Proof via Tannery (Ch 5)
- **Theorem (Abel)**: If Σaₙ converges, then lim_{x→1⁻} Σaₙxⁿ = Σaₙ
  - Power series is left-continuous at boundary when series converges there
- **Why Abel matters**: The xⁿ example
  - fₙ(x) = xⁿ converges pointwise on [0,1]
  - Limit exists at endpoint x = 1 (it's 1)
  - But limit function f is discontinuous at x = 1!
  - Convergence at endpoint doesn't automatically give continuity
  - Abel says power series are special: convergence of series ⟹ continuity
- **Remark**: Full story of when limits of functions preserve continuity in Function Spaces chapter
- **Preview**: Power Series II in derivatives chapter (term-by-term differentiation)

---

## 6.4 Continuous Functions on [a,b]

### The Intermediate Value Theorem

- **Theorem (IVT)**: If f continuous on [a,b] and y between f(a) and f(b), then f(c) = y for some c
- Proof via completeness: c = sup{x : f(x) < y}
- **Corollary**: Continuous image of interval is interval
- **Applications**:
  - nth roots exist (f(x) = xⁿ)
  - Fixed point theorem: f: [a,b] → [a,b] continuous ⟹ f(c) = c for some c
  - Every odd-degree polynomial has a real root

### Boundedness and the Extreme Value Theorem

- **Theorem**: Continuous on [a,b] ⟹ bounded
  - Proof via Bolzano-Weierstrass
- **Theorem (EVT)**: Continuous on [a,b] ⟹ attains maximum and minimum
  - Proof via BW: xₙ with f(xₙ) → sup f; extract convergent subsequence

### Monotone Functions and Inverses

- **Definition**: increasing, decreasing, strictly monotone
- **Theorem**: Monotone on (a,b) ⟹ one-sided limits exist at every point
  - Proof via sup/inf
- **Corollary**: Monotone functions have only jump discontinuities
- **Theorem**: Strictly monotone ⟹ injective
- **Theorem**: Strictly monotone + continuous on [a,b] ⟹ inverse is continuous
  - Proof: f injective (strict monotone) + surjective onto range (IVT) ⟹ f⁻¹ exists; continuity via subsequential limits
- **Payoff**: When we define log = exp⁻¹, arcsin = sin⁻¹, etc., continuity is automatic

---

## 6.5 Uniform Continuity

### The Problem

- In ordinary continuity, δ depends on ε *and* the point a
- Can one δ work for all points simultaneously?

### Definition

- f uniformly continuous on S if ∀ε > 0 ∃δ > 0: x, y ∈ S and |x − y| < δ ⟹ |f(x) − f(y)| < ε

### Non-examples

- f(x) = 1/x on (0,1): near 0, need smaller and smaller δ
- f(x) = x² on ℝ: as x → ∞, function changes faster and faster

### Results

- **Theorem**: Uniformly continuous ⟹ continuous (trivial)
- **Theorem**: Continuous on [a,b] ⟹ uniformly continuous on [a,b]
  - Proof via BW: if not, get sequences xₙ, yₙ with |xₙ − yₙ| → 0 but |f(xₙ) − f(yₙ)| ≥ ε; extract convergent subsequence, get contradiction
- **Extension Theorem**: Uniformly continuous on (a,b) ⟹ extends to continuous function on [a,b]
  - Proof: show lim_{x→a⁺} f(x) exists via Cauchy criterion
- **Corollary**: Uniformly continuous on bounded set ⟹ bounded

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Functions wilder than expected; need rigorous definitions |
| 6.1 Continuity | Definitions (sequential, ε-δ), limits of functions, discontinuities |
| 6.2 Building | Algebra of continuous functions, basic examples |
| 6.3 Power Series I | Continuity inside radius, Abel at boundary |
| 6.4 Functions on [a,b] | IVT, EVT, monotone inverses |
| 6.5 Uniform Continuity | One δ for all points; closed intervals force it |

## Key Theorems

1. Sequential ⟺ ε-δ characterization of continuity
2. Algebra: sums, products, quotients, compositions preserve continuity
3. Power series continuous on (−R, R) via Tannery
4. Abel's theorem: continuity at boundary when series converges
5. IVT: continuous image of interval is interval
6. EVT: continuous on [a,b] ⟹ bounded and attains bounds
7. Continuous on [a,b] ⟹ uniformly continuous
8. Strictly monotone + continuous ⟹ continuous inverse

---

## Exercises (Selected)

### Section 6.1

- Prove f(x) = x sin(1/x) (with f(0) = 0) is continuous at 0
- Show Dirichlet's function is discontinuous everywhere
- Classify discontinuities of f(x) = ⌊x⌋ (floor function)
- If f and g continuous and f = g on a dense set, prove f = g everywhere

### Section 6.2

- Prove max(f, g) = (f + g + |f − g|)/2
- Give an example where f + g is continuous but f and g are not
- Prove f continuous and nonzero at a ⟹ f nonzero on some neighborhood of a

### Section 6.3

- Use Abel's theorem to show ln(2) = 1 − 1/2 + 1/3 − 1/4 + ⋯
- If Σaₙxⁿ = 0 for all x in (−r, r), prove aₙ = 0 for all n
- Prove Σxⁿ/n is continuous on (−1, 1) and left-continuous at x = 1

### Section 6.4

- Prove every polynomial of odd degree has a real root
- Show f(x) = x + sin(x) has a unique fixed point
- Give an example of a bounded continuous function on (0,1) that doesn't attain its sup
- If f strictly increasing and continuous on [a,b], prove f⁻¹ is strictly increasing

### Section 6.5

- Give an example of a continuous function on (0,1) that is not uniformly continuous
- Prove f(x) = √x is uniformly continuous on [0, ∞)
- Prove f Lipschitz (|f(x) − f(y)| ≤ K|x − y|) ⟹ f uniformly continuous
- Is sin(x²) uniformly continuous on ℝ?

---

## Dependencies

**Requires from earlier chapters**:

- Completeness of ℝ, sup/inf (Chapter 1)
- Sequences, limit laws, Bolzano-Weierstrass, Cauchy sequences (Chapters 2–3)
- Series, ratio/root tests, radius of convergence (Chapter 4)
- Tannery's theorem (Chapter 5)

**Sets up for later chapters**:

- Derivatives: EVT → Rolle → MVT; inverse function theorem; Power Series II
- Integration: uniform continuity → continuous functions are integrable
- Function Spaces: uniform convergence (full treatment of limits preserving continuity)


---



## Chapter 7: Differentiation

**Overall narrative**: Differentiation captures instantaneous rate of change. The derivative f' is itself a function, and we can apply our tools to it. The Mean Value Theorem connects f' to the behavior of f. Power series are infinitely differentiable and equal their Taylor series — but general smooth functions need not be. The exponential is the crown jewel: built entirely from calculus.

**The arc:**
> Definition and rules → MVT (what f' says about f) → Power Series II: Taylor's theorem → The exponential → Newton's method

---

### Historical Prelude

- Fermat's method of adequality (1630s): finding maxima/minima by mysterious small increments
- Newton's fluxions, Leibniz's infinitesimals (1680s): calculus works, but what ARE these things?
- Berkeley's critique (1734): "ghosts of departed quantities"
- Weierstrass (1860s): the ε-δ definition finally makes it rigorous
- Weierstrass's monster (1872): continuous but nowhere differentiable — the gap between continuous and differentiable is vast

---

### 7.1 Differentiation Rules

**The Definition**

- f differentiable at a if lim_{h→0} (f(a+h) - f(a))/h exists
- Alternative form: lim_{x→a} (f(x) - f(a))/(x - a)
- Notation: f'(a), df/dx, Df(a)

**Differentiability Implies Continuity**

- Theorem: f differentiable at a ⟹ f continuous at a
- Warning: converse false! |x| at 0

**Basic Rules**

- Linearity: (f + g)' = f' + g', (cf)' = cf'
- Product rule: (fg)' = f'g + fg'
- Quotient rule: (f/g)' = (f'g - fg')/g²
- Power rule: (xⁿ)' = nxⁿ⁻¹

**Chain Rule**

- Theorem: (f ∘ g)'(a) = f'(g(a)) · g'(a)
- Proof via auxiliary function φ (handles g(a+h) = g(a) case)
- Leibniz notation: dy/dx = (dy/du)(du/dx)

**Inverse Function Derivative**

- Theorem: (f⁻¹)'(f(a)) = 1/f'(a) when f'(a) ≠ 0
- Leibniz notation: dx/dy = 1/(dy/dx)
- Example: (√x)' = 1/(2√x)

---

### 7.2 The Mean Value Theorem and Consequences

**Fermat's Theorem**

- Theorem: f has local extremum at c and f differentiable at c ⟹ f'(c) = 0
- Proof: one-sided difference quotients have opposite signs

**Rolle's Theorem**

- Theorem: f continuous on [a,b], differentiable on (a,b), f(a) = f(b) ⟹ f'(c) = 0 for some c ∈ (a,b)
- Proof via EVT + Fermat

**The Mean Value Theorem**

- Theorem: f continuous on [a,b], differentiable on (a,b) ⟹ f(b) - f(a) = f'(c)(b-a) for some c
- Proof: apply Rolle to g(x) = f(x) - [(f(b)-f(a))/(b-a)](x-a)
- Geometric interpretation: some tangent parallel to secant

**Cauchy's Mean Value Theorem**

- Theorem: (f(b) - f(a))g'(c) = (g(b) - g(a))f'(c) for some c
- Proof: Rolle applied to appropriate combination

**Consequences: f' Controls f**

- Theorem: f' = 0 on interval ⟹ f constant
- Theorem: f' > 0 on interval ⟹ f strictly increasing
- Corollary: f' ≥ 0 ⟺ f increasing; f' ≤ 0 ⟺ f decreasing
- Remark: first/second derivative tests for extrema in exercises

**Darboux's Theorem**

- Theorem: If f differentiable on [a,b] and k between f'(a) and f'(b), then f'(c) = k for some c
- Consequence: f' has IVP even if discontinuous
- Consequence: f' cannot have jump discontinuities

**Lipschitz Functions**

- Definition: |f(x) - f(y)| ≤ K|x - y| for all x, y
- Theorem: |f'| ≤ K on interval ⟹ f is Lipschitz with constant K
- Corollary: Lipschitz ⟹ uniformly continuous
- Connection: |f'| < 1 ⟹ contraction (links to Ch 4 and Newton)

**L'Hôpital's Rule**

- Theorem: f(a) = g(a) = 0, g' ≠ 0 near a, lim f'/g' = L ⟹ lim f/g = L
- Proof via Cauchy MVT
- Warning: must check lim f'/g' exists
- Remark: ∞/∞ form and x → ∞ in exercises

---

### 7.3 Power Series II: Taylor's Theorem

**Higher Derivatives**

- Definition: f'', f''', ..., f⁽ⁿ⁾
- Notation: f⁽⁰⁾ = f

**Taylor Polynomials**

- Definition: Pₙ(x) = Σₖ₌₀ⁿ f⁽ᵏ⁾(a)/k! (x-a)ᵏ
- Unique polynomial of degree ≤ n matching f, f', ..., f⁽ⁿ⁾ at a

**Taylor's Theorem**

- Generalized Rolle: f, f', ..., f⁽ⁿ⁾ all vanish at a, and f(b) = 0 ⟹ f⁽ⁿ⁺¹⁾(c) = 0 for some c
- Polynomial MVT: f and h share first n derivatives at a, and f(b) = h(b) ⟹ f⁽ⁿ⁺¹⁾(c) = h⁽ⁿ⁺¹⁾(c)
- Theorem (Lagrange remainder): f(x) = Pₙ(x) + f⁽ⁿ⁺¹⁾(c)/(n+1)! (x-a)ⁿ⁺¹
- Error bound: |f(x) - Pₙ(x)| ≤ M/(n+1)! |x-a|ⁿ⁺¹ where M bounds |f⁽ⁿ⁺¹⁾|

**Term-by-Term Differentiation**

- Lemma: Σaₙxⁿ and Σnaₙxⁿ⁻¹ have same radius of convergence
- Theorem: f(x) = Σaₙxⁿ ⟹ f'(x) = Σnaₙxⁿ⁻¹ on (-R, R)
- Proof via Tannery/dominated convergence
- Corollary: Power series are infinitely differentiable
- Corollary: aₙ = f⁽ⁿ⁾(0)/n! — power series equal their Taylor series

**When Does the Taylor Series Converge to f?**

- Key question: Rₙ(x) → 0?
- Power series: always yes (by construction)
- General smooth functions: not necessarily!
- Preview: smooth ≠ analytic (example requires exp, see 7.4)

**Warning: Takagi's Function**

- Definition: T(x) = Σ s(2ⁿx)/2ⁿ where s(x) = dist(x, nearest integer)
- Theorem: T is continuous everywhere, differentiable nowhere
- Proof sketch: uniform convergence gives continuity; careful difference quotient analysis gives nowhere differentiable
- **The lesson**: Power series (limits of polynomials) are infinitely differentiable. But general limits of differentiable functions can be nowhere differentiable.
- Remark: Full story of when limits preserve differentiability in Function Spaces chapter

---

### 7.4 The Exponential Function

**The Functional Equation Constrains the Derivative**

- Theorem: If aˣ differentiable, then (aˣ)' = cₐ · aˣ for some constant cₐ
- Which base gives cₐ = 1?

**Building exp from Calculus**

- We seek: exp' = exp and exp(0) = 1
- Taylor says: must have exp(x) = Σxⁿ/n!
- This series converges for all x (ratio test)

**Verifying exp Works**

- Theorem: exp'(x) = exp(x) (term-by-term differentiation)
- Theorem: exp(x+y) = exp(x)exp(y) (Cauchy product — callback to Ch 5!)
- So exp is an exponential for some base

**Identifying the Base**

- Definition: e = exp(1) = Σ1/n!
- Theorem: exp(x) = eˣ
- Theorem: e = lim(1 + 1/n)ⁿ (connects to Ch 2 definition and Ch 5 Tannery)

**Computing e**

- Error bound: 0 < e - Sₙ < 1/(n! · n)
- Example: S₁₀ gives e ≈ 2.7182818 to 7 decimals

**e Is Irrational**

- Theorem: e ∉ ℚ
- Proof: q!·e = (integer) + (something in (0,1)), contradiction

**General Exponentials**

- Corollary: (aˣ)' = cₐ · aˣ where cₐ = lim(aʰ-1)/h
- Remark: cₐ = ln(a), defined via integration in Ch 8

**Warning: Smooth ≠ Analytic**

- Definition: f(x) = e^{-1/x²} for x ≠ 0, f(0) = 0
- Theorem: f is smooth and f⁽ⁿ⁾(0) = 0 for all n
- Consequence: Taylor series at 0 is identically 0, but f ≠ 0
- **The lesson**: Smooth functions can fail to equal their Taylor series. Power series are special — they're analytic by construction.

---

### 7.5 Newton's Method

**The Algorithm**

- Problem: Find root of f(x) = 0
- Newton iteration: xₙ₊₁ = xₙ - f(xₙ)/f'(xₙ)
- Geometric interpretation: follow tangent line to x-axis

**Convergence via Contraction**

- Define g(x) = x - f(x)/f'(x); fixed point of g is root of f
- Compute: g'(x) = f(x)f''(x)/(f'(x))²
- At simple root r: g'(r) = 0
- Theorem: For x₀ near r, Newton converges
- Proof: g'(r) = 0 ⟹ |g'| < 1 near r ⟹ g is contraction

**Quadratic Convergence via Taylor**

- Theorem: εₙ₊₁ ≈ [f''(r)/(2f'(r))] εₙ²
- Proof: Taylor expand f(xₙ) around r
- Consequence: errors square — digits roughly double each step

**Examples**

- √2: xₙ₊₁ = (xₙ + 2/xₙ)/2 — the Babylonian method! (callback to Ch 2)
- ∛5: xₙ₊₁ = (2xₙ + 5/xₙ²)/3

**Failure Modes**

- Multiple roots: g'(r) ≠ 0, only linear convergence
- Bad starting points: may cycle, diverge, or find wrong root
- f'(xₙ) = 0: division by zero

**Looking Ahead**

- Newton is fixed-point iteration: xₙ₊₁ = g(xₙ)
- Picard iteration for ODEs: same idea in function space
- Contraction mapping theorem (Ch 4) guarantees convergence in both settings

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Historical development; Weierstrass's monster |
| 7.1 Rules | Definition and computational machinery |
| 7.2 MVT | f' controls f; Darboux, Lipschitz |
| 7.3 Power Series II | Taylor's theorem; term-by-term differentiation; Takagi warning |
| 7.4 Exponential | Build exp; smooth ≠ analytic |
| 7.5 Newton | Fixed-point iteration; preview Picard |

## Key Theorems

1. Differentiable ⟹ continuous (converse false)
2. Chain rule and inverse function derivative
3. Mean Value Theorem
4. f' = 0 ⟹ constant; f' > 0 ⟹ increasing
5. Darboux: f' has IVP
6. Taylor's theorem with Lagrange remainder
7. Term-by-term differentiation of power series
8. exp' = exp; exp(x+y) = exp(x)exp(y)
9. e is irrational
10. Newton converges quadratically near simple roots

---

## Exercises (Selected)

### Section 7.1

- Prove (xⁿ)' = nxⁿ⁻¹ by induction
- Product rule for three functions: (fgh)' = ?
- Prove: f differentiable at a and f(a) ≠ 0 ⟹ 1/f differentiable at a

### Section 7.2

- First derivative test for local extrema
- Second derivative test for local extrema
- L'Hôpital for ∞/∞ form
- L'Hôpital as x → ∞
- Construct f with f' discontinuous but bounded

**Guided Exercises: Convexity**

- Definition: f convex if f(λx + (1-λ)y) ≤ λf(x) + (1-λ)f(y)
- Prove: f differentiable and convex ⟺ f' increasing
- Corollary: f'' ≥ 0 ⟺ f convex
- Prove: f convex ⟹ f(y) ≥ f(x) + f'(x)(y-x) (tangent lines lie below graph)
- Prove: f convex on open interval ⟹ f continuous
- ★ Jensen's inequality

### Section 7.3

- Taylor series of 1/(1-x)², 1/(1-x)³ by differentiation
- sin and cos Taylor series (assuming these functions exist)
- Prove Taylor with integral remainder (connects to Ch 8)
- ★ Complete Takagi nowhere-differentiability proof

### Section 7.4

- Prove exp(x) ≥ 1 + x for all x
- Prove e < 3 using partial sums
- Show eˣ/xⁿ → ∞ as x → ∞ (exponential beats polynomial)
- Compute e to 10 decimal places; how many terms needed?
- ★ Complete the induction: f(x) = e^{-1/x²} has f⁽ⁿ⁾(0) = 0

### Section 7.5

- Apply Newton to find ⁴√7
- What happens applying Newton to f(x) = x³ starting at x₀ = 1?
- Modified Newton for multiple roots
- ★ Newton for f(x) = x² - a gives Babylonian method

---

## Dependencies

**Requires from earlier chapters**:

- Limits, continuity, IVT, EVT (Ch 6)
- Bolzano-Weierstrass (Ch 3)
- Series, radius of convergence (Ch 4)
- Cauchy product, Tannery (Ch 5)
- (1 + x/n)ⁿ = Σxⁿ/n! (Ch 5)
- Contraction mapping theorem (Ch 4)

**Sets up for later chapters**:

- Ch 8 (Integration): FTC uses MVT consequences
- Ch 8 (Elementary Functions): Inverse function derivative for log, arcsin; identify cₐ = ln(a)
- Function Spaces: Picard iteration generalizes Newton




---


# Chapter 8: Integration

## Overview

Integration is an independent subject, older than calculus. We formalize it axiomatically: the axioms force the value of integrals for continuous functions. We then verify that this forced value actually defines an integral satisfying the axioms — so integrals exist. With existence secured, we rigorously define classical geometric quantities.

**The arc:**
> History → Axioms force the value → Darboux verifies existence → Geometry defined → Computing (exponential tease)

---

## Historical Prelude

- **The problem**: What is area under a curve? What is arc length? Ancient questions.
- **Archimedes** (~250 BCE): Method of exhaustion
  - Computed ∫₀¹ x² = 1/3 by trapping between rectangles
  - Studied arc length of convex curves; stated convexity axiom he couldn't prove
  - Integration without calculus — pure geometric reasoning
- **Cavalieri** (1630s): Method of indivisibles
  - Areas as "sums of lines," volumes as "stacks of slices"
  - Cavalieri's principle: equal cross-sections ⟹ equal volumes
  - Philosophically suspect, computationally powerful
- **Fermat** (1630s): ∫₀¹ xⁿ = 1/(n+1) using geometric partitions
  - Forty years before Newton and Leibniz!
- **The message**: Integration existed for 2000 years before FTC connected it to differentiation

---

## 8.1 The Axiomatic Integral

### The Axioms

- What properties should ∫[a,b] f have?
- **Axiom 1 (Rectangles)**: ∫[a,b] k = k(b−a) for constant k
- **Axiom 2 (Monotonicity)**: f ≤ g on [a,b] ⟹ ∫[a,b] f ≤ ∫[a,b] g
- **Axiom 3 (Additivity)**: ∫[a,b] f = ∫[a,c] f + ∫[c,b] f for c ∈ (a,b)
- These say nothing about *which* functions are integrable — only how the integral behaves

### Theorems from the Axioms

- **Bounds theorem**: m ≤ f ≤ M ⟹ m(b−a) ≤ ∫f ≤ M(b−a)
  - Proof from monotonicity + rectangles
- **Continuity of F**: F(x) = ∫ₐˣ f is continuous
  - Proof from additivity + bounds

### Upper and Lower Sums

- Partition P = {a = x₀ < x₁ < ... < xₙ = b}
- mᵢ = inf f on [xᵢ₋₁, xᵢ], Mᵢ = sup f on [xᵢ₋₁, xᵢ]
- Lower sum L(f,P) = Σ mᵢ(xᵢ − xᵢ₋₁)
- Upper sum U(f,P) = Σ Mᵢ(xᵢ − xᵢ₋₁)

### The Trapping Theorem

- **Theorem**: Any integral satisfying the axioms must satisfy L(f,P) ≤ ∫f ≤ U(f,P) for all P
- Proof: Apply axioms to each subinterval, sum
- **Corollary**: sup_P L(f,P) ≤ ∫f ≤ inf_P U(f,P)

### When is the Value Forced?

- If sup_P L(f,P) = inf_P U(f,P), there is only one possible value for ∫f
- The axioms completely determine the integral in this case
- Key question: For which functions does sup L = inf U?

### Theorem: Continuous Functions Have Forced Values

- **Theorem**: If f is continuous on [a,b], then sup_P L(f,P) = inf_P U(f,P)
- Proof:
  - f continuous on compact [a,b] ⟹ f uniformly continuous
  - Given ε > 0, choose δ from uniform continuity
  - Partition P with mesh < δ ⟹ Mᵢ − mᵢ < ε/(b−a) on each subinterval
  - So U(f,P) − L(f,P) < ε
  - Since ε arbitrary, sup L = inf U
- **Corollary**: If f is continuous and an integral satisfying the axioms exists, then the axioms force its value uniquely

### Examples: Values Forced by the Axioms

- **Example**: For f(x) = x on [0,1], the integral must equal 1/2
  - Uniform partition Pₙ: L(f,Pₙ) = (n−1)/(2n), U(f,Pₙ) = (n+1)/(2n)
  - Both → 1/2, so sup L = inf U = 1/2
- **Example**: For f(x) = x² on [0,1], the integral must equal 1/3
  - Calculation using Σi² = n(n+1)(2n+1)/6 shows sup L = inf U = 1/3
- These values are *forced by the axioms* for any integral that exists

### The Question

- We know *what* the integral must be for continuous functions
- But does an integral satisfying the axioms actually *exist*?
- We must verify that defining ∫f = sup L = inf U actually satisfies the axioms

---

## 8.2 The Darboux Integral

### The Definition

- For continuous f on [a,b], define: ∫ₐᵇ f = sup_P L(f,P) = inf_P U(f,P)
- We must verify this definition satisfies our three axioms

### Partitions and Refinements

- Partition P of [a,b]: finite set {x₀, ..., xₙ} with a = x₀ < ... < xₙ = b
- Refinement: Q refines P if P ⊂ Q
- **Lemma**: Refinements improve bounds: P ⊂ Q ⟹ L(f,P) ≤ L(f,Q) ≤ U(f,Q) ≤ U(f,P)
- **Corollary**: Every lower sum ≤ every upper sum (use common refinement)

### Verification of Axiom 1 (Rectangles)

- For constant k: mᵢ = Mᵢ = k for any partition
- So L(k,P) = U(k,P) = k(b−a)
- Therefore ∫k = k(b−a) ✓

### Verification of Axiom 2 (Monotonicity)

- If f ≤ g on [a,b], then on each subinterval: inf f ≤ inf g, sup f ≤ sup g
- So L(f,P) ≤ L(g,P) and U(f,P) ≤ U(g,P) for all P
- Taking sup over L and inf over U preserves inequality
- Therefore f ≤ g ⟹ ∫f ≤ ∫g ✓

### Verification of Axiom 3 (Additivity)

- For partitions P of [a,c] and Q of [c,b], P ∪ Q is a partition of [a,b]
- L(f, P∪Q) = L(f,P) + L(f,Q) and similarly for U
- Taking sup/inf: ∫ₐᵇ f = ∫ₐᶜ f + ∫ᶜᵇ f ✓

### The Integral Exists

- **Theorem**: For continuous f on [a,b], the Darboux integral exists and satisfies all three axioms
- The forced value is the actual value

### Payoff: Other Integrable Functions

- The definition ∫f = sup L = inf U makes sense whenever sup L = inf U
- **Corollary**: Bounded functions with finitely many discontinuities are integrable
  - Near discontinuities: contribution to U − L bounded by 2M · (small width)
  - Away from discontinuities: uniform continuity controls U − L
- **Exercise**: Monotone functions on [a,b] are integrable
- We don't belabor integrability criteria here — the Lebesgue integral (later chapter) gives a fuller picture

---

## 8.3 Integration and Geometry

With existence secured for continuous functions, we can rigorously define classical geometric quantities.

### Arc Length

- **Motivation**: Approximate curve by segments; segment length ≈ √(1 + (f')²) Δx
- **Definition**: Arc length of y = f(x) on [a,b] is ∫ₐᵇ √(1 + (f')²) dx (when f' continuous)
- **Example**: Upper semicircle y = √(1−x²) has arc length ∫₋₁¹ 1/√(1−x²) dx
  - Improper integral (blows up at ±1)
  - If it converges, this *defines* π as the semicircle's length

### Archimedes' Inequality for Convex Curves

- Archimedes needed this as an *axiom*; we can *prove* it
- **Theorem**: Among convex curves with same endpoints, the one closer to the chord is shorter
- Proof uses convexity facts from Ch 7 guided exercises:
  - f convex ⟺ f' increasing
  - f'' ≥ 0 ⟺ f convex
- **Corollary**: Straight line is shortest path between two points
- **Corollary**: Convex curve lies between inscribed and circumscribed polygon lengths

### The Two Definitions of π Agree

- **Ch 4 definition**: π = lim (perimeter of inscribed n-gon in unit circle)/2
- **Ch 8 definition**: π = arc length of unit semicircle = ∫₋₁¹ 1/√(1−x²) dx
- **Theorem**: These are equal
- Proof: By Archimedes' inequality, semicircle arc length is trapped between inscribed and circumscribed polygon perimeters, which both → π (Ch 4)

### Area Between Curves

- **Definition**: If f ≥ g on [a,b], area between curves = ∫ₐᵇ [f(x) − g(x)] dx
- **Example**: Area of unit disk = ∫₋₁¹ 2√(1−x²) dx
  - This defines "area of disk" rigorously
  - We will show this equals π (the same π!) after developing more tools

### Volume by Slicing (Cavalieri Rigorous)

- **Definition**: Solid with cross-sectional area A(x) has volume ∫ₐᵇ A(x) dx
- **Cavalieri's Principle**: Equal cross-sections ⟹ equal volumes (immediate)
- **Example (Pyramid)**: V = ∫₀ʰ (sx/h)² dx = s²h/3 = (1/3) · base · height
- **Example (Cone)**: V = ∫₀ʰ π(rx/h)² dx = πr²h/3
- **Example (Sphere)**: V = ∫₋ᴿᴿ π(R² − x²) dx = (4/3)πR³

### Volume of Revolution

- **Definition**: Rotating y = f(x) around x-axis gives volume ∫ₐᵇ π[f(x)]² dx
- Cross-sections are disks of radius f(x)

---

## 8.4 Computing Integrals

### The Direct Method

1. Choose partitions Pₙ with mesh → 0
2. Compute L(f, Pₙ) and U(f, Pₙ)
3. Show both converge to same limit
4. That limit is ∫f

### Example: ∫₀¹ xⁿ = 1/(n+1)

- Uniform partition Pₙ = {0, 1/n, 2/n, ..., 1}
- U(xⁿ, Pₙ) = (1/n^{n+1}) Σᵢⁿ iⁿ
- Sum is polynomial of degree n+1 with leading coefficient 1/(n+1)
- So U → 1/(n+1); similarly L → 1/(n+1)
- Confirms the axiomatic prediction from 8.1

### Example: ∫₀¹ eˣ = e − 1

- U(eˣ, Pₙ) = (1/n) · e^{1/n}(e−1)/(e^{1/n}−1) via geometric series
- As n → ∞: e^{1/n} → 1 and (e^{1/n}−1)/(1/n) → 1
- So U → e − 1; similarly L → e − 1

### Example: ∫₀¹ 2ˣ = 1/ln 2

- Similar calculation yields (2−1)/ln 2 = 1/ln 2

### The Exponential Observation

- We computed: ∫₀¹ eˣ = e¹ − e⁰
- The integral of eˣ equals eˣ evaluated at endpoints!
- For polynomials: elaborate Σiⁿ calculations
- For exponential: the answer "knows" the boundary values
- **The hint**: (eˣ)' = eˣ. Integrating eˣ gives back eˣ.
- Is there a general principle connecting integration and differentiation?
- Chapter 9 reveals the Fundamental Theorem of Calculus

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | Integration existed 2000 years before calculus |
| 8.1 Axiomatic | Axioms force the value for continuous functions |
| 8.2 Darboux | Verify the forced value satisfies axioms → integral exists |
| 8.3 Geometry | Define arc length, area, volume; π consistency |
| 8.4 Computing | Direct computation; exponential hints at FTC |

## Key Theorems

1. **Trapping Theorem** (8.1): Any integral satisfying axioms has L(f,P) ≤ ∫f ≤ U(f,P)
2. **Continuous Functions Forced** (8.1): For continuous f, sup L = inf U, so the value is determined
3. **Axiom Verification** (8.2): Darboux integral satisfies all three axioms
4. **Archimedes' Inequality** (8.3): Among convex curves, closer to chord ⟹ shorter
5. **π Consistency** (8.3): Polygon limit = arc length integral

## Definitions Introduced

- Arc length: ∫√(1+(f')²) dx
- Area between curves: ∫(f−g) dx
- Volume by slicing: ∫A(x) dx (Cavalieri rigorous)
- Volume of revolution: ∫π[f(x)]² dx

---

## Exercises (Selected)

### Section 8.1

- Use the axioms to show: if x³ integrable on [0,1] then ∫₀¹ x³ = 1/4
- Prove the bounds theorem from the axioms
- Show that for f(x) = x on [0,2], sup L = inf U = 2

### Section 8.2

- Prove: f integrable on [a,b] iff for all ε > 0, exists P with U(f,P) − L(f,P) < ε
- Prove: f monotone on [a,b] ⟹ f integrable
- Give an example of a bounded function with sup L < inf U (hence not Darboux integrable)

### Section 8.3

- Compute arc length of y = x^{3/2} from x = 0 to x = 1
- Use Cavalieri to show: cylinder and "leaning cylinder" (same base, same height) have equal volume
- Prove: volume of cone = (1/3) · base · height using integration

**Guided Exercises: Archimedes' Inequality**

- Recall from Ch 7: f convex ⟺ f' increasing
- Prove: if f convex on [a,b], the graph lies below the chord connecting endpoints
- Prove: if f, g convex with same endpoints and f ≤ g, then arc length of f ≤ arc length of g
- Conclude: straight line is shortest path between two points
- Conclude: convex curve length lies between inscribed and circumscribed polygon lengths

### Section 8.4

- Compute ∫₀¹ x⁴ directly using Σi⁴ = n(n+1)(2n+1)(3n²+3n−1)/30
- Compute ∫₀² eˣ directly
- ★ Compute ∫₀¹ 1/(1+x²) using Riemann sums (relates to arctan; preview of Ch 9)

---

## Dependencies

**Requires from earlier chapters**:

- Supremum and infimum (Ch 1)
- Continuity and uniform continuity (Ch 6)
- Compactness of [a,b] (Ch 6)
- Convexity: f'' ≥ 0 ⟺ f convex (Ch 7 exercises)
- π via polygon limits (Ch 4)

**Sets up for later chapters**:

- Ch 9 (FTC): Connects integration to differentiation; Power Series III
- Ch 9 (Elementary Functions): Defines log, trig via integrals
- Later chapter: Lebesgue integral extends integrability



---




# Chapter 9: Calculus

## Overview

This chapter reveals the connection between differentiation and integration—the Fundamental Theorem of Calculus. This single theorem transforms integration from laborious Riemann sums into algebraic manipulation, immediately unlocks solutions to important differential equations, and enables us to finally define and compute the elementary functions.

**The arc:**
> FTC → Antidifferentiation techniques → ODEs → Logarithms → Trig → Computing π

---

## Historical Prelude

- **The problem**: Differentiation finds rates; integration finds areas. Separate subjects for 2000 years.
- **Barrow** (1660s): Proved A'(x) = f(x) geometrically, missed computational significance
- **Newton and Leibniz** (1680s): Understood the power — integration is anti-differentiation
- **Before FTC**: Each curve required Archimedes-style exhaustion
- **After FTC**: Find antiderivative, evaluate at endpoints — systematic procedure
- **The message**: Two millennia of geometric technique subsumed into one theorem

---

## 9.1 The Fundamental Theorem

### Signed Integrals

- Convention: ∫ᵇₐ f = −∫ₐᵇ f for a < b
- Makes FTC statements cleaner, allows variable endpoint to move either direction

### MVT for Integrals

- Theorem: f continuous on [a,b] ⟹ ∃c ∈ (a,b) with ∫ₐᵇ f = f(c)(b−a)
- Interpretation: integral = average value × length

### FTC I

- Theorem: f continuous, F(x) = ∫ₐˣ f(t) dt ⟹ F'(x) = f(x)
- Interpretation: differentiation undoes integration
- Corollary: Every continuous function has an antiderivative

### FTC II

- Theorem: F' = f on [a,b] ⟹ ∫ₐᵇ f = F(b) − F(a)
- Notation: F(x)|ₐᵇ = F(b) − F(a)
- **Callback**: Explains Ch 8 observation that ∫₀¹ eˣ = e − 1 = e¹ − e⁰

### Linearity

- Corollary: ∫(αf + βg) = α∫f + β∫g
- Proof via FTC II from linearity of differentiation

---

## 9.2 Antidifferentiation

### Power Series III: Term-by-Term Integration

- Theorem: If f(x) = Σaₙxⁿ has radius R, then for |x| < R:
  - ∫₀ˣ f(t) dt = Σ aₙxⁿ⁺¹/(n+1), same radius R
- Completes the trilogy:
  - Power Series I (Ch 6): Continuity
  - Power Series II (Ch 7): Term-by-term differentiation
  - Power Series III (Ch 9): Term-by-term integration

### Integration by Substitution

- Theorem: ∫ₐᵇ f(g(x))g'(x) dx = ∫_{g(a)}^{g(b)} f(u) du
- Chain rule in reverse
- Example: ∫₀¹ x·eˣ² dx = ½(e − 1)
- Example: ∫₀¹ x²√(1−x³) dx = 2/9

### Integration by Parts

- Theorem: ∫ₐᵇ f g' = fg|ₐᵇ − ∫ₐᵇ f' g
- Product rule in reverse
- Example: ∫₀¹ x·eˣ dx = 1
- Example: ∫₀^{π/2} x cos(x) dx = π/2 − 1

### Taylor's Theorem with Integral Remainder

- Theorem: f(x) = Σₖ₌₀ⁿ f⁽ᵏ⁾(a)(x−a)ᵏ/k! + (1/n!)∫ₐˣ (x−t)ⁿ f⁽ⁿ⁺¹⁾(t) dt
- Proof: Repeated integration by parts
- Lagrange form follows by applying MVT for integrals to the remainder

---

## 9.3 Differential Equations

### Introduction

- FTC says every continuous function has an antiderivative
- This immediately solves certain differential equations
- Three classes where existence follows from our tools

### Quadrature: y' = f(x)

- Theorem: y' = f(x) with y(a) = y₀ has unique solution y = y₀ + ∫ₐˣ f(t) dt
- Existence: FTC I
- Uniqueness: If y₁, y₂ solutions, then (y₁ − y₂)' = 0, so constant

### Special Functions Defined by Quadrature

- FTC guarantees existence even when no elementary antiderivative exists
- **Error function**: erf(x) = (2/√π) ∫₀ˣ e^{−t²} dt — probability
- **Sine integral**: Si(x) = ∫₀ˣ (sin t)/t dt — signal processing
- **Fresnel integrals**: S(x), C(x) — optics
- **Logarithmic integral**: li(x) = ∫₂ˣ 1/(ln t) dt — prime number theorem

### First-Order Linear: y' + P(x)y = Q(x)

- Theorem: If P, Q continuous near a, unique solution exists
- Method: Integrating factor μ(x) = e^{∫ₐˣ P(t) dt}
- Existence: All integrals exist by FTC
- Example: y' + 2y = eˣ with y(0) = 1

### Separable: y' = f(x)g(y)

- If g(y) ≠ 0, separate: dy/g(y) = f(x) dx
- Integrate: G(y) = F(x) + C where G' = 1/g, F' = f
- Key insight: G exists by FTC, G strictly monotone, so G invertible
- We prove existence without computing G⁻¹ explicitly
- Example: y' = xy gives y = Ae^{x²/2}
- Example: y' = y² with y(0) = 1 gives y = 1/(1−x) — blows up at x = 1!

### Limits of Elementary Methods

- y' = x + y² — no algebraic trick works
- Solution exists, but proof requires new tools:
  - Picard iteration, contraction mappings, completeness
- This is Chapter 12

---

## 9.4 Logarithms

### The Integral Definition

- Definition: L(x) = ∫₁ˣ 1/t dt for x > 0
- Goal: Prove L is a logarithm, identify which one

### L is a Logarithm

- Theorem: L(xy) = L(x) + L(y) for all x, y > 0
- Proof: Substitution u = t/x in ∫ₓˣʸ 1/t dt gives ∫₁ʸ 1/u du = L(y)
- Corollary: L = log_b for some base b

### Which Logarithm?

- L'(x) = 1/x by FTC I
- Let E = L⁻¹. By inverse function theorem: E'(y) = E(y)
- So E satisfies E' = E with E(0) = 1
- From Ch 7: unique solution is eˣ
- Therefore E = exp, so L = ln

### Basic Properties

- ln(1) = 0
- ln'(x) = 1/x
- ln increasing (since 1/x > 0 for x > 0)
- ln(x) → ∞ as x → ∞
- ln(x) → −∞ as x → 0⁺
- Corollary: (eˣ)' = eˣ (alternative proof)
- Corollary: log_a'(x) = 1/(x ln a)

### Growth of the Logarithm

- Theorem: For any α > 0, lim_{x→∞} ln(x)/xᵅ = 0
- Logarithms grow slower than any positive power

### Taylor Series for Logarithms

- Theorem: ln(1+x) = x − x²/2 + x³/3 − x⁴/4 + ⋯ for |x| < 1
- Proof: Integrate 1/(1+t) = 1 − t + t² − ⋯ using Power Series III
- At x = 1 (Abel's theorem): ln(2) = 1 − 1/2 + 1/3 − 1/4 + ⋯

### Faster Computation

- Problem: Series for ln(2) converges slowly (~1000 terms for 3 decimals)
- Better: ln((1+x)/(1−x)) = 2(x + x³/3 + x⁵/5 + ⋯)
- For ln(2): use x = 1/3, terms decay like (1/3)^{2k+1}
- Few terms give many digits

---

## 9.5 Trigonometry

### Improper Integrals (Remark)

- When integrand unbounded at endpoint: ∫ₐᵇ f = lim_{c→b⁻} ∫ₐᶜ f
- Converges if limit exists
- Example: ∫₀¹ 1/√(1−t²) dt converges (compare to ∫ 1/√(1−t) near t = 1)

### Defining Arcsine

- Definition: arcsin(y) = ∫₀ʸ 1/√(1−t²) dt for y ∈ [−1, 1]
- This is arc length from (1,0) to (√(1−y²), y) on unit circle

### Defining π

- Definition: π/2 = arcsin(1) = ∫₀¹ 1/√(1−t²) dt
- Rigorous definition as quarter-circle arc length

### Defining Sine and Cosine

- Definition: sin: [−π/2, π/2] → [−1, 1] is inverse of arcsin
- Definition: cos(θ) = √(1 − sin²θ) with appropriate sign, or cos(θ) = sin(π/2 − θ)
- Immediate: sin²θ + cos²θ = 1

### Derivatives

- arcsin'(y) = 1/√(1−y²) by FTC I
- sin'(θ) = cos(θ) by inverse function theorem
- cos'(θ) = −sin(θ) by differentiating sin² + cos² = 1

### The Differential Equation

- Theorem: sin and cos satisfy y'' = −y
- Uniqueness lemma: y'' = −y with y(0) = y'(0) = 0 ⟹ y ≡ 0
  - Proof: E(t) = y² + (y')² has E' = 0, so E constant; E(0) = 0
- Corollary: Solutions to y'' = −y determined by initial conditions

### Addition Formulas

- sin(α + β) = sin α cos β + cos α sin β
- cos(α + β) = cos α cos β − sin α sin β
- Proof: Both sides satisfy y'' = −y with same initial conditions

### Special Values and Periodicity

- sin(0) = 0, cos(0) = 1 (definition)
- sin(π/2) = 1, cos(π/2) = 0 (definition)
- sin(π) = 0, cos(π) = −1 (addition formulas)
- sin(2π) = 0, cos(2π) = 1
- sin(π/4) = cos(π/4) = 1/√2
- Theorem: sin, cos periodic with period 2π (uniqueness argument)
- π is smallest positive zero of sin

### Taylor Series

- sin(x) = x − x³/3! + x⁵/5! − ⋯ (all x)
- cos(x) = 1 − x²/2! + x⁴/4! − ⋯ (all x)

---

## 9.6 Computing π

### Two Constants for the Circle

- Perimeter constant: circumference of unit circle = 2π
- Area constant: area of unit disk = ∫₋₁¹ 2√(1−x²) dx
- Are they the same π?

### Archimedes' Theorem

- Theorem: Area of unit disk = π (the perimeter constant)
- Proof: IBP relates ∫√(1−x²) dx to ∫ 1/√(1−x²) dx
- Result: ∫₀¹ √(1−x²) dx = π/4
- Completes π journey: geometric (Ch 4) → integral (Ch 8) → series (here)

### Arctangent

- Definition: arctan(x) = ∫₀ˣ 1/(1+t²) dt
- Key properties:
  - arctan'(x) = 1/(1+x²) — rational function, no square roots!
  - arctan(0) = 0
  - arctan(x) → π/2 as x → ∞
  - arctan(1) = π/4

### π as Integral of Rational Function

- Theorem: π/4 = ∫₀¹ 1/(1+t²) dt
- Remarkable: π defined via circles equals integral of polynomials

### Taylor Series for Arctangent

- Theorem: arctan(x) = x − x³/3 + x⁵/5 − ⋯ for |x| < 1
- Proof: Integrate 1/(1+t²) = 1 − t² + t⁴ − ⋯ using Power Series III

### Gregory-Leibniz Series

- π/4 = 1 − 1/3 + 1/5 − 1/7 + ⋯ (by Abel at x = 1)
- Problem: ~1000 terms for 2 decimals (boundary convergence is slow)

### Better Formulas

- Proposition: π/4 = arctan(1/2) + arctan(1/3)
  - Proof via tangent addition formula
  - Terms decay like (1/2)^{2k+1} + (1/3)^{2k+1}
- Machin (1706): π/4 = 4 arctan(1/5) − arctan(1/239)
  - 9 terms give 15 digits
  - Machin computed 100 digits by hand

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | FTC as the unification of calculus |
| 9.1 FTC | The theorem and what it means |
| 9.2 Antidifferentiation | Power Series III; substitution; parts |
| 9.3 ODEs | What FTC immediately gives us; special functions; limits |
| 9.4 Logarithms | Define ln via integral; compute via series |
| 9.5 Trigonometry | Define trig via integrals; derive all from y'' = −y |
| 9.6 Computing π | Area = perimeter constant; efficient series |

## Key Theorems

1. **FTC I**: (∫ₐˣ f)' = f
2. **FTC II**: ∫ₐᵇ f = F(b) − F(a) where F' = f
3. **Power Series III**: Term-by-term integration within radius R
4. **ODE Existence**: Quadrature, linear, separable all have solutions via FTC
5. **L = ln**: The integral ∫₁ˣ 1/t dt is the natural logarithm
6. **Uniqueness for y'' = −y**: Solutions determined by initial conditions
7. **Archimedes' Theorem**: Area of disk = π (perimeter constant)
8. **Gregory-Leibniz**: π/4 = 1 − 1/3 + 1/5 − ⋯

---

## Exercises (Selected)

### Section 9.1

- Prove: if F' = G' = f on [a,b], then F and G differ by a constant

### Section 9.2

- Prove Taylor's theorem with integral remainder via repeated IBP
- Use substitution to compute ∫₀¹ x/(1+x⁴) dx
- Use IBP to derive reduction formula for ∫ xⁿ eˣ dx
- Prove: ∫₀^π sin²x dx = ∫₀^π cos²x dx = π/2

### Section 9.3

- Solve y' + 3y = e^{2x} with y(0) = 1
- Solve y' = y/x with y(1) = 2
- Verify erf'(x) = (2/√π)e^{−x²}, erf(0) = 0, erf odd, erf(∞) = 1
- Bernoulli equations: y' + P(x)y = Q(x)yⁿ reduces to linear via v = y^{1−n}
- Homogeneous equations: y' = f(y/x) reduces to separable via v = y/x
- Second-order constant coefficient: y'' + ay' + by = 0 via characteristic equation

### Section 9.4

- Compute ln(2) via slow series: how many terms for 2 decimals?
- Compute ln(2) via fast series: how many terms for 6 decimals?
- Compute ln(3) using ln((1+x)/(1−x)) with appropriate x
- Prove ln(x) < x − 1 for x > 1 using integral definition
- Historical: Compute ln(2) by repeated square roots (Briggs' method)

### Section 9.5

- Compute sin(π/6), cos(π/3) from addition/half-angle formulas
- Prove tan'(x) = sec²(x)
- Derive (arccos)'(x), (arctan)'(x) from definitions
- Hyperbolic functions: sinh, cosh satisfy y'' = y; derive parallel properties

### Section 9.6

- Wallis product: π/2 = (2·2)/(1·3) · (4·4)/(3·5) · ⋯ (guided, via ∫₀^{π/2} sinⁿx)
- Find other Machin-like formulas
- Compute π to 6 decimals using arctan(1/2) + arctan(1/3)

---

## Dependencies

**Requires from earlier chapters**:

- Differentiation, MVT, inverse function theorem (Ch 7)
- Integration, geometric definitions, Darboux integral (Ch 8)
- Series, convergence tests, Abel's theorem (Ch 4, 5)
- Inverse functions and monotonicity (Ch 6)
- Exponential function and e (Ch 7)


---





# Chapter 10: Completing the Integral (Bullet Outline)

## Overview

This chapter extends the integral from continuous functions to the Lebesgue integral via the Daniell construction. The narrative arc:

**Exploration → Limitation → Construction → Payoff → Vocabulary → Perspective**

We first explore what our axiomatic integral already handles, discovering it's a vector space with many nice properties—but it's not closed under limits. Demanding closure under monotone limits while preserving linearity forces a unique extension: the Lebesgue integral.

---

## Historical Prelude

- Fourier (1807): any function as sum of sines and cosines
- Required interchanging integrals and infinite sums
- 19th century: increasing concern about foundations
- Riemann's integral handled more than continuous functions, but not enough
- Lebesgue (1902): the right extension, designed for limits

---

## 10.1 The Convergence Problem

### Beyond Continuous Functions

- Our axiomatic integral was built for continuous functions
- But the construction works more broadly
- Upper and lower sums make sense for any bounded function
- **Definition**: $f$ is *Darboux integrable* if upper integral equals lower integral
- What functions does this capture?

### The Class of Integrable Functions

**Many functions are integrable**:
- Continuous functions (by construction)
- Piecewise continuous functions (split at discontinuities)
- Monotone functions (upper/lower sums telescope)
- The ruler function (discontinuous on dense set, still integrable)
- General principle: discontinuities must be "small"

**It's a vector space**:
- If $f, g$ integrable and $\alpha, \beta \in \mathbb{R}$, then $\alpha f + \beta g$ integrable
- $\int(\alpha f + \beta g) = \alpha \int f + \beta \int g$
- Linearity inherited from the construction
- We can do algebra with integrable functions

### The Boundary

- $\chi_{\mathbb{Q}}$: discontinuous everywhere, not integrable
- Upper integral $= 1$, lower integral $= 0$
- Not just pathological—it's the boundary of our class

### Power Series III Was Special

- Callback to Chapter 9: term-by-term integration worked
- $\int \left( \sum a_n x^n \right) = \sum \frac{a_n x^{n+1}}{n+1}$
- Used for $\ln(1+x)$, $\arctan$, computing $\pi$
- You might expect limits generally behave this well

### The Convergence Problem

- **Failure Mode 1**: $f_n = n \cdot \chi_{[0,1/n]} \to 0$ but $\int f_n = 1$
  - Limit integrable, integrals don't converge correctly
- **Failure Mode 2**: $f_n = \chi_{\{q_1,\ldots,q_n\}} \nearrow \chi_{\mathbb{Q}}$
  - Each $f_n$ integrable with $\int f_n = 0$
  - Limit not integrable

**The class of Darboux integrable functions is not closed under limits.**

### Why This Matters

- Fourier series: need $\int$ and $\sum$ to interchange
- Parameter integrals: need $\int$ and $\frac{d}{dt}$ to interchange
- Power series were the exception; general limits fail

### A Sanity Check

- $g_n$ = tent functions $\nearrow \chi_{(0,1)}$
- $\int g_n \to 1 = \int \chi_{(0,1)}$
- Limit interchange works here ✓

### The Key Observation

- In Failure Mode 2: $\int f_n = 0 \to 0$, obvious candidate is $0$
- Problem isn't wrong answer—it's no answer when there's an obvious candidate
- Could we extend by *defining* $\int \chi_{\mathbb{Q}} = 0$?

### What We Want

- **Preserve linearity**: we have a vector space, want to keep it
- **Add MCT**: increasing limits with bounded integrals should work
- The remarkable fact: demanding both forces a unique extension

---

## 10.2 The Daniell Construction

### The Plan

- Two stages: first close under monotone limits, then close under subtraction
- Must verify the extension still satisfies integral properties
- Must verify MCT survives the second extension

### Dini's Theorem

- Lemma: If $f_n \in C[a,b]$ and $f_n \searrow 0$ pointwise, then $I(f_n) \to 0$
- Key technical tool bridging pointwise convergence to integral convergence
- Proof uses compactness of $[a,b]$

### Upper Functions

- Definition: $f \in L^\uparrow$ if $f_n \in C[a,b]$ with $f_n \nearrow f$ pointwise
- Examples: continuous functions, $\chi_{(a,b]}$
- Define $I^+(f) = \lim I(f_n)$

### Well-Definedness of $I^+$

- Must show: different approximating sequences give same answer
- Key Lemma: If $f_n \nearrow f$ and $g \in C[a,b]$ with $g \leq f$, then $I(g) \leq \lim I(f_n)$
- Proof uses Dini's theorem on the gap $h_n = g - (f_n \wedge g) \searrow 0$
- Corollary: $I^+$ well-defined

### Properties of $I^+$

- Extension: agrees with $I$ on $C[a,b]$
- Monotonicity: $f \leq g \Rightarrow I^+(f) \leq I^+(g)$
- Additive: $I^+(f + g) = I^+(f) + I^+(g)$
- Positive homogeneity: $c \geq 0 \Rightarrow I^+(cf) = c \, I^+(f)$
- MCT for $L^\uparrow$: $f_n \in L^\uparrow$, $f_n \nearrow f$, $\sup I^+(f_n) < \infty \Rightarrow f \in L^\uparrow$ and $I^+(f_n) \to I^+(f)$

### The Linearity Problem

- $L^\uparrow$ is a cone, not a vector space
- Closed under addition and positive scalars
- Not closed under subtraction: if $f_n \nearrow f$, then $-f_n \searrow -f$ (wrong direction)
- We need subtraction for basic analysis

### Integrable Functions

- Definition: $f \in L^1$ if $f = g - h$ for some $g, h \in L^\uparrow$ with $I^+(g), I^+(h) < \infty$
- Define $I(f) = I^+(g) - I^+(h)$
- Must verify well-defined: if $g_1 - h_1 = g_2 - h_2$, then $I^+(g_1) - I^+(h_1) = I^+(g_2) - I^+(h_2)$
- Proof: $g_1 + h_2 = g_2 + h_1$, both in $L^\uparrow$, apply additivity

### Properties of $I$ on $L^1$

- $L^1$ is a vector space
- $I$ is linear
- Extension, monotonicity, interval additivity inherited

### MCT Survives

- Key Lemma: If $f \in L^1$ and $f \geq 0$, then $f \in L^\uparrow$
- Theorem (MCT for $L^1$): $f_n \in L^1$, $f_n \nearrow f$, $\sup I(f_n) < \infty \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- Proof: WLOG $f_n \geq 0$ (subtract $f_1$), apply key lemma, use MCT for $L^\uparrow$

### What We've Built

- An integral on $L^1 \supset C[a,b]$
- Satisfies original properties plus linearity plus MCT
- Next: harvest the consequences

---

## 10.3 Convergence Theorems

### Monotone Convergence Theorem

- Theorem (MCT): $f_n \in L^1$, $f_n \nearrow f$, $\sup I(f_n) < \infty \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- Already proved in 10.2; state cleanly here as the first payoff

### Dominated Convergence Theorem

- Theorem (DCT): $f_n \in L^1$, $f_n \to f$ pointwise, $|f_n| \leq g$ for some $g \in L^1 \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- The workhorse theorem—this is what you actually use
- Proof via MCT applied to $\inf$/$\sup$ sequences

### Revisiting the Failures

- Spike functions $f_n = n \cdot \chi_{[0,1/n]}$: no dominating function (would need $g(0) = \infty$)
- DCT diagnoses exactly why interchange fails
- Not a pathology—a precise answer

### Application: Differentiating Under the Integral

- Setup: $F(t) = \int_a^b f(x,t) \, dx$
- Theorem: If $\frac{\partial f}{\partial t}$ exists and $\left| \frac{\partial f}{\partial t} \right| \leq g \in L^1$, then $F'(t) = \int_a^b \frac{\partial f}{\partial t} \, dx$
- Proof: Apply DCT to difference quotients

### Application: Integrating Series Term-by-Term

- Setup: $\sum f_n$ where each $f_n \in L^1$
- Theorem: If $\sum \int |f_n| < \infty$, then $\int \sum f_n = \sum \int f_n$
- Proof: Partial sums dominated by $\sum |f_n|$, apply DCT

### Completeness

- Theorem: If $f_n \in L^1$ and $\sum \int |f_{n+1} - f_n| < \infty$, then $f_n$ converges to some $f \in L^1$
- Equivalently: Cauchy sequences in the $\int |\cdot|$ sense converge
- False for Darboux integrable functions
- "Completing the Integral"—we've filled the holes

### Series Closure

- Theorem: If $f_n \in L^1$ and $\sum \int |f_n| < \infty$, then $\sum f_n \in L^1$
- False for Darboux: $f_n = \chi_{\{q_n\}}$, each integrable, sum is $\chi_{\mathbb{Q}}$
- $L^1$ closed under absolutely convergent series

---

## 10.4 Null Sets and Measure

### Null Sets

- Definition: $E$ is null if for every $\varepsilon > 0$, $E$ covered by countably many intervals of total length $< \varepsilon$
- Equivalently: $\chi_E \in L^1$ and $I(\chi_E) = 0$
- Examples: finite sets, countable sets, Cantor set

### Properties of Null Sets

- Subset of null is null
- Countable union of null sets is null
- Proof: cover $n$th set with intervals of total length $\varepsilon / 2^n$

### Almost Everywhere

- Definition: Property holds a.e. if it fails only on a null set
- "$f = g$ a.e." means $\{x : f(x) \neq g(x)\}$ is null
- "$f_n \to f$ a.e." means $\{x : f_n(x) \not\to f(x)\}$ is null

### The A.E. Modification Theorem

- Theorem: If $f = g$ a.e. and $f \in L^1$, then $g \in L^1$ and $I(f) = I(g)$
- Striking: modify on infinitely many points, integral unchanged
- False for Darboux: $f = 0$, $g = \chi_{\mathbb{Q}}$, differ on null set, but $\chi_{\mathbb{Q}}$ not Darboux integrable

### Measurable Sets

- Definition: $E$ is measurable if $\chi_E \in L^1$
- Examples: intervals, open sets, closed sets, countable unions/intersections
- Non-measurable sets exist (requires axiom of choice)

### Lebesgue Measure

- Definition: $\mu(E) = I(\chi_E)$ for measurable $E$
- Properties: $\mu(E) \geq 0$, $\mu(\varnothing) = 0$, $\mu([a,b]) = b - a$
- Countable additivity: $\mu\left( \bigsqcup E_n \right) = \sum \mu(E_n)$
- Proof via DCT

### The Integral-First Philosophy

- Traditional: measure → measurable functions → integral
- Our approach: integral → measure as byproduct
- For analysis, the integral is primary; measure serves it

---

## 10.5 Why Lebesgue?

### Uniqueness

- Theorem: Any extension of $I$ from $C[a,b]$ satisfying linearity and MCT must agree with ours
- Proof sketch: MCT forces values on $L^\uparrow$, linearity forces values on $L^1$
- There was no choice—MCT determined everything

### Maximality

- Theorem: $L^1$ is the largest class where $f$ integrable $\Rightarrow |f|$ integrable
- "Absolute integrability" property
- Extensions beyond (like HK) lose this

### Connection to Derivatives

- Theorem: $f \in L^1$ iff $f = F'$ a.e. for some absolutely continuous $F$
- FTC for Lebesgue: cleaner than Darboux version
- Preview of absolute continuity

### Completeness Revisited

- $L^1$ with $d(f,g) = \int |f - g|$ is complete
- In fact: $L^1$ is the completion of $C[a,b]$ under this metric
- Every element of $L^1$ is a limit of continuous functions
- We added exactly the missing limits—nothing more

### A General Machine

- The construction used the length axiom $\mu([c,d]) = d - c$ only as input
- Positivity, linearity, Daniell's condition did the work
- Replace with $\mu((c,d]) = g(d) - g(c)$ for increasing right-continuous $g$
- Same machine produces a new integral
- In Chapter N: this captures all finite Borel measures on $[a,b]$—the Riesz representation theorem

### Beyond Lebesgue: The Henstock-Kurzweil Integral

- Lebesgue isn't the only extension
- HK: every derivative is integrable, full FTC
- Example: $F(x) = x^2 \sin(1/x^2)$, differentiable everywhere, $F'$ not Lebesgue integrable
- Tradeoff: HK has better FTC, but no $L^p$ theory
- Different integrals answer different questions

### Closing Perspective

- Darboux: simplest integral for area under curves
- Lebesgue: largest integral with good limit behavior
- HK: largest integral with full FTC
- For functional analysis: Lebesgue is essential

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| 10.1 | Exploration and limitation: what Darboux can do, why limits fail |
| 10.2 | Construction: $L^\uparrow$ for MCT, $L^1$ for linearity |
| 10.3 | Payoff: DCT, applications, completeness, series closure |
| 10.4 | Vocabulary: null sets, a.e., measure |
| 10.5 | Perspective: uniqueness, maximality, generalization, alternatives |

## Key Theorems

1. **MCT**: Monotone limits with bounded integrals converge
2. **DCT**: Dominated pointwise limits converge
3. **Completeness**: $L^1$ is complete
4. **Series closure**: Absolutely convergent series stay in $L^1$
5. **A.E. modification**: Changing $f$ on null set preserves integrability and integral
6. **Uniqueness**: MCT + linearity forces the Lebesgue integral

---

## Dependencies

**Requires from earlier chapters**:
- Continuous functions on $[a,b]$ (Ch 6)
- Integration of continuous functions, Darboux construction (Ch 8)
- Power Series III, term-by-term integration (Ch 9)
- Series and convergence (Ch 4–5)

**Sets up for later chapters**:
- Metric spaces: $L^1$ as key completeness example
- Function spaces: $L^p$ spaces
- Fourier analysis: DCT for series manipulation
- Measure theory: Riesz representation, general measures