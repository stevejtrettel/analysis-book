# Chapter 1: Foundations

## Overview

This chapter builds the stage for analysis. We begin with the rational numbers ℚ, which satisfy the familiar rules of algebra and order. But ℚ has holes — gaps that break the fundamental theorems of calculus. After seeing why attempts to patch these holes fail, we take a bold axiomatic leap: define ℝ as a complete ordered field. The rest of the chapter explores what we've created.

**The arc:**
> ℚ and its rules → ℚ has holes → Attempts to fix fail → The axiomatic leap → Exploring ℝ

---

## Historical Prelude (Unnumbered)

### The First Crisis

The Pythagoreans believed "all is number" — meaning rational number. Then someone (legend says Hippasus) proved that √2 is irrational. The diagonal of a unit square has no rational length. This was a philosophical catastrophe: geometry produced numbers that arithmetic couldn't name.

According to legend, Hippasus was drowned at sea for revealing this.

### Two Thousand Years of Holes

The problem didn't go away. For two millennia, mathematicians worked with "numbers" they couldn't define. Newton and Leibniz built calculus on foundations they couldn't articulate. What is a real number? What does it mean for a sequence to converge? The answers were circular or vague.

Calculus worked — brilliantly — but nobody could say why.

### The Resolution

In the 1870s, Dedekind and Cantor finally gave rigorous constructions of ℝ. But construction is tedious. A cleaner approach: *axiomatize*. Define ℝ by the properties it must satisfy. The key property — *completeness* — captures "no holes" precisely.

This chapter develops that axiomatic approach.

### The Message

The real numbers took 2000 years to get right. The definition we give isn't arbitrary — it's the hard-won answer to a fundamental problem. Understanding this history helps us appreciate why we need the completeness axiom and what it buys us.

---

## 1.1 Sets and Functions

### Sets

**Definition**: A *set* is a collection of objects, called *elements*.

**Notation**: 
- x ∈ A means x is an element of A
- x ∉ A means x is not an element of A
- {x : P(x)} is the set of all x satisfying property P
- Standard sets: ℕ = {1, 2, 3, ...}, ℤ = {..., -1, 0, 1, ...}, ℚ = {p/q : p, q ∈ ℤ, q ≠ 0}

**Subsets**: A ⊆ B means every element of A is an element of B.

**Equality**: A = B means A ⊆ B and B ⊆ A.

### Set Operations

**Union**: A ∪ B = {x : x ∈ A or x ∈ B}

**Intersection**: A ∩ B = {x : x ∈ A and x ∈ B}

**Difference**: A \ B = {x : x ∈ A and x ∉ B}

**Cartesian Product**: A × B = {(a, b) : a ∈ A, b ∈ B}

### Functions

**Definition**: A *function* f: A → B is a rule assigning to each element of A exactly one element of B.

- A is the *domain*
- B is the *codomain*
- f(A) = {f(x) : x ∈ A} is the *range* (or *image*)

**Important**: Functions are assignments, not formulas. The rule "f(x) = 1 if x is rational, 0 if x is irrational" defines a function, even though it has no formula.

**Notation**: f: A → B, x ↦ f(x)

### Types of Functions

**Definition**: 
- f is *injective* (one-to-one) if f(x₁) = f(x₂) implies x₁ = x₂
- f is *surjective* (onto) if for every y ∈ B, there exists x ∈ A with f(x) = y
- f is *bijective* if it is both injective and surjective

### Operations on Functions

**Composition**: If f: A → B and g: B → C, then g ∘ f: A → C is defined by (g ∘ f)(x) = g(f(x)).

**Inverse**: If f: A → B is bijective, then f⁻¹: B → A is defined by f⁻¹(y) = x where f(x) = y.

**Theorem**: f has an inverse if and only if f is bijective.

---

## 1.2 Fields and Order

### The Field Axioms

A *field* is a set F with operations + and · satisfying:

