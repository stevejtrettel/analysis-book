  # Analysis Textbook: Table of Contents

---

# Part I: Foundations

*Core question: What are the real numbers, and why do we need them?*

---

## Chapter 0: Sets and Functions

### Section: Set Notation
- Sets, elements, subsets, equality
- Union, intersection, complement, difference
- Cartesian products A × B
- Set builder notation

### Section: Functions
- Definition: domain, codomain, range
- Notation: f: A → B, f(x), x ↦ f(x)
- Functions are assignments, not just formulas

### Section: Types of Functions
- Injective (one-to-one)
- Surjective (onto)
- Bijective

### Section: Operations on Functions
- Composition: g ∘ f
- Restrictions
- Identity function

### Section: Inverse Functions
- Definition
- Existence ⟺ bijective
- Examples

**Purpose:** Establish vocabulary before using it. Brief and pragmatic reference chapter.

---

## Chapter 1: Fields

### Section: The Field Axioms
- Addition axioms (closure, associativity, commutativity, identity, inverses)
- Multiplication axioms (closure, associativity, commutativity, identity, inverses for nonzero)
- Distributive law

### Section: Examples of Fields
- ℚ (rationals)
- ℝ (to be constructed)
- Non-examples: ℕ, ℤ

### Section: Consequences of the Axioms
- Uniqueness of identities and inverses
- Cancellation laws
- Zero product property
- Properties of negatives and fractions

### Section: Polynomials
- Definition: p(x) = aₙxⁿ + ... + a₁x + a₀
- Polynomials use only field operations
- Degree, leading coefficient

### Section: Rational Functions
- Definition: r(x) = p(x)/q(x)
- Domain: where q(x) ≠ 0

### Section: The Fundamental Limitation
- Field operations give polynomials and rational functions only
- For anything else (roots, etc.), need MORE structure
- Preview: order, completeness

**Main Theorems:**
- Consequences of field axioms

---

## Chapter 2: Orders

### Section: Ordered Fields
- Positive elements P with trichotomy, closure under +, ×
- Order relation: a < b ⟺ b − a ∈ P
- ℚ and ℝ are ordered fields

### Section: Properties of Inequalities
- Addition preserves order
- Multiplication by positives preserves, negatives reverses
- Transitivity
- Squares are nonnegative

### Section: Absolute Value
- Definition
- Properties: |ab| = |a||b|
- Triangle inequality

### Section: Monotonic Functions
- Increasing, decreasing, monotonic
- Examples

### Section: Invertibility of Monotonic Functions
- Strictly increasing/decreasing ⟹ injective
- Inverse is also monotonic

### Section: The Integers and Natural Numbers
- ℕ = {1, 1+1, 1+1+1, ...} in an ordered field
- ℤ = ℕ ∪ {0} ∪ {−n : n ∈ ℕ}
- Preview: ℕ is unbounded (Archimedean property)

**Main Theorems:**
- Properties of inequalities
- Triangle inequality
- Monotonic ⟹ injective

---

## Chapter 3: The Inadequacy of ℚ

### Section: The First Crisis — √2
- Pythagorean problem
- √2 ∉ ℚ (classic proof)

### Section: Attempts to Fix ℚ
- ℚ(√2) = {a + b√2 : a,b ∈ ℚ} — but √3 ∉ ℚ(√2)
- Constructible numbers (compass and straightedge)
- Radicals — but Abel's theorem (no quintic formula)
- Algebraic numbers 𝔸 — but some numbers are transcendental

### Section: The Pattern
- Each extension reveals new holes
- Constructive approach is doomed
- Uncountably many numbers to add

### Section: Gaps Break Mathematics
- IVT fails in ℚ: f(x) = x² − 2 on [1,2]
- EVT fails in ℚ
- Bisection algorithm converges to nothing
- Riemann sums don't converge
- Preview: completeness will fix all of this

### Section: A Different Approach
- Axiomatic thinking instead of construction
- Define ℝ by a property that captures "no holes"

**Main Theorems:**
- √2 is irrational
- IVT, EVT fail in ℚ

---

## Chapter 4: Completeness

### Section: Suprema and Infima
- Upper bounds, lower bounds
- Supremum = least upper bound
- Infimum = greatest lower bound

### Section: The Completeness Axiom
- Every nonempty set bounded above has a supremum
- Equivalently: nested intervals have nonempty intersection

### Section: Working with Sup and Inf
- ε-characterization of supremum
- Sup of unions, intersections

**Main Theorems:**
- Completeness axiom
- Nested interval theorem

---

## Chapter 5: The Real Numbers

### Section: Definition
- ℝ is the unique complete ordered field

### Section: The Archimedean Property
- For any x ∈ ℝ, there exists n ∈ ℕ with n > x
- Equivalently: 1/n → 0
- Consequence of completeness

### Section: Existence of Roots
- √2 exists (supremum argument)
- √a exists for all a ≥ 0
- ⁿ√a exists for all a ≥ 0, n ∈ ℕ

