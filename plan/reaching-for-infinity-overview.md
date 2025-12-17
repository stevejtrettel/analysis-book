# Reaching for Infinity: Project Overview

This document captures the philosophy, structure, and key decisions for "Reaching for Infinity," an undergraduate analysis textbook. It serves as context for anyone (human or AI) working on the project.

---

## 1. Book Metadata

**Title**: Reaching for Infinity

**Author**: Steve Trettel, Assistant Professor of Mathematics, University of San Francisco

**Audience**: Undergraduates taking a first course in real analysis, typically after calculus and an introduction to proofs.

**Goal**: Replace Rudin's "Principles of Mathematical Analysis" with a text that is equally rigorous but more pedagogically sound. Rudin is terse, unmotivated, and teaches students to fear analysis. This book aims to be rigorous *and* readable, with historical context and clear motivation throughout.

**What's wrong with Rudin**:
- Definitions appear without motivation ("why would anyone define this?")
- Historical context absent (students don't see the problems that drove the theory)
- Elementary functions (exp, log, sin, cos) appear suddenly in Chapter 8, disconnected from everything
- Terse to the point of obscurity
- Students memorize rather than understand

**What this book does differently**:
- Every definition is motivated by a problem or question
- Historical preludes show the crises that shaped analysis
- Elementary functions woven throughout, from Chapter 1 to Chapter 6
- Proofs are complete but also explained
- The "why" comes before the "what"

**Prerequisites**: Calculus (single variable), basic proof techniques (direct proof, contradiction, induction). No prior analysis.

**Intended use**: One-year course (Part I + II in first semester, Part III in second), or one-semester course (Parts I + II only).

**Scope**: Foundations through functional analysis. The full book covers:
- Part I: Real numbers and sequences
- Part II: Functions of a real variable (continuity, differentiation, integration)
- Part III: Function spaces, advanced topics

This overview document focuses on Part I and Part II (Chapters 1-9).

---

## 2. Philosophy & Approach

### 2.1 Historical Narrative

Each chapter opens with a **Historical Prelude** (unnumbered section) that explains:
- What problem mathematicians were trying to solve
- What went wrong with naive approaches
- How the chapter's content resolves the problem

This is not "who did what when" — it's "what crisis motivated this theory." Examples:
- Chapter 1: The Pythagoreans discovered √2 is irrational; it took 2000 years to properly define the reals
- Chapter 2: Zeno's paradoxes questioned whether infinite processes make sense; ε-N definitions resolve this
- Chapter 3: Euler manipulated series freely, sometimes getting nonsense; Cauchy brought rigor
- Chapter 4: Swapping limits can change answers; when is it safe?

### 2.2 Elementary Functions Throughout

A distinctive feature: exponentials, logarithms, and trigonometric functions are not isolated in a late chapter. They appear throughout the book as the theory develops:

- **Chapter 1**: Define aˣ = sup{aʳ : r ∈ ℚ, r < x} using completeness; define log as inverse
- **Chapter 2**: Introduce e via compound interest (1+1/n)ⁿ; prove aˣ = lim a^{rₙ}
- **Chapter 4**: Prove (1+x/n)ⁿ = Σxᵏ/k! via Tannery's theorem
- **Chapter 5**: Power series are continuous; Abel's theorem for boundary behavior
- **Chapter 6**: Full development — exp is its own derivative, exp(x+y) = exp(x)exp(y) via Cauchy product, etc.

This approach lets students see the functions develop alongside the theory, rather than appearing from nowhere.

### 2.3 Pedagogical Principles

- **Motivate before define**: State the problem or question before giving a definition
- **Examples before generality**: Specific cases (√2, geometric series) before abstract theorems
- **Honest about difficulty**: Acknowledge when something is subtle or took centuries to resolve
- **Proofs are explanations**: A proof should convey *why* something is true, not just *that* it's true
- **Exercises at multiple levels**: Routine practice, extensions, and guided explorations

### 2.4 Rigorous but Readable

The book maintains full rigor — every theorem is proved, every definition is precise. But:
- Proofs include verbal explanation, not just symbols
- Key steps are highlighted ("The key observation is...")
- Remarks explain connections and significance
- The tone is conversational, not telegraphic

---

## 3. Overall Structure

### Part I: Real Numbers (Chapters 1-4)

The real number system and limits of sequences.

| Chapter | Title | Theme |
|---------|-------|-------|
| 1 | Foundations | From ℚ to ℝ: why completeness matters |
| 2 | Limits | Definition, computation, existence |
| 3 | Detecting Convergence | Proving convergence without knowing the limit |
| 4 | Exchanging Limits | When order matters |

### Part II: Functions (Chapters 5-9)

Functions of a real variable: continuity, differentiation, integration.

| Chapter | Title | Theme |
|---------|-------|-------|
| 5 | Continuity | Definition, properties, interval theorems |
| 6 | Differentiation | Derivatives, mean value theorem, elementary functions |
| 7 | Integration | Axiomatic approach, Riemann integral |
| 8 | Calculus | Fundamental theorem, computation |
| 9 | Completing the Integral | Daniell/Lebesgue extension |

### Part III: Function Spaces (Chapters 10+)

To be developed. Includes:
- Sequences and series of functions
- Uniform convergence (this is where it belongs!)
- Metric spaces
- Further topics

### How the Parts Connect

**Part I** builds the foundations: we understand ℝ, limits, and series completely before touching functions.

**Part II** uses Part I constantly: continuity uses sequences (Chapter 2), completeness guarantees extreme values (Chapter 1), power series need convergence theory (Chapters 2-4).

**Part III** revisits Part II from a higher perspective: function spaces, uniform convergence, and the deeper structure of analysis.

---

## 4. Key Structural Decisions

These are the major decisions made during planning, with reasoning.

### 4.1 Monotone Convergence Theorem in Chapter 2, Not Chapter 3

**Decision**: MCT appears in Chapter 2 (Limits), not Chapter 3 (Detecting Convergence).

**Reasoning**: MCT tells us *what* the limit is (the supremum), not just that it exists. It fits with "computing limits" more than "proving convergence without knowing the limit." This also enables the number e and decimal representations in Chapter 2.

### 4.2 Uniform Convergence Deferred to Part III (Chapter 10)

**Decision**: Uniform convergence is NOT in Chapter 4 or Chapter 5. It belongs in Chapter 10 (function spaces).

**Reasoning**: 
- Uniform convergence is really "convergence in the sup norm" — a function space concept
- "Uniform limit of continuous functions is continuous" becomes "C([a,b]) is complete" in Chapter 10
- For power series continuity (Chapter 5), Tannery's theorem suffices directly
- This is more conceptually unified: uniform convergence belongs to the study of function spaces

### 4.3 Tannery's Theorem as the Main Tool for Limit-Sum Exchange

**Decision**: Chapter 4 uses Tannery's theorem (dominated convergence for series) rather than introducing uniform convergence.

**Reasoning**: Tannery gives a clean condition (domination by convergent series) that handles all the cases we need in Part II. Full uniform convergence treatment comes in Part III.

### 4.4 Summation by Parts / Abel's Test Appear in Chapter 5, Not Chapter 3

**Decision**: Summation by parts and Abel's test are NOT in Chapter 3. They appear in Chapter 5.2 within the proof of Abel's theorem for power series.

**Reasoning**: We asked "do we actually need Dirichlet/Abel tests as standalone theorems?" The answer is no — we only need them for Abel's theorem on power series boundary behavior. Put the tool where it's used.

### 4.5 Cauchy Condensation and General p-Series as Extended Exercises

**Decision**: The Cauchy condensation test and the full p-series theorem (Σ1/nᵖ converges iff p > 1) are extended/guided exercises, not main text.

**Reasoning**: 
- For p > 2, direct comparison with Σ1/n² suffices
- Σ1/n² converges by comparison with telescoping Σ1/(n(n-1))
- Cauchy condensation is elegant but not essential for the main narrative
- Students who want more can work through the guided exercise

### 4.6 No Integral Test

**Decision**: The integral test for series does NOT appear in Chapter 3.

**Reasoning**: Integrals aren't defined until Part II! We can't use integrals to test series when the reader doesn't know what an integral is. This is a common circular dependency in analysis texts.

### 4.7 Alternating Series Test Alongside Other Series Tests

**Decision**: The alternating series test is in Chapter 3.1 with comparison, ratio, and root tests.

**Reasoning**: Though it uses MCT (not comparison), it's still a "series test." We note that it's different in character (MCT on even/odd partial sums rather than comparison with geometric). Possible future revision: move it elsewhere if a better home emerges.

### 4.8 The Number e Introduced in Chapter 2

**Decision**: e = lim(1+1/n)ⁿ is defined in Chapter 2.3 (MCT section).

**Reasoning**: 
- The compound interest motivation is historically compelling
- We can prove (1+1/n)ⁿ is increasing and bounded using MCT
- This gives us a name for the constant
- The full significance (connection to exp, natural base) comes in Chapter 6

### 4.9 Chapter 1 Combines Multiple "Chapters" from Earlier Drafts

**Decision**: Earlier drafts had 6 chapters (0-5) for foundations. Now consolidated into one Chapter 1.

**Reasoning**: For a one-year course, spending too long before limits is demotivating. Chapter 1 is substantial (~25 pages) but moves efficiently: sets → fields → order → incompleteness of ℚ → completeness → ℝ.

### 4.10 Three-Section Structure for Chapter 5 (Continuity)

**Decision**: Chapter 5 has three long sections rather than many short ones.

**Reasoning**:
- 5.1: Definition and Properties (~8 pages) — what is continuity
- 5.2: Continuity and Limits of Functions (~6 pages) — power series, Abel's theorem
- 5.3: Continuous Functions on Intervals (~10 pages) — IVT, EVT, uniform continuity

This groups material thematically. Function limits are too short for their own section; monotone functions fit with inverses in 5.3.

---

## 5. The Elementary Functions Thread

This tracks how elementary functions develop across chapters.

### Chapter 1: Foundations
- **Defined**: aˣ = sup{aʳ : r ∈ ℚ, r < x} for a > 1, x ∈ ℝ
- **Defined**: log_a(y) = sup{r ∈ ℚ : aʳ < y}
- **Proved**: Functional equations (as guided exercises)
- **Status**: We have definitions and basic properties, but no derivatives, no series

### Chapter 2: Limits
- **Introduced**: e = lim(1+1/n)ⁿ via compound interest
- **Proved**: (1+1/n)ⁿ is increasing and bounded (using MCT)
- **Proved**: aˣ = lim a^{rₙ} for any rational sequence rₙ → x
- **Historical**: Briggs's method for computing logarithms
- **Status**: e exists and has a value (~2.718); connection to exp not yet clear

### Chapter 4: Exchanging Limits
- **Proved**: (1+x/n)ⁿ = Σxᵏ/k! via Tannery's theorem
- **Consequence**: e = Σ1/k!
- **Status**: Compound interest limit equals a power series! Sets up Chapter 6.

### Chapter 5: Continuity
- **Proved**: Power series are continuous on interior of convergence (via Tannery)
- **Proved**: Abel's theorem — if Σaₙ converges, then lim_{x→1⁻} Σaₙxⁿ = Σaₙ
- **Proved**: Uniqueness of power series representations
- **Status**: exp (once defined) will be continuous

### Chapter 6: Differentiation
- **Defined**: exp(x) = Σxⁿ/n! (now the official definition)
- **Proved**: exp'(x) = exp(x)
- **Proved**: exp(x+y) = exp(x)exp(y) via Cauchy product
- **Proved**: exp = inverse of natural log (connecting to Chapter 1)
- **Proved**: (1+x/n)ⁿ → exp(x) (now reproved using derivatives)
- **Defined/Proved**: sin, cos via series; all their properties
- **Status**: Full theory complete

---

## 6. Historical Preludes

### Chapter 1: Foundations
**Theme**: The 2000-year problem of defining real numbers
- Pythagorean crisis: √2 is irrational
- Centuries of informal "numbers"
- Dedekind/Cantor (1870s) finally gave constructions
- Axiomatic approach: define by properties

### Chapter 2: Limits
**Theme**: Making sense of infinite processes
- Zeno's paradoxes (5th century BCE)
- Newton/Leibniz used limits intuitively
- Cauchy (1821): verbal definition
- Weierstrass (1860s): ε-N precision

### Chapter 3: Detecting Convergence
**Theme**: Which series can we trust?
- Grandi's series: 1-1+1-1+... equals 0? 1? 1/2?
- Euler's bold manipulations (sometimes right, sometimes wrong)
- Riemann rearrangement: conditional convergence is dangerous
- Cauchy's tests bring order

### Chapter 4: Exchanging Limits
**Theme**: When operations commute
- Euler swapped limits freely
- Sometimes correct, sometimes nonsense
- Cauchy, Tannery, and the search for conditions

### Chapter 5: Continuity
**Theme**: What is a function?
- Euler: functions are formulas
- Fourier: forced broader view
- Dirichlet (1829): function discontinuous everywhere
- Weierstrass (1872): continuous but nowhere differentiable
- ε-δ definition becomes necessary

### Chapter 6: Differentiation
**Theme**: The derivative's power and subtlety
- Newton and Leibniz: what is dx?
- Berkeley's criticism ("ghosts of departed quantities")
- Limit definition resolves the paradox
- Mean value theorem: local to global

### Chapter 7: Integration
**Theme**: What is area?
- Archimedes: method of exhaustion
- Cavalieri, Fermat: early integration
- Riemann: precise definition
- Axiomatic approach: define properties first

### Chapter 8: Calculus
**Theme**: The connection between differentiation and integration
- Newton/Leibniz: FTC connects derivative and integral
- The miracle: difficult Riemann sums become easy antiderivatives
- Computing what Chapter 7 defined

### Chapter 9: Completing the Integral
**Theme**: Beyond Riemann
- Limitations of Riemann integral
- Lebesgue's revolution
- Daniell's axiomatic approach

---

## 7. Chapter-by-Chapter Notes

### Chapter 1: Foundations

**Title**: Foundations

**Theme**: Building ℝ from the ground up; why completeness is the key axiom

**Sections**:
- 1.1 Sets and Functions (~3 pages): Vocabulary — sets, operations, functions, bijections
- 1.2 Fields and Order (~6 pages): Field axioms, practice proofs, order from positivity, absolute value, triangle inequality
- 1.3 The Incompleteness of ℚ (~5 pages): √2 irrational, attempts to fix (ℚ(√2), constructible, algebraic), gaps break mathematics
- 1.4 Completeness (~4 pages): Sup/inf, completeness axiom, ε-characterization, nested intervals
- 1.5 The Real Numbers (~7 pages): Three subsections:
  - 1.5.1 No Monsters: Archimedean property, density of ℚ
  - 1.5.2 New Treasures: √2 exists (full proof), roots, exponents, logarithms
  - 1.5.3 Infinite Riches: Uncountability, transcendentals exist, most reals are indescribable

**What's in**:
- Full proof of √2 irrational
- Practice proofs from field axioms (0·a=0, etc.)
- Full proof that √2 exists in ℝ using sup
- Definitions of aˣ and log_a via sup
- Uncountability via nested intervals
- Cantor diagonal as guided exercise

**What's out**:
- Dedekind cuts or Cauchy sequence construction of ℝ (mentioned historically, not developed)
- Cardinality beyond countable/uncountable

**Key decisions**:
- Combine 6 earlier chapters into 1
- Positivity axioms (clean, explains why negatives reverse inequalities)
- "Attempts to fix ℚ" narrative is central to motivation
- Playful subsection names in 1.5 (No Monsters, New Treasures, Infinite Riches)

---

### Chapter 2: Limits

**Title**: Limits

**Theme**: What is a limit, and how do we compute them?

**Sections**:
- 2.1 Definition (~6 pages): Sequences, ε-N definition, basic examples, uniqueness, bounded
- 2.2 Limit Laws (~7 pages): Inequalities, squeeze, algebra, applications, Babylonian method for √2
- 2.3 Monotone Convergence (~6 pages): MCT, Babylonian converges, series with nonnegative terms, Σ1/n² and Σ1/n, the number e, aˣ = lim a^{rₙ}
- 2.4 Infinite Processes (~8 pages): Series, telescoping, geometric series, Briggs's method, infinite products, recursive sequences, Fibonacci/golden ratio
- 2.5 Representing Real Numbers (~7 pages): Density of rationals, decimal expansions, continued fractions

**What's in**:
- Full ε-N definition with multiple examples proved from scratch
- Limit laws with proofs
- MCT with proof (uses completeness)
- e = lim(1+1/n)ⁿ with proof it's increasing and bounded
- Geometric series formula
- Continued fractions and best approximation

**What's out**:
- Comparison tests (Chapter 3)
- Bolzano-Weierstrass (Chapter 3)
- Cauchy sequences (Chapter 3)

**Key decisions**:
- MCT in Chapter 2, not Chapter 3
- Geometric series as example in limit laws, fuller treatment in 2.4
- Combined "Infinite Processes" section (series + products + recursion)
- e introduced here, significance revealed in Chapter 6

---

### Chapter 3: Detecting Convergence

**Title**: Detecting Convergence

**Theme**: How do we know a sequence converges without knowing its limit?

**Sections**:
- 3.1 Series Tests (~8 pages): Absolute convergence, comparison, Σ1/n², limit comparison, ratio, root, alternating series
- 3.2 Subsequences (~6 pages): Subsequential limits, Bolzano-Weierstrass, limsup/liminf, root test with limsup, radius of convergence
- 3.3 Cauchy Sequences (~4 pages): Intrinsic criterion, Cauchy ⟺ convergent, Cauchy criterion for series
- 3.4 Contraction Mappings (~4 pages): Fixed point theorem, connection to derivatives, applications
- 3.5 The Many Faces of Completeness (~4 pages): MCT ⟺ BW ⟺ Cauchy ⟺ completeness

**What's in**:
- Full proofs of comparison, ratio, root tests
- Bolzano-Weierstrass (bisection proof)
- limsup/liminf as largest/smallest subsequential limits
- Cauchy criterion with full proof
- Contraction mapping theorem
- Equivalence of completeness formulations

**What's out**:
- Integral test (integrals not yet defined!)
- Summation by parts, Dirichlet's test, Abel's test (moved to Chapter 5)
- Cauchy condensation (extended exercise)
- General p-series (extended exercise)

**Key decisions**:
- One "Series Tests" section, not split
- Alternating series stays here despite different character (MCT not comparison)
- Capstone section proves equivalences
- Narrative: all these tests are "faces of completeness"

---

### Chapter 4: Exchanging Limits

**Title**: Exchanging Limits

**Theme**: When can we swap the order of limiting operations?

**Sections**:
- 4.1 Iterated Limits (~3-4 pages): Double sequences, order can matter, when iterated limits agree
- 4.2 Double Sums and the Cauchy Product (~4-5 pages): Swapping order, absolute convergence, Cauchy product, (Σxⁿ)² example
- 4.3 Dominated Convergence / Tannery (~4-5 pages): The theorem, (1+x/n)ⁿ = Σxᵏ/k!
- 4.4 Rearrangements (~3-4 pages): Absolute convergence is safe, Riemann rearrangement theorem

**What's in**:
- Examples where iterated limits differ
- Cauchy product formula and theorem
- Tannery's theorem with proof
- (1+x/n)ⁿ = Σxᵏ/k! as main example
- Riemann rearrangement (conditional → any value)

**What's out**:
- Uniform convergence (Chapter 10)
- Cesàro summation

**Key decisions**:
- Short chapter (~15-18 pages), focused
- Tannery not uniform convergence
- (1+x/n)ⁿ = Σxᵏ/k! connects Chapters 2 and 6

---

### Chapter 5: Continuity

**Title**: Continuity

**Theme**: What does it mean for a function to have no jumps?

**Sections**:
- 5.1 Definition and Properties (~8 pages): ε-δ definition, sequential characterization, function limits, discontinuity types, algebraic properties
- 5.2 Continuity and Limits of Functions (~6 pages): Pointwise convergence warning, power series continuous (via Tannery), Abel's theorem (with summation by parts), uniqueness
- 5.3 Continuous Functions on Intervals (~10 pages): IVT, EVT, uniform continuity, continuous extension, monotone functions and inverses

**What's in**:
- ε-δ definition and sequential characterization
- Types of discontinuities (removable, jump, essential)
- Power series continuous on interior (using Tannery from Chapter 4)
- Abel's theorem with full proof (summation by parts here)
- IVT, EVT with proofs
- Uniform continuity and the theorem for [a,b]

**What's out**:
- Full uniform convergence theory (Chapter 10)
- Lipschitz continuity (Chapter 6)
- Baire category (Chapter 10)

**Key decisions**:
- Three long sections, not many short ones
- Summation by parts appears here in Abel's theorem proof
- Uniform convergence deferred; Tannery suffices for power series

---

### Chapter 6: Differentiation

**Title**: Differentiation

**Theme**: Rates of change and their consequences

**Sections**: (To be fully outlined)
- Definition of derivative
- Derivative rules
- Mean Value Theorem and consequences
- L'Hôpital's rule
- Taylor's theorem
- Elementary functions: exp, log, sin, cos (full development)
- Newton's method

**What's in**:
- exp(x) = Σxⁿ/n! as definition
- exp' = exp
- exp(x+y) = exp(x)exp(y) via Cauchy product
- sin, cos via series
- All standard derivative rules

**Key decisions**:
- exp defined by series (connecting to Chapter 4)
- This is the payoff chapter for elementary functions thread

---

### Chapters 7-9: Integration

**Titles**: Integration, Calculus, Completing the Integral

**Theme**: Area, the Fundamental Theorem, and extending the integral

**Chapter 7: Integration**
- Axiomatic approach — define properties first, construct second
- Riemann integral construction
- Integrability criteria

**Chapter 8: Calculus**
- The Fundamental Theorem of Calculus
- Integration techniques enabled by FTC
- Computing the geometric quantities from Chapter 7

**Chapter 9: Completing the Integral**
- Daniell construction / Lebesgue extension
- Extending integration beyond continuous functions

(Full outlines exist; to be reviewed against current structure)

---

## 8. Dependencies Map

### Chapter 1 → Everything
- Completeness (sup/inf) used constantly
- Archimedean property
- aˣ and log definitions used in Chapter 2, Chapter 5, Chapter 6

### Chapter 2 → Chapters 3, 4, 5
- Definition of convergence
- Limit laws
- MCT
- Geometric series
- e = lim(1+1/n)ⁿ

### Chapter 3 → Chapters 4, 5, 6
- Absolute vs conditional convergence
- Bolzano-Weierstrass (used for EVT in Chapter 5)
- Cauchy criterion
- limsup/liminf for radius of convergence

### Chapter 4 → Chapters 5, 6
- Tannery's theorem (used for power series continuity)
- (1+x/n)ⁿ = Σxᵏ/k! (connects to exp)
- Cauchy product (used for exp(x+y) = exp(x)exp(y))

### Chapter 5 → Chapters 6, 7
- Continuity definitions
- IVT, EVT (used in differentiation and integration)
- Uniform continuity (used for integrability)

### Chapter 6 → Chapters 7, 8, 9
- Derivatives
- Mean Value Theorem
- Elementary functions

---

## 9. Style & Conventions

### Notation
- Sequences: (aₙ), (a_n)_{n=1}^∞, or just aₙ when clear
- Functions: f: A → B, x ↦ f(x)
- Sets: ℕ = {1, 2, 3, ...} (positive integers, not including 0)
- Intervals: [a,b], (a,b), [a,b), (a,b]
- Supremum/infimum: sup S, inf S
- Limits: lim_{n→∞} aₙ or lim aₙ when clear

### Definitions
- The term being defined is set in *italics*
- Example: "A sequence (aₙ) *converges* to L if..."

### Equations
- Displayed equations are unnumbered by default
- Use standard LaTeX math mode

### Historical Material
- Historical Prelude at chapter start (unnumbered section)
- Brief historical remarks inline within sections where relevant
- Focus on the *problems* that drove development, not just names/dates

---

## 10. Environments

We use Quarto's theorem-like environments. The book uses these environment types:

### Environment Types and When to Use Them

| Environment | Quarto Syntax | Purpose |
|-------------|---------------|---------|
| **Definition** | `:::{#def-name}` | Introducing a new concept or term |
| **Theorem** | `:::{#thm-name}` | Important, major results |
| **Proposition** | `:::{#prp-name}` | Standard mid-level results (the default) |
| **Lemma** | `:::{#lem-name}` | Results factored out of a proof to aid legibility |
| **Corollary** | `:::{#cor-name}` | Direct consequence of a theorem; usually close after, but can be distant if dependency is clear |
| **Example** | `:::{#exm-name}` | Concrete calculation or illustration of a definition/theorem |
| **Remark** | `:::{#rem-name}` | Commentary, elaboration, callbacks, expansions — not illustrating, just commenting |

### Guidelines

- **Theorem vs. Proposition**: Use Theorem for results you'd expect students to know by name (MCT, Bolzano-Weierstrass, IVT, MVT, FTC). Use Proposition for everything else.
- **Lemma**: Only when explicitly supporting a specific theorem's proof. Not for standalone minor results (those are Propositions).
- **Example vs. Remark**: If there's a calculation or concrete instance, it's an Example. If it's just commentary or connection, it's a Remark.
- **Warnings/Cautions**: Handled inline in the text, not as separate environments.

### Proofs

- Use `:::{.proof}` environment
- "Proof sketch" for incomplete proofs
- Multi-part proofs can use "Proof of (1):" etc.
- Proofs come later in the writing process; at the outlining stage we just identify theorem-like content

---

## 11. Labeling and Cross-Reference Conventions

### Quarto Cross-References

All theorem-like environments are labeled and cross-referenced using Quarto's built-in system:

```markdown
:::{#thm-limits-mct}
## Monotone Convergence Theorem
A monotone bounded sequence converges.
:::

Later: By @thm-limits-mct, the sequence converges.
```

**Important**: We do NOT manually number theorems. Quarto handles all numbering automatically.

### Label Format

Labels follow the pattern: `#type-chapter-name`

- `type`: The environment type (`def`, `thm`, `prp`, `lem`, `cor`, `exm`, `rem`)
- `chapter`: The chapter prefix (see table below)
- `name`: A descriptive name or standard eponym

### Chapter Prefixes

| Chapter | Title | Label Prefix |
|---------|-------|--------------|
| 1 | Foundations | `foundations` |
| 2 | Limits | `limits` |
| 3 | Detecting Convergence | `convergence` |
| 4 | Exchanging Limits | `exchanging` |
| 5 | Continuity | `continuity` |
| 6 | Differentiation | `differentiation` |
| 7 | Integration | `integration` |
| 8 | Calculus | `calculus` |
| 9 | Completing the Integral | `lebesgue` |

### Naming Guidelines

**Prefer descriptive names** that indicate content:
- `#def-limits-convergence`
- `#thm-limits-squeeze`
- `#thm-continuity-evt` (Extreme Value Theorem)
- `#prp-foundations-triangle-inequality`

**Use eponymous names when standard**:
- `#thm-convergence-bolzano-weierstrass`
- `#thm-convergence-cauchy-criterion`
- `#thm-calculus-ftc`
- `#thm-lebesgue-dominated-convergence`

**Abbreviations are fine for well-known results**:
- `mct` for Monotone Convergence Theorem
- `ivt` for Intermediate Value Theorem
- `evt` for Extreme Value Theorem
- `mvt` for Mean Value Theorem
- `ftc` for Fundamental Theorem of Calculus

### Examples

```markdown
:::{#def-foundations-supremum}
## Supremum
...
:::

:::{#thm-limits-mct}
## Monotone Convergence Theorem
...
:::

:::{#prp-limits-convergent-bounded}
A convergent sequence is bounded.
:::

:::{#cor-limits-squeeze}
## Squeeze Theorem
...
:::

:::{#exm-limits-geometric}
## Geometric Series
...
:::
```

---

## 12. Exercises

### Three Types of Exercises

**1. Inline Exercises (within the text)**

Short checks that students should do as they read. These verify understanding of a definition or ask students to complete part of a proof.

Format: Inline with the text, clearly marked.

Example uses:
- "Verify that this satisfies the definition."
- "Complete the proof for the case a < 0."
- "Check that the triangle inequality holds."

**2. Section Exercises (end of each section)**

Problems requiring thought that reinforce and extend the section's content. These are homework-level problems.

Format: Numbered list at the end of each section.

Characteristics:
- Require more thought than inline exercises
- May combine multiple ideas from the section
- Some extend the theory beyond what's in the text
- Some are computational practice

**3. Guided Explorations (end of chapter)**

Longer, structured investigations of a topic. Multiple related problems with prose between them, developing a theme.

Format: At the end of the chapter, after all sections. Includes explanatory prose connecting the problems.

Examples:
- Cauchy condensation test and general p-series
- Cantor's diagonal argument
- Construction of a continuous nowhere-differentiable function

### Hints

- Provided for selected exercises
- Appear immediately after the exercise in *italics*
- Not every exercise has a hint

Example:
```markdown
3. Prove that √2 + √3 is irrational.

*Hint: Square it and use the irrationality of √6.*
```

### Difficulty Markers

- **No marker**: Standard difficulty
- **★**: More challenging
- **★★**: Significantly harder or longer

(Most exercises have no marker. Stars are used sparingly.)

### Solutions

No solutions are provided in the text. (Instructor resources may be developed separately.)

---

## 13. Index

The book includes an index for the PDF output, generated via LaTeX.

### Configuration

In `_quarto.yml`:

```yaml
format:
  pdf:
    include-in-header: 
      text: |
        \usepackage{makeidx}
        \makeindex
    include-after-body: 
      text: |
        \printindex
```

### Adding Index Entries

Use `\index{entry}` in the text:

```markdown
A sequence is *bounded*\index{bounded sequence} if there exists M > 0...

The *Monotone Convergence Theorem*\index{Monotone Convergence Theorem} states...
```

### Index Guidelines

- Index all definitions (the term being defined)
- Index all named theorems
- Index key concepts when they appear significantly
- Use consistent capitalization
- Sub-entries for related concepts: `\index{convergence!absolute}`, `\index{convergence!conditional}`

---

## 14. Author Context

**Steve Trettel** is an Assistant Professor of Mathematics at the University of San Francisco, specializing in differential geometry and mathematical visualization.

**Background relevant to this project**:
- Teaches undergraduate analysis courses
- Creates mathematical visualizations (path tracers, GPU-accelerated rendering)
- Codes as a hobby (JavaScript, GLSL, learning TypeScript)
- Values clean, maintainable code architecture
- Prefers methodical, incremental development over rapid prototyping

**Working style**:
- Appreciates being told when there are better ideas than initial suggestions
- Values clear organization and structure
- Wants rigorous but readable exposition
- Cares about historical context and motivation

---

## 15. Topics Deliberately Excluded

| Topic | Why Excluded | Where It Might Live |
|-------|--------------|---------------------|
| Uniform convergence (before Ch 10) | Belongs in function spaces | Chapter 10 |
| Cesàro summation | Beyond first course scope | Optional advanced section |
| Integral test | Integrals not yet defined | Could add in Ch 7 as application |
| Hölder continuity | Too advanced | Graduate course |
| Absolute continuity | Too advanced | Graduate course |
| Tietze extension | Too advanced | Graduate course |
| Baire category | Belongs in function spaces | Chapter 10 |
| Dedekind cuts | Construction not needed | Historical remark only |
| Full cardinality theory | Beyond scope | Just countable/uncountable |
| Summation by parts (standalone) | Only needed for Abel's theorem | Appears in Ch 5.2 |

---

## 16. Open Questions

### Resolved in this planning session:
- ✓ Where does MCT go? → Chapter 2
- ✓ Uniform convergence placement? → Chapter 10
- ✓ How to handle elementary functions? → Thread throughout
- ✓ Summation by parts placement? → Chapter 5.2
- ✓ Cauchy condensation? → Extended exercise


---

## 17. File Inventory

Chapter outlines:

| File | Description |
|------|-------------|
| chapter-1-foundations-outline.md | Full outline with all sections |
| chapter-2-limits-outline.md | Full outline with all sections |
| chapter-3-detecting-convergence-outline.md | Full outline (streamlined 3.1) |
| chapter-4-exchanging-limits-outline.md | Full outline with all sections |
| chapter-5-continuity-outline.md | Full outline with all sections |
| chapter-6-differentiation-outline.md | Full outline with all sections |
| chapter-7-integration-outline.md | Full outline (axiomatic approach) |
| chapter-8-calculus-outline.md | Full outline (FTC and computation) |
| chapter-9-completing-the-integral.md | Full outline (Daniell/Lebesgue) |

---

## 18. Workflow for Writing

The planned approach for writing actual chapter content:

1. **Start fresh conversation** for each section
2. **Upload**: This overview document + relevant chapter outline + old book text for that section
3. **First pass**: Generate numbered list of Definition/Theorem/Lemma/Example/Remark environments
4. **Review/approve** the list
5. **Second pass**: Write full prose for each environment
6. **Review/revise** prose

This maintains context while giving full attention to each section.