**Addition axioms**:
- (A1) Closure: a + b ∈ F
- (A2) Associativity: (a + b) + c = a + (b + c)
- (A3) Commutativity: a + b = b + a
- (A4) Identity: There exists 0 ∈ F with a + 0 = a
- (A5) Inverses: For each a, there exists -a with a + (-a) = 0

**Multiplication axioms**:
- (M1) Closure: a · b ∈ F
- (M2) Associativity: (a · b) · c = a · (b · c)
- (M3) Commutativity: a · b = b · a
- (M4) Identity: There exists 1 ∈ F with 1 ≠ 0 and a · 1 = a
- (M5) Inverses: For each a ≠ 0, there exists a⁻¹ with a · a⁻¹ = 1

**Distributive law**:
- a · (b + c) = a · b + a · c

**Example**: ℚ is a field. So is ℝ (once we define it).

**Non-example**: ℤ is not a field (no multiplicative inverse for 2).

### Building Notation

**Definition**: 
- 2 = 1 + 1
- 3 = 2 + 1
- 4 = 3 + 1
- etc.

**Exercise**: Prove 2 + 2 = 4. (Use associativity!)

### Practice Proofs from the Axioms

**Theorem**: 0 · a = 0 for all a.

*Proof*: 0 · a = (0 + 0) · a = 0 · a + 0 · a. Subtracting 0 · a from both sides: 0 = 0 · a. ∎

**Theorem**: (-1) · a = -a.

*Proof*: a + (-1) · a = 1 · a + (-1) · a = (1 + (-1)) · a = 0 · a = 0. So (-1) · a is the additive inverse of a. ∎

**Theorem**: (-a)(-b) = ab.

*Proof*: (-a)(-b) = (-1)(a)(-1)(b) = (-1)(-1)(ab). And (-1)(-1) = 1 since (-1)(-1) + (-1) = (-1)(-1 + 1) = (-1)(0) = 0, so (-1)(-1) = -(-1) = 1. ∎

**Theorem**: (a + b)(a - b) = a² - b².

*Proof*: Expand using distributivity:
(a + b)(a - b) = a(a - b) + b(a - b) = a² - ab + ba - b² = a² - b². ∎

**Remark**: All the algebra you learned in school follows from these axioms!

### The Order Axioms

An *ordered field* is a field F with a distinguished subset P ⊆ F (the "positive elements") satisfying:

- (O1) If a, b ∈ P, then a + b ∈ P
- (O2) If a, b ∈ P, then a · b ∈ P
- (O3) Trichotomy: For each a ∈ F, exactly one holds: a ∈ P, or a = 0, or -a ∈ P

**Definition**: a < b means b - a ∈ P. Also: a > b means b < a, a ≤ b means a < b or a = b.

**Example**: ℚ is an ordered field with P = {x ∈ ℚ : x > 0}.

### Properties of Inequalities

All derived from (O1), (O2), (O3):

**Theorem**: Inequalities and addition.
- a < b implies a + c < b + c

*Proof*: (b + c) - (a + c) = b - a ∈ P. ∎

**Theorem**: Inequalities and multiplication.
- a < b and c > 0 implies ac < bc
- a < b and c < 0 implies ac > bc

*Proof*: For c > 0: bc - ac = (b - a)c. Since b - a ∈ P and c ∈ P, by (O2), (b - a)c ∈ P.

For c < 0: we have -c ∈ P. So (b - a)(-c) ∈ P, meaning ac - bc ∈ P, so bc < ac. ∎

**Remark**: This *explains* why multiplying by negatives reverses inequalities!

**Theorem**: Transitivity: a < b and b < c implies a < c.

**Theorem**: Squares are nonnegative: a² ≥ 0 for all a, with equality iff a = 0.

*Proof*: If a > 0, then a² = a · a ∈ P by (O2). If a < 0, then -a ∈ P, so a² = (-a)(-a) ∈ P. If a = 0, then a² = 0. ∎