### Section: Rational Exponents *(Exponentials)*
- a^(1/n) = ⁿ√a
- a^(p/q) = (a^(1/q))^p
- Functional equation: a^(r+s) = a^r · a^s for r,s ∈ ℚ
- Monotonicity: r < s ⟹ a^r < a^s (for a > 1)

### Section: Real Exponents *(Exponentials)*
- DEFINE a^x = sup{a^r : r ∈ ℚ, r < x}
- THEOREM: Functional equation a^(x+y) = a^x · a^y extends to ℝ (guided exercise)

### Section: Logarithms *(Logs)*
- DEFINE log_a(y) = sup{r ∈ ℚ : a^r < y}
- THEOREM: log_a(xy) = log_a(x) + log_a(y) (guided exercise)
- THEOREM: exp and log are inverses

### Section: Why Logarithms Matter — A Historical Note *(Logs)*
- Napier (1614): the computational miracle
- Multiplication becomes addition
- Preview: Briggs's method for computing logs

### Section: Density
- ℚ is dense in ℝ
- Irrationals are dense in ℝ

### Section: Uncountability
- ℝ is uncountable (Cantor's diagonal argument)
- Most real numbers cannot be described by finite formulas

### Section: Functions on ℝ
- If most reals can't be described, neither can most functions
- Wild examples: Dirichlet function, Thomae's function
- We study functions via *properties* (continuity, differentiability, etc.)

**Main Theorems:**
- Archimedean property
- Existence of roots
- Density of ℚ and irrationals
- Uncountability of ℝ
- *(Exponentials)* Functional equation for real exponents
- *(Logs)* Functional equation for logarithms

---

# Part II: Finding Limits

*Core question: What does this converge to?*

---

## Chapter 6: Convergence

### Section: Sequences and Convergence
- Definition of sequence
- ε-N definition of convergence
- Examples from definition: 1/n → 0, c → c, aⁿ → 0 for |a| < 1

### Section: Uniqueness and Boundedness
- Uniqueness of limits
- Convergent ⇒ bounded

**Main Theorems:**
- Uniqueness of limits
- Convergent sequences are bounded

---

## Chapter 7: Limit Laws

### Section: Limits and Inequalities
- Preservation of inequalities under limits
- Squeeze theorem

### Section: Limits and Field Operations
- Sum, difference, product, quotient of limits

### Section: Applications
- Rational functions of n
- √(n+1) − √n → 0
- nᵏ/aⁿ → 0 for a > 1
- **Major example:** √2 via Babylonian sequence and Pell equation (pₙ²/qₙ² = 2 + (−1)ⁿ/qₙ² → 2)

**Main Theorems:**
- Limit laws (+, −, ×, ÷)
- Squeeze theorem
- Babylonian sequence converges to √2

---

## Chapter 8: Computing Infinite Sums and Products

### Section: Series as Sequences
- Definition of series as sequence of partial sums
- Definition of infinite product
- Notation conventions

### Section: Telescoping Series
- Partial fractions and cancellation
- Σ 1/(n(n+1)) = 1
- Σ 1/(n² − 1)

### Section: Geometric Series
- Finite geometric sums (closed form)
- Infinite geometric series: Σxⁿ = 1/(1−x) for |x| < 1
- First power series: the sum depends on parameter x

### Section: Decimal Expansions
- 0.d₁d₂d₃... = Σ dₙ/10ⁿ converges (comparison with geometric)
- Repeating decimals ↔ rationals

### Section: Computing Logarithms — Briggs's Method *(Logs)*
- Goal: compute log₁₀(2)
- Algorithm produces binary expansion: compare 2 to 10^(1/2), 10^(1/4), 10^(1/8), ...
- Convergence by comparison with Σ1/2^k (geometric series)
- Worked example
- Historical: Briggs computed 30,000 entries to 14 decimal places (1624)

### Section: Products Reduce to Series *(Logs)*
- Key idea: log(Π aₙ) = Σ log(aₙ)
- For finite products: immediate from functional equation
- For infinite products: need log(lim) = lim(log), i.e., continuity
- Forward reference: will make rigorous in Part V
- This is why series theory suffices for most product questions

### Section: Infinite Products (Examples)
- Viète's product for 2/π
- Wallis's product for π/2

**Main Theorems:**
- Geometric series formula
- Every decimal represents a real number
- *(Logs)* Briggs's method converges

---

## Chapter 9: Recursive Sequences

### Section: Computing Limits of Recursive Sequences
- Method: assume limit L exists, solve for L
- Examples: √(x + √(x + ...)) → (1 + √(1+4x))/2

### Section: Fibonacci and the Golden Ratio
- Binet's formula (proof by induction)
- Fₙ₊₁/Fₙ → φ via Binet and |ψ/φ| < 1
- φ = [1; 1, 1, ...] as continued fraction (first encounter)

### Section: Other Recursive Sequences
- Newton's method preview
- Caveat: we are assuming convergence; proofs come in Part III

**Main Theorems:**
- Binet's formula: Fₙ = (φⁿ − ψⁿ)/√5
- Fibonacci ratios converge to golden ratio (complete proof)

---

# Part III: Proving Convergence

*Core question: How do I know it converges without finding the limit?*

---

## Chapter 10: Monotone Convergence

### Section: Monotone Convergence Theorem
- Monotone sequences
- Monotone convergence theorem (proof via supremum)

### Section: Series with Nonnegative Terms
- Partial sums monotone increasing
- Convergence ⟺ bounded partial sums
- Σ1/n² converges (compare to Σ1/(n(n−1)))
- Σ1/n diverges (partial sums unbounded)

### Section: Exponentials as Limits *(Exponentials)*
- a^x = lim a^(rₙ) for any rational sequence rₙ → x
- Proof via monotone convergence
- Remark: cleaner proof of functional equation (compare to Chapter 5)

### Section: The Number e *(Exponentials)*
- (1 + 1/n)^n is increasing (binomial argument)
- (1 + 1/n)^n is bounded above by 3
- Therefore converges to some limit, call it e ≈ 2.718...
- Historical: Bernoulli (~1683), compound interest
- "A curious constant — we'll discover its significance later"

### Section: Recursive Sequences Revisited
- √(1 + √(1 + ...)) → φ (now proved via monotone convergence)

**Main Theorems:**
- Monotone convergence theorem
- Nonnegative series: convergence ⟺ bounded partial sums
- *(Exponentials)* a^x = lim a^(rₙ)
- *(Exponentials)* (1 + 1/n)^n converges

---

## Chapter 11: Comparison Tests

### Section: The Comparison Test
- Statement and proof
- p-series: Σ1/nᵖ converges for p > 1, diverges for p ≤ 1
- ζ(s) = Σ1/nˢ as function of s

### Section: Ratio Test
- Statement and proof (comparison to geometric)

### Section: Root Test
- Statement and proof (comparison to geometric)

### Section: Power Series Radius of Convergence
- Definition of radius of convergence
- Computation via ratio/root tests
- Examples: Σxⁿ/n!, Σxⁿ/n

### Section: Binomial Series
- (1+x)^α = Σ C(α,n) xⁿ for non-integer α
- Connection to √(1+x)

### Section: Alternating Series Test
- Statement and proof (monotone convergence on partial sums)
- Σ(−1)ⁿ/n converges

### Section: Infinite Product Convergence
- Π(1 + aₙ) converges if Σ|aₙ| converges
- Connection to series via comparison

**Main Theorems:**
- Comparison test
- Ratio test
- Root test
- Power series have a radius of convergence
- Alternating series test

---

## Chapter 12: Representing Real Numbers

### Section: Density of Rationals
- Every real is a limit of rationals (brief, non-constructive)

### Section: Decimal Expansions
- Every real has a decimal expansion (greedy algorithm)
- Uses completeness
- Mostly unique

### Section: Continued Fractions
- Definition: [a₀; a₁, a₂, ...]
- Convergents pₙ/qₙ and their recurrence
- Even convergents increase, odd decrease
- Convergence via even/odd subsequences + monotone convergence
- Same limit (consecutive difference → 0)
- Best approximation property: |α − pₙ/qₙ| < 1/(qₙqₙ₊₁)
- Examples: √2 = [1; 2, 2, ...]

**Main Theorems:**
- Every real has a decimal expansion
- Continued fractions converge
- Best approximation theorem

---

## Chapter 13: Subsequences

### Section: Definition and Basic Properties
- Definition of subsequence
- Subsequences of convergent sequences → same limit

### Section: Union of Subsequences
- If s₂ₙ → L and s₂ₙ₊₁ → L, then sₙ → L
- General version

### Section: Bolzano–Weierstrass Theorem
- Statement and proof
- Bounded sequences have convergent subsequences

### Section: Limsup and Liminf
- Definitions via monotone sequences
- Properties

**Main Theorems:**
- Bolzano–Weierstrass theorem
- Limsup and liminf exist for bounded sequences

---

## Chapter 14: The Cauchy Criterion

### Section: Cauchy Sequences
- Definition
- Cauchy sequences are bounded

### Section: Completeness
- Cauchy ⇒ convergent (uses B-W)
- Convergent ⇒ Cauchy
- Completeness: Cauchy ⟺ convergent

### Section: Application to Series
- Σaₙ converges ⟺ partial sums Cauchy

### Section: Absolute and Conditional Convergence
- Absolute convergence ⇒ convergence (uses Cauchy: |sₘ − sₙ| ≤ Σ|aₖ|)
- Definition of conditional convergence
- Examples: Σ(−1)ⁿ/n conditionally, Σ(−1)ⁿ/n² absolutely
- Rearrangements preview (full treatment in Part IV)

**Main Theorems:**
- Cauchy criterion (Cauchy ⟺ convergent)
- Absolute convergence ⇒ convergence

---

## Chapter 15: Contraction Maps

### Section: Contractions and Lipschitz Continuity
- Definition of contraction
- Contractions produce Cauchy sequences

### Section: The Contraction Mapping Theorem
- Existence, uniqueness, convergence
- Proof using Cauchy criterion

### Section: Applications
- Babylonian √a: now fully proved to converge
- Newton's method: now fully proved
- Fixed points of contractive functions

**Main Theorems:**
- Contraction mapping theorem

---

## Chapter 16: Summation Techniques

### Section: Summation by Parts
- Discrete integration by parts formula

### Section: Dirichlet's Test
- Statement and proof

### Section: Abel's Test
- Statement and proof

**Main Theorems:**
- Summation by parts formula
- Dirichlet's test
- Abel's test

---

# Part IV: Exchanging Limits

*Core question: When can two limit operations be interchanged?*

---

## Chapter 17: Double Sequences and Iterated Limits

### Section: Double Sequences
- Definition
- Iterated limits vs joint limits

### Section: Counterexamples
- a_{n,m} = n/(n+m): iterated limits differ
- a_{n,m} = 1_{n≤m}: iterated limits differ

### Section: Moore–Osgood Theorem
- Uniform convergence in one index ⇒ interchange
- Statement and proof

**Main Theorems:**
- Joint limit ⇒ iterated limits agree
- Moore–Osgood theorem

---

## Chapter 18: Limits and Infinite Sums

### Section: Monotone Interchange
- If 0 ≤ aₙ⁽¹⁾ ≤ aₙ⁽²⁾ ≤ ... and aₙ⁽ᵏ⁾ → aₙ, then lim Σ = Σ lim
- Proof
- Nonnegative series can be rearranged freely

### Section: Tannery's Theorem
- Statement: dominated convergence for series
- Proof
- Failure without domination

### Section: The Series for e *(Exponentials)*
- Expand (1 + 1/n)^n via binomial theorem
- kth term approaches 1/k! as n → ∞
- Tannery justifies interchange
- THEOREM: e = lim(1 + 1/n)^n = Σ1/k!
- Historical: Euler (~1740s)

### Section: A Power Series *(Exponentials)*
- Same argument with parameter: lim(1 + x/n)^n = Σx^k/k!
- Define E(x) = Σx^k/k!
- THEOREM: E(x+y) = E(x)E(y) (Cauchy product computation)
- Remark: "This will be important when we study exponentials"

**Main Theorems:**
- Monotone interchange theorem
- Tannery's theorem
- *(Exponentials)* e = Σ1/k!
- *(Exponentials)* E(x) = Σx^k/k! satisfies functional equation

---

## Chapter 19: Rearrangements

### Section: Absolute Convergence and Rearrangements
- Absolutely convergent series can be rearranged
- Proof

### Section: Riemann Rearrangement Theorem
- Conditionally convergent series can sum to anything
- Proof

### Section: Rearrangements as Limit Interchange Failure
- Conceptual interpretation

**Main Theorems:**
- Absolutely convergent ⇒ rearrangement-invariant
- Riemann rearrangement theorem

---

# Part V: Continuity

*Core question: When does lim_{x→a} f(x) = f(a)?*

---

## Chapter 20: Definition and Properties

### Section: Epsilon-Delta Definition
- Definition of continuity at a point
- Definition of continuity on a set
- Basic examples: polynomials, |x|

### Section: Sequential Characterization
- f continuous at a ⟺ (xₙ → a ⟹ f(xₙ) → f(a))
- Equivalence proof

### Section: Limit Laws for Functions
- Sum, difference, product, quotient of continuous functions
- Composition of continuous functions

### Section: Continuity of Exponentials and Logarithms *(Exponentials, Logs)*
- THEOREM: a^x is continuous
- Proof via sequential characterization + density + monotonicity
- THEOREM: log_a is continuous
- Proof via continuous strictly monotonic inverse
- NOW rigorous: products reduce to series (log of limit = limit of log)
- Remark: continuous functions are determined by their values on a dense set

### Section: Function Limits
- lim_{x→a} f(x) definition
- Relationship to continuity: f continuous at a ⟺ lim_{x→a} f(x) = f(a)

### Section: Types of Discontinuities
- Removable, jump, essential
- Examples

**Main Theorems:**
- Sequential characterization of continuity
- Continuous functions closed under arithmetic operations and composition
- *(Exponentials)* Continuity of a^x
- *(Logs)* Continuity of log_a

---

## Chapter 21: Power Series and Continuity

### Section: Continuity in the Interior
- Power series continuous on (−R, R) via Tannery
- Proof using dominated convergence for series

### Section: Continuity at the Boundary
- Abel's theorem
- Examples: Σxⁿ/n at x = −1

**Main Theorems:**
- Power series are continuous in their interval of convergence
- Abel's theorem

---

## Chapter 22: Completeness and Continuity

### Section: Intermediate Value Theorem
- Statement and proof (uses completeness)
- Geometric interpretation

### Section: Applications of IVT
- Existence of roots
- Fixed point theorem for continuous f: [a,b] → [a,b]

**Main Theorems:**
- Intermediate Value Theorem

---

## Chapter 23: Compactness and Continuity

### Section: Sequential Compactness
- Definition: every sequence has convergent subsequence with limit in set
- Recall B-W: bounded sequences have convergent subsequences
- [a,b] is sequentially compact

### Section: Heine-Borel Theorem
- On ℝ: compact ⟺ closed + bounded
- Proof
- Forward reference: "Closed + bounded is special to ℝⁿ; sequential compactness generalizes to metric spaces"

### Section: Extreme Value Theorem
- Continuous on compact → attains max and min
- Proof using sequential compactness

### Section: Heine-Cantor Theorem
- Continuous on compact → uniformly continuous
- Proof
- Definition of uniform continuity

### Section: Theme Summary
- Compactness as "can't escape" — same idea as B-W, EVT, Heine-Cantor
- Preview of role in functional analysis

**Main Theorems:**
- Heine-Borel theorem
- Extreme Value Theorem
- Heine-Cantor theorem (uniform continuity)

---

# Part VI: Differentiation

*Core question: What is the instantaneous rate of change?*

---

## Chapter 24: Definition and Rules

### Section: Difference Quotients
- Definition of derivative at a point
- Examples from definition

### Section: Derivative as Function
- f'(x) as a function
- Differentiable ⟹ continuous

### Section: Differentiation Rules
- Sum, difference rules
- Product rule
- Quotient rule
- Power rule (integer and rational exponents)

**Main Theorems:**
- Differentiation rules
- Differentiable ⟹ continuous

---

## Chapter 25: Chain Rule and Inverses

### Section: The Chain Rule
- Statement and proof
- Examples

### Section: Differentiating Inverse Functions
- (f⁻¹)'(b) = 1/f'(a)
- Derivatives of roots via inverse rule

**Main Theorems:**
- Chain rule
- Inverse function derivative

---

## Chapter 26: Mean Value Theorems

### Section: Rolle's Theorem
- Statement and proof

### Section: Mean Value Theorem
- Statement and proof
- Geometric interpretation

### Section: Consequences
- f' = 0 ⟹ f constant
- f' > 0 ⟹ f increasing
- Antiderivatives differ by constants

### Section: ★ L'Hôpital's Rule
- Statement and proof
- Examples

**Main Theorems:**
- Rolle's theorem
- Mean Value Theorem

---

## Chapter 27: Applications

### Section: Critical Points
- Definition
- Finding extrema on closed intervals

### Section: First Derivative Test
- Sign changes and local extrema

### Section: Second Derivative Test
- f''(c) > 0 ⟹ local minimum

### Section: Convexity
- f'' > 0 ⟹ convex
- Connection to second derivative test

**Main Theorems:**
- First derivative test
- Second derivative test

---

## Chapter 28: Power Series

### Section: Term-by-Term Differentiation
- Dominated convergence for derivatives
- Interchange of d/dx and Σ

### Section: Differentiability of Power Series
- Power series are differentiable in interior
- Derivative is term-by-term

### Section: Smoothness
- Power series are infinitely differentiable

### Section: Uniqueness
- If f has a power series representation, it must be the Taylor series

**Main Theorems:**
- Term-by-term differentiation
- Power series are smooth

---

## Chapter 29: Taylor's Theorem

### Section: Taylor Polynomials
- Definition
- Examples

### Section: Taylor Remainder
- Lagrange form
- Proof via generalized Rolle

### Section: Error Bounds
- Estimating error from remainder formula
- Practical computation

### Section: Convergence to f
- When does Taylor series converge to f?

**Main Theorems:**
- Taylor remainder theorem

---

## Chapter 30: The Exponential *(Exponentials)*

*A self-contained narrative tying everything together.*

### Section: From Functional Equation to Differential Equation
- Recall: a^x satisfies a^(x+y) = a^x · a^y
- Assume a^x is differentiable
- Differentiate functional equation: (a^x)' = c · a^x where c = lim_{h→0} (a^h - 1)/h
- Different bases give different constants c

### Section: The Natural Base
- DEFINE e as the unique base where c = 1
- For this base: (e^x)' = e^x
- The ODE y' = y

### Section: Solutions to y' = y Satisfy the Functional Equation
- Direct proof: if f' = f, then d/dx[f(x+a)/f(a)] = f(x+a)/f(a)
- So f(x+a)/f(a) satisfies y' = y with y(0) = 1
- Uniqueness implies f(x+a)/f(a) = f(x), i.e., f(x+a) = f(x)f(a)

### Section: Finding a Solution via Power Series
- Assume y = Σaₙxⁿ
- y' = y forces aₙ = aₙ₋₁/n
- With y(0) = 1: get Σx^n/n!
- We RECOVER the series from Chapter 18!

### Section: The Characterization Theorem
- THEOREM: If f: ℝ → ℝ⁺ is continuous with f(x+y) = f(x)f(y), then f(x) = f(1)^x
- Proof: f(ℚ) determined algebraically, continuity + density extends to ℝ
- Corollary for logs: continuous g with g(xy) = g(x) + g(y) is determined by g at one point
- Remark: cleanest proof of functional equation (compare Chapters 5 and 10)

### Section: Unifying All Definitions
- Recall E(x) = Σx^k/k! from Chapter 18
- E is continuous (power series)
- E satisfies E(x+y) = E(x)E(y) (proved in Chapter 18)
- By characterization: E(x) = E(1)^x
- E(1) = Σ1/k! = e (from Chapter 18)
- THEREFORE: E(x) = e^x
- THE PUNCHLINE: sup definition, limit definition, and series definition all agree!

### Section: Taylor Series and Error Bounds
- Taylor's theorem applied to e^x
- Error estimate: |e^x − Tₙ(x)| ≤ |x|^(n+1)e^|x|/(n+1)!
- Compute e to many decimal places

### Section: Irrationality of e
- Proof via series: if e = p/q, then q!e − (integer) = 1/(q+1) + 1/((q+1)(q+2)) + ... 
- This is positive but < 1, contradiction

### Section: Properties of the Exponential
- e^x > 0 for all x
- e^x ≥ 1 + x (tangent line inequality)
- Convexity
- Growth: e^x dominates any polynomial (e^x/x^n → ∞)
- Behavior at ±∞

### Section: Historical Note
- Bernoulli's compound interest problem
- Connection: lim(1 + 1/n)^n = e
- This is what we proved in Chapter 18

**Main Theorems:**
- *(Exponentials)* Functional equation ⟹ (a^x)' = c·a^x
- *(Exponentials)* Solutions to y' = y satisfy functional equation
- *(Exponentials)* Characterization theorem: continuous + functional equation determines exponential
- *(Exponentials)* All definitions of e^x agree (sup, limit, series)
- *(Exponentials)* Taylor series for e^x with error bounds
- *(Exponentials)* e is irrational
- *(Exponentials)* e^x dominates polynomials

---

# Part VII: Integration

*Core question: What is the area under a curve?*

---

## Chapter 31: Axioms

### Section: Characterizing Integration
- What should an integral satisfy?
- Three axioms: rectangles, monotonicity, additivity

### Section: Consequences of the Axioms
- Any integral bounded by upper/lower sums
- Integral as function of upper limit

### Section: Computing from Axioms
- IF x integrable, THEN ∫₀¹ x = 1/2 (detailed calculation)
- IF x² integrable, THEN ∫₀¹ x² = 1/3
- Axioms constrain values, but do integrals exist?

**Main Theorems:**
- Axioms constrain integral values

---

## Chapter 32: The Darboux Integral

### Section: Partitions
- Definition
- Refinements

### Section: Upper and Lower Sums
- Definitions via sup/inf on subintervals
- Refinements improve bounds

### Section: The Darboux Integral
- Definition: sup(lower) = inf(upper)
- Verification of axioms

### Section: Continuous Functions are Integrable
- Proof using uniform continuity

**Main Theorems:**
- Darboux integral satisfies axioms
- Continuous ⟹ integrable

---

## Chapter 33: Computing Integrals

### Section: From Definition
- More examples computed directly from Darboux sums
- The hard work of direct computation

### Section: Looking Ahead
- There must be a better way...
- Preview of FTC

---

# Part VIII: Calculus

*Core question: How are differentiation and integration related?*

---

## Chapter 34: The Fundamental Theorem

### Section: FTC Part I
- (∫₀ˣ f)' = f(x) for continuous f
- Proof from axioms

### Section: FTC Part II
- ∫ₐᵇ f' = f(b) - f(a)
- Proof from Part I

### Section: Linearity of Integration
- ∫(f + g) = ∫f + ∫g (from FTC + linearity of derivatives)
- ∫cf = c∫f

### Section: Integration Techniques
- Substitution (from chain rule)
- Integration by parts (from product rule)

**Main Theorems:**
- Fundamental Theorem of Calculus
- Linearity of integration

---

## Chapter 35: Differential Equations

### Section: Quadrature
- Solving y' = f via FTC
- Existence from Darboux, uniqueness from MVT

### Section: First Order Linear Homogeneous
- y' + P(x)y = 0
- Solution via integrating factor

### Section: First Order Linear
- y' + P(x)y = Q(x)
- Existence and uniqueness

### Section: Applications
- (examples TBD)

**Main Theorems:**
- Existence/uniqueness for first order linear ODEs

---

## Chapter 36: The Logarithm *(Logs)*

*The integral definition and its consequences.*

### Section: The Natural Logarithm as Integral
- DEFINE L(x) = ∫₁ˣ 1/t dt
- PROVE L(xy) = L(x) + L(y) via substitution
- By characterization theorem (Chapter 23½): L = ln

### Section: Derivative of the Logarithm
- ln'(x) = 1/x (immediate from FTC)
- (log_a(x))' = 1/(x ln a)

### Section: Another Proof That (e^x)' = e^x
- exp = ln⁻¹
- (e^x)' = 1/ln'(e^x) = 1/(1/e^x) = e^x

### Section: Taylor Series for Logarithms
- Taylor's theorem applied to ln(1+x)
- ln(1+x) = x − x²/2 + x³/3 − x⁴/4 + ...
- Convergence on (−1, 1]
- ln(2) = 1 − 1/2 + 1/3 − 1/4 + ... (Abel's theorem)

### Section: Faster Computation
- Series for ln((1+x)/(1−x)) = 2(x + x³/3 + x⁵/5 + ...)
- Converges faster
- Historical: Newton computed ln(2) this way

### Section: Growth of the Logarithm
- ln(x) grows slower than any positive power: ln(x)/x^α → 0
- Proof via L'Hôpital or direct

### Section: Historical Note
- Connection to Briggs: series computation vs. square root method
- Series much faster for high precision

**Main Theorems:**
- *(Logs)* ln(x) = ∫₁ˣ 1/t dt
- *(Logs)* Functional equation from integral definition
- *(Logs)* Taylor series for ln(1+x)
- *(Logs)* ln grows slower than any power

---

## Chapter 37: Trigonometry *(Trig)*

*Constructing sine and cosine rigorously.*

### Section: The Goal
- Want to define sin(θ), cos(θ) = coordinates at arc length θ on unit circle
- Problem: this is hard to compute directly
- Solution: compute the inverse functions instead

### Section: Arc Length
- Arc length formula: ∫√(1 + (f')²) dx
- For unit circle y = √(1−x²): arc length element is 1/√(1−x²) dx

### Section: Inverse Sine
- DEFINE arcsin(x) = ∫₀ˣ 1/√(1−t²) dt for x ∈ [−1, 1]
- This measures arc length from (1, 0) to (√(1−x²), x)

### Section: Sine and Cosine
- DEFINE sin = arcsin⁻¹
- DEFINE cos(θ) = √(1 − sin²(θ)) with appropriate sign
- Or: cos(θ) = sin(π/2 − θ) once we have π

### Section: Derivatives
- arcsin'(x) = 1/√(1−x²) (FTC)
- sin'(θ) = cos(θ) (inverse function theorem)
- cos'(θ) = −sin(θ)

### Section: The Differential Equation
- sin'' = (cos)' = −sin
- cos'' = (−sin)' = −cos
- Both satisfy y'' = −y

### Section: Defining π
- π = smallest positive zero of sin (why does this exist?)
- Equivalently: π/2 = smallest positive zero of cos
- Geometrically: π = half the circumference of unit circle

### Section: Taylor Series
- Taylor's theorem applied to sin and cos
- sin(x) = x − x³/3! + x⁵/5! − ...
- cos(x) = 1 − x²/2! + x⁴/4! − ...
- Convergence for all x (error bounds)

### Section: Basic Identities
- sin²(θ) + cos²(θ) = 1 (from definition)
- Periodicity: sin(θ + 2π) = sin(θ)
- Symmetry: sin odd, cos even

**Main Theorems:**
- *(Trig)* arcsin(x) = ∫₀ˣ 1/√(1−t²) dt
- *(Trig)* sin' = cos, cos' = −sin
- *(Trig)* sin, cos satisfy y'' = −y
- *(Trig)* Taylor series for sin, cos

---

## Chapter 38: Computing π *(Trig)*

### Section: Tangent and Arctangent
- tan = sin/cos
- DEFINE arctan(x) = ∫₀ˣ 1/(1+t²) dt
- arctan'(x) = 1/(1+t²)

### Section: Relating π to Arctangent
- tan(π/4) = 1 (the diagonal y = x meets unit circle at 45°)
- Therefore arctan(1) = π/4
- So π = 4·arctan(1)

### Section: Series for Arctangent
- 1/(1+t²) = 1 − t² + t⁴ − t⁶ + ... (geometric series)
- Integrate term by term: arctan(x) = x − x³/3 + x⁵/5 − ...
- Converges for |x| ≤ 1 (Abel's theorem at x = 1)

### Section: Gregory-Leibniz Series
- π/4 = arctan(1) = 1 − 1/3 + 1/5 − 1/7 + ...
- Historical: Gregory (1671), Leibniz (1674)
- Beautiful but very slow: need ~300 terms for 2 decimal places

### Section: Machin's Formula
- π/4 = 4·arctan(1/5) − arctan(1/239)
- Proof via addition formula for tangent
- Much faster: arctan(1/5) converges rapidly
- Historical: Machin (1706) computed 100 digits

### Section: Other Machin-like Formulas
- Many variations discovered over centuries
- Modern: formulas optimized for computation

### Section: ★ Wallis Product
- π/2 = (2/1)(2/3)(4/3)(4/5)(6/5)(6/7)...
- Proof via ∫₀^(π/2) sinⁿx recursion
- Connects to infinite products from Chapter 8

**Main Theorems:**
- *(Trig)* arctan(x) = x − x³/3 + x⁵/5 − ...
- *(Trig)* π = 4(1 − 1/3 + 1/5 − ...)
- *(Trig)* Machin's formula
- *(Trig)* Wallis product

---

# Part IX: Integrals and Limits

*Core question: How far can integration be extended?*

---

## Chapter 39: Improper Integrals

### Section: Unbounded Domains
- ∫₁^∞ f = lim_{b→∞} ∫₁ᵇ f
- Convergence and divergence

### Section: Unbounded Functions
- ∫ₐᵇ f when f has vertical asymptotes
- Examples

### Section: Convergence Tests
- Comparison
- Absolute convergence

**Main Theorems:**
- Convergence tests for improper integrals

---

## Chapter 40: What is Integrable?

### Section: Beyond Continuous Functions
- Monotone ⟹ integrable
- Piecewise continuous ⟹ integrable

### Section: The Darboux Criterion
- Integrable ⟺ U - L can be made arbitrarily small

### Section: Limitations
- Dirichlet function is NOT Darboux integrable
- The boundary of Darboux integrability

**Main Theorems:**
- Monotone ⟹ integrable
- Darboux integrability criterion

---

## Chapter 41: Uniform Convergence and Integration

### Section: Interchanging Limits and Integrals
- fₙ → f uniformly ⟹ ∫fₙ → ∫f
- Proof

### Section: Failure Without Uniformity
- Counterexamples

### Section: Term-by-Term Integration of Series
- Σfₙ integrated term-by-term under uniform convergence

**Main Theorems:**
- Uniform convergence preserves integrability
- Term-by-term integration

---

## Chapter 42: ★ Other Integration Theories

### Section: Riemann vs Darboux
- Riemann uses sample points
- Equivalence (stated)

### Section: Lebesgue Integration
- Idea: partition the range
- Dirichlet function IS Lebesgue integrable
- Better limit theorems

### Section: What Axioms Might We Add?
- Limit interchange axioms
- Preview of measure theory
- Looking ahead to functional analysis

---

# Running Examples Across Parts

| Object | Part I | Part II | Part III | Part IV | Part V | Part VI | Part VII | Part VIII | Part IX |
|--------|--------|---------|----------|---------|--------|---------|----------|-----------|---------|
| √2 | Exists via sup | Babylonian/Pell | Contraction, c.f. | | | | | | |
| φ | | Fibonacci/Binet | Monotone, c.f. | | | | | | |
| **e** | | | **(1+1/n)^n** | **e = Σ1/k!** | **Continuous** | **Full chapter (unified)** | | | |
| **exp** | **Define via sup** | | **a^x = lim** | **Func. eq.** | **Continuous** | **Full chapter (unified)** | | | |
| **log** | **Define via sup** | **Briggs** | | | **Continuous** | | | **Full chapter** | |
| **sin, cos** | | | | | | | | **Full chapter** | |
| **π** | | | | | | | | **Full chapter** | |
| Power series | | Geometric | Radius, binomial | | Cont. (Tannery) | Term-by-term diff | | | Term-by-term int |
| Continued fractions | | φ = [1;1,...] | General, √2 | | | | | | |
| Decimals | | Decimal → real | Real → decimal | | | | | | |
| Infinite products | | Viète, Wallis | Conv. criteria | | | | | | |
| Compactness | | | B-W | | Heine-Borel, EVT | | | | |
| Taylor | | | | | | Remainder thm | | Applied | |
| ζ(s), Σ1/n² | | | Converges s > 1 | | | | | | π²/6 |

---

# Exercises: Parallel Threads

## Functional Equations for Trig *(Trig exercises)*
- Chapter 5: State addition formulas as characterization
- Part V: If f, g continuous, satisfy addition formulas, and normalization, then f = sin, g = cos
- Part VI: Differentiate addition formulas to get f' = g, g' = −f

## Hyperbolic Functions *(Exponentials exercises)*
- Chapter 30: Define sinh(x) = (e^x − e^{−x})/2, cosh(x) = (e^x + e^{−x})/2
- Derive: cosh² − sinh² = 1, derivatives, addition formulas
- Note: all identities follow from exp properties

## Inverse Hyperbolic Functions *(Logs exercises)*
- Chapter 36: arsinh(x) = ln(x + √(x²+1)), etc.
- Compare integrals: ∫1/√(1+t²) dt vs ∫1/√(1−t²) dt
- Note: "free" once you have log — no new transcendentals