**Corollary**: 1 > 0.

*Proof*: 1 = 1² ≥ 0, and 1 ≠ 0. ∎

### Absolute Value

**Definition**: The *absolute value* of a is:

$$|a| = \begin{cases} a & \text{if } a \geq 0 \\ -a & \text{if } a < 0 \end{cases}$$

**Properties**:
- |a| ≥ 0, with equality iff a = 0
- |ab| = |a||b|
- |a + b| ≤ |a| + |b| (triangle inequality)

**Theorem (Triangle Inequality)**: |a + b| ≤ |a| + |b|.

*Proof*: We have -|a| ≤ a ≤ |a| and -|b| ≤ b ≤ |b|.

Adding: -(|a| + |b|) ≤ a + b ≤ |a| + |b|.

This means |a + b| ≤ |a| + |b|. ∎

**Corollary**: ||a| - |b|| ≤ |a - b|.

**Geometric interpretation**: |a - b| is the distance between a and b on the number line.

---

## 1.3 The Incompleteness of ℚ

### The First Crisis: √2

**Theorem**: There is no rational number whose square is 2.

*Proof*: Suppose √2 = p/q with p, q ∈ ℤ, q ≠ 0, and gcd(p, q) = 1.

Then p² = 2q², so p² is even, so p is even. Write p = 2k.

Then 4k² = 2q², so q² = 2k², so q² is even, so q is even.

But then gcd(p, q) ≥ 2. Contradiction. ∎

**The problem**: The diagonal of a unit square has length √2. Geometry demands this number exist, but ℚ doesn't have it.

### Attempts to Fix ℚ

**Attempt 1: Adjoin √2**

Define ℚ(√2) = {a + b√2 : a, b ∈ ℚ}.

This is a field containing ℚ and √2. Problem solved?

No: √3 ∉ ℚ(√2). We've patched one hole but created no others — there are still infinitely many.

**Attempt 2: Constructible Numbers**

Take all numbers constructible by compass and straightedge, starting from 0 and 1. This includes √2 (diagonal of unit square), √3, and nested square roots like √(2 + √2).

This is a field! But: ∛2 is not constructible (proved by Wantzel, 1837). Still incomplete.

**Attempt 3: Algebraic Numbers**

Let 𝔸 = {roots of polynomials with integer coefficients}. This includes √2, ∛2, and all the roots we could name.

This is a field! But: some numbers are *transcendental* — not roots of any polynomial. Liouville (1844) constructed examples; later π (Lindemann, 1882) and e (Hermite, 1873) were proved transcendental.

### The Pattern

Each "fix" reveals new holes:
- Adjoin √2 → miss √3
- Constructible → miss ∛2
- Algebraic → miss π

We can't patch our way to completeness. There are uncountably many holes (we'll prove this), and we can only fill countably many at a time.

### Gaps Break Mathematics

Why does this matter? Because the fundamental theorems of calculus fail in ℚ!

**IVT fails**: Let f(x) = x² - 2 on [1, 2] ∩ ℚ. Then f(1) = -1 < 0 and f(2) = 2 > 0. But there is no c ∈ ℚ with f(c) = 0.

**EVT fails**: Let S = {x ∈ ℚ : x² < 2, x > 0}. This is bounded above (by 2) but has no least upper bound in ℚ.

**Bisection fails**: The algorithm to find √2 by bisection produces a sequence of rationals that "should" converge... but the limit doesn't exist in ℚ.

**Calculus is impossible**: Integration, differentiation, infinite series — all rely on limits. If limits don't exist, nothing works.

### The Axiomatic Approach

We abandon construction. Instead:

**Bold move**: *Define* ℝ to be a complete ordered field.

We don't say what real numbers *are*. We say what properties they satisfy. The key property — *completeness* — captures "no holes" precisely.

This is like defining a group by its axioms rather than constructing one. The axioms tell us how to work with ℝ; we don't need to know its internal structure.

**Cost**: We don't know what real numbers "are."

**Benefit**: We get everything we need, and we skip the endless patching.

---

## 1.4 Completeness

### Upper and Lower Bounds

**Definition**: Let S ⊆ ℝ be nonempty.
- M is an *upper bound* for S if x ≤ M for all x ∈ S
- S is *bounded above* if an upper bound exists
- Similarly: lower bound, bounded below

**Definition**: 
- The *supremum* sup S is the least upper bound
- The *infimum* inf S is the greatest lower bound

**Example**: S = {1 - 1/n : n ∈ ℕ} = {0, 1/2, 2/3, 3/4, ...}.
- Upper bounds: 1, 2, 47, ...
- sup S = 1 (least upper bound)
- Note: 1 ∉ S. The sup need not be in the set.

### The Completeness Axiom

**Axiom (Completeness)**: Every nonempty subset of ℝ that is bounded above has a supremum in ℝ.

Equivalently: Every nonempty subset bounded below has an infimum.

**Remark**: This is the ONE axiom that distinguishes ℝ from ℚ. The rationals satisfy all field and order axioms but not completeness.

### The ε-Characterization

**Theorem**: Let S be nonempty and bounded above. Then M = sup S if and only if:
1. M is an upper bound for S
2. For every ε > 0, there exists x ∈ S with x > M - ε

*Proof*: 
(⟹) If M = sup S and ε > 0, then M - ε is not an upper bound (since M is the *least* upper bound). So some x ∈ S satisfies x > M - ε.

(⟸) Condition 1 says M is an upper bound. Condition 2 says no smaller number is an upper bound. So M is the least upper bound. ∎

**Usage**: This characterization is essential for proofs. "Given ε, I can find an element within ε of the sup."

### The Nested Interval Property

**Theorem (Nested Intervals)**: If [a₁, b₁] ⊇ [a₂, b₂] ⊇ [a₃, b₃] ⊇ ··· is a nested sequence of closed intervals with bₙ - aₙ → 0, then ∩[aₙ, bₙ] contains exactly one point.

*Proof*: 
The sequence (aₙ) is increasing and bounded above (by any bₘ). By completeness, aₙ → L for some L.

The sequence (bₙ) is decreasing and bounded below. By completeness, bₙ → M for some M.

Since aₙ ≤ bₙ for all n, we have L ≤ M.

Since bₙ - aₙ → 0, we have M - L = 0, so L = M.

Any x ∈ ∩[aₙ, bₙ] satisfies aₙ ≤ x ≤ bₙ for all n, so x = L.

And L itself is in every [aₙ, bₙ]. ∎

**Remark**: This fails in ℚ. The intervals [aₙ, bₙ] where aₙ, bₙ are decimal approximations to √2 from below and above have empty intersection in ℚ.

---

## 1.5 The Real Numbers

We define ℝ to be a complete ordered field. This is bold: we assert existence without construction. What have we created?

### 1.5.1: No Monsters

**Theorem (Archimedean Property)**: For any x ∈ ℝ, there exists n ∈ ℕ with n > x.

*Proof*: Suppose not. Then ℕ is bounded above, so s = sup ℕ exists.

Since s - 1 < s, the number s - 1 is not an upper bound for ℕ. So there exists n ∈ ℕ with n > s - 1.

But then n + 1 > s, and n + 1 ∈ ℕ. This contradicts s being an upper bound. ∎

**Corollary**: For any ε > 0, there exists n ∈ ℕ with 1/n < ε.

**Interpretation**: No infinitely large or infinitely small real numbers. Every real is finite, living between two integers. The real line is "normal."

**Theorem (Density of ℚ)**: Between any two real numbers lies a rational.

*Proof*: Let a < b. By Archimedean, choose n with 1/n < b - a.

Consider the integers: by Archimedean, some m ∈ ℤ satisfies m > na, and some k ∈ ℤ satisfies k < na.

So the set {m ∈ ℤ : m > na} is nonempty and bounded below. Let m be its least element.

Then m - 1 ≤ na < m, so na < m ≤ na + 1 < na + n(b-a) = nb.

Dividing by n: a < m/n < b. ∎

**Theorem (Density of Irrationals)**: Between any two real numbers lies an irrational.

*Proof*: Let a < b. By density of ℚ, choose rational r with a - √2 < r < b - √2.

Then a < r + √2 < b, and r + √2 is irrational. ∎

**Interpretation**: The rationals are everywhere dense — no "chunks" of pure irrationals. We've filled gaps, not added alien regions.

### 1.5.2: New Treasures

**Theorem**: √2 exists in ℝ.

*Proof*: Let S = {x ∈ ℝ : x > 0 and x² < 2}.

S is nonempty (1 ∈ S) and bounded above (2 is an upper bound, since x > 2 implies x² > 4 > 2).

By completeness, s = sup S exists. We prove s² = 2.

**Case s² < 2**: We show s is not an upper bound by finding t > s with t² < 2.

Choose small h > 0 with h < 1 and h < (2 - s²)/(2s + 1).

Then (s + h)² = s² + 2sh + h² < s² + 2sh + h = s² + h(2s + 1) < s² + (2 - s²) = 2.

So s + h ∈ S, contradicting s = sup S.

**Case s² > 2**: We show s is not the *least* upper bound by finding t < s that's still an upper bound.

Choose small h > 0 with h < (s² - 2)/(2s).

Then (s - h)² = s² - 2sh + h² > s² - 2sh = s² - h(2s) > s² - (s² - 2) = 2.

For any x ∈ S: x² < 2 < (s - h)², so x < s - h. Thus s - h is an upper bound, contradicting s being least.

**Conclusion**: s² = 2, so s = √2. ∎

**Definition**: For a ≥ 0 and n ∈ ℕ, define ⁿ√a = sup{x ≥ 0 : xⁿ < a}.

**Theorem**: (ⁿ√a)ⁿ = a.

*Proof*: Similar to √2. ∎

**Definition (Rational Exponents)**: For a > 0 and p/q ∈ ℚ with q > 0:

$$a^{p/q} = \left(\sqrt[q]{a}\right)^p$$

**Theorem**: This is well-defined and satisfies:
- a^{r+s} = a^r · a^s
- a^{rs} = (a^r)^s
- a^r < a^s for a > 1, r < s

**Definition (Real Exponents)**: For a > 1 and x ∈ ℝ:

$$a^x = \sup\{a^r : r \in \mathbb{Q}, r < x\}$$

For 0 < a < 1, define a^x = (1/a)^{-x}.

**Theorem**: The functional equation a^{x+y} = a^x · a^y holds for all x, y ∈ ℝ.

*Proof*: Guided exercise. ∎

**Definition (Logarithms)**: For a > 0, a ≠ 1, and y > 0:

$$\log_a(y) = \sup\{r \in \mathbb{Q} : a^r < y\}$$

**Theorem**: 
- log_a(xy) = log_a(x) + log_a(y)
- a^{log_a(y)} = y
- log_a(a^x) = x

**Interpretation**: Completeness lets us build roots, exponents, and logarithms — all the functions we need.

### 1.5.3: Infinite Riches

**Theorem**: ℝ is uncountable.

*Proof*: We show [0, 1] is uncountable. Suppose not: list all elements as x₁, x₂, x₃, ...

Build nested intervals:
- [a₁, b₁] = [0, 1] with x₁ ∉ (a₁, b₁) if possible (else take [0, 1/2] or [1/2, 1] avoiding x₁)
- [a₂, b₂] ⊂ [a₁, b₁] with x₂ ∉ (a₂, b₂)
- Continue, ensuring bₙ - aₙ → 0

By nested interval theorem, ∩[aₙ, bₙ] = {L} for some L.

But L ≠ xₙ for all n, since L ∈ [aₙ, bₙ] and xₙ ∉ (aₙ, bₙ).

Contradiction: L ∈ [0, 1] but L is not in our list. ∎

**Remark**: Cantor's diagonal argument gives another proof (see exercises).

**Corollary**: The irrationals are uncountable.

*Proof*: ℝ = ℚ ∪ (ℝ \ ℚ). If the irrationals were countable, ℝ would be a union of two countable sets, hence countable. ∎

**The Bigger Picture**:

Since ℝ is uncountable but ℚ is countable, "most" real numbers are irrational.

More strikingly:

**Algebraic numbers are countable**: There are only countably many polynomials with integer coefficients, each with finitely many roots. So 𝔸 is countable.

**Corollary**: Transcendental numbers exist — in fact, "most" reals are transcendental!

**Computable numbers are countable**: A number is computable if some algorithm can output its digits. But there are only countably many algorithms (each is a finite string).

**Corollary**: "Most" reals cannot be computed by any algorithm.

**Definable numbers are countable**: A number is definable if some finite English sentence uniquely specifies it. There are only countably many sentences.

**Corollary**: "Most" reals cannot even be described.

**Interpretation**: We've constructed ℝ to have no holes, and it turned out to be unimaginably vast. The rationals, algebraics, computables — all the numbers we can name or compute — are a countable dust in an uncountable ocean.

---

## Chapter Summary

| Section | Purpose |
|---------|---------|
| Prelude | 2000 years to define ℝ |
| 1.1 Sets and Functions | Vocabulary |
| 1.2 Fields and Order | Axioms, algebra, inequalities |
| 1.3 Incompleteness of ℚ | Why we need completeness |
| 1.4 Completeness | The axiom that fixes everything |
| 1.5 The Real Numbers | What we've created |

## Key Theorems

1. **Basic algebra follows from field axioms**: 0·a = 0, (-1)a = -a, etc.
2. **Triangle inequality**: |a + b| ≤ |a| + |b|
3. **√2 is irrational**
4. **ε-characterization of supremum**
5. **Nested interval theorem**
6. **Archimedean property**: no infinities
7. **Density of ℚ and irrationals**
8. **Existence of √2** (and all roots)
9. **ℝ is uncountable**

## Exercises (Selected)

### Section 1.1
- Prove (A ∪ B)ᶜ = Aᶜ ∩ Bᶜ (De Morgan)
- Show f: A → B is bijective iff there exists g: B → A with g ∘ f = id_A and f ∘ g = id_B

### Section 1.2
- Prove 2 + 2 = 4 from axioms
- Prove a² - b² = (a+b)(a-b)
- Prove: if 0 < a < b, then a² < b²
- Prove the reverse triangle inequality: ||a| - |b|| ≤ |a - b|

### Section 1.3
- Prove √3 is irrational
- Prove √2 + √3 is irrational
- Show that the bisection algorithm for √2 produces rationals aₙ, bₙ with aₙ² < 2 < bₙ² and bₙ - aₙ → 0

### Section 1.4
- Prove: if S has a supremum, it is unique
- Prove: sup(A ∪ B) = max(sup A, sup B) if both exist
- Prove: if S ⊆ T and both are bounded above, then sup S ≤ sup T

### Section 1.5
- Prove the Archimedean property implies: for any x, y > 0, there exists n with nx > y
- Complete the proof that a^{x+y} = a^x · a^y for real exponents
- Prove ℕ is countable
- Prove ℚ is countable
- **(Extended)** Prove ℝ is uncountable using Cantor's diagonal argument
- **(Extended)** Prove the algebraic numbers are countable

## Dependencies

**Sets up for later chapters**:
- Chapter 2: Archimedean property, sup/inf, a^x definition
- Chapter 3: Completeness in all its forms
- Chapter 5: Density, IVT repaired
- Chapter 6: Existence of roots, exponentials, logs
