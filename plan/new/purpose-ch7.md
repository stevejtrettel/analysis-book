# Ch 7 Purpose — from tables to functions

Status: **governing story approved as project memory on 2026-08-20;
detailed contents remain a proposal to adjudicate before sectioning.**
This is the proposed first chapter of Part II and therefore Ch 7 under
the current six-chapter Part I. The descriptive phrases in this file are
internal shorthands, NOT title candidates.

Goals-first workflow: this file is to be adjudicated before a section
list is fixed. A section, example, or exercise earns its place only by
serving a named goal or the story, or by opening a named debt.

## The sentence

> **A function is an uncountable table. Analysis begins when the entries
> of that table are not independent.**

Companion formulation:

> **Construction gives examples; characterization gives structure.**

The chapter turns Part I's isolated values into Part II's first whole
object. Part I constructed values such as $a^x$ one at a time. Part II
begins when the entire dependence $x \mapsto a^x$ is treated as a single
thing.

## Goals

### The part-level job

- Establish why Part II is about functions rather than merely applying
  Part I's limit theory to familiar formulas. A function coordinates a
  whole family of values at once; infinity has moved from the index of a
  process into the domain of an object.
- Repeat Part I's founding question at the new level: **what are
  functions for?** Historical practice supplies several answers before
  it supplies a definition: tabulation, prediction, representation of
  varying quantities, geometric relationships, tangents and extrema,
  and accumulation.
- Separate a function from its presentations. Tables, formulas, graphs,
  geometric constructions, algorithms, implicit relations, parametric
  descriptions and piecewise prescriptions can all present functions,
  but none is the definition.
- Arrive at the maximally permissive modern definition — an assignment
  of exactly one output to every input in its domain — as the principled
  end of a failed construction campaign, not as set-theoretic
  bureaucracy.
- Expose the price of that definition: it guarantees values and nothing
  about how the values are related. This opens the characterization
  program of Part II: continuity, differentiability and integrability.

### Mathematical exports

The unnumbered opener introduced function vocabulary so the reader could
parse Part I. This chapter promotes that vocabulary into mathematics.
The intended exports are:

- function as an object including its domain and codomain; equality of
  functions is extensional and includes the domain;
- graph as one representation of a function, not the function itself;
  relation versus function, with branch choice and domain restriction;
- image, preimage and restriction;
- pointwise arithmetic and order of real-valued functions;
- composition as chaining input-output machines;
- injectivity, surjectivity and inversion used rather than merely named;
- boundedness, monotonicity, extrema and level sets as whole-function
  questions that require no continuity yet;
- the field of rational functions as the output of a function-level
  naming engine: constants and the identity function, closed under
  $+,-,\times,\div$;
- the distinction between **presentation structure** (formula,
  algorithm, table) and **behavioral structure** (order, continuity,
  local linearity, integrability, symmetry and functional laws).

Candidate mathematical set-piece: finite tabulated data do not determine
a formula. If $p$ interpolates values at distinct inputs
$x_1,\ldots,x_n$, then so does

$$
p(x)+c\prod_{k=1}^n(x-x_k)
$$

for every $c$. There is a unique interpolating polynomial only after the
extra condition $\deg p<n$ is imposed. Compression requires a structural
choice; the table alone does not make it.

### Skills

- Translate among a table, formula, graph, algorithm, implicit relation
  and parametric description without identifying the representation
  with the object.
- Track domains honestly and distinguish formulas that agree where both
  are defined from functions that are actually equal.
- Compose, restrict and invert functions; determine images, preimages,
  level sets, boundedness, monotonicity and extrema in concrete cases.
- Recognize what a proposed description guarantees and what remains a
  debt: existence of values, computability, uniqueness, convergence,
  error control or regularity.
- Distinguish constructing examples of functions from characterizing a
  class by behavior.

### Exit state

The reader owns the unrestricted function concept and is dissatisfied
with it for precise reasons. They can manipulate functions as whole
objects, but they know that an arbitrary input-output assignment is only
an uncountable table: nearby inputs need not have related outputs, a
maximum need not exist, a tangent need not exist, and an accumulated
value need not be forced.

The chapter ends with three named debts, each inherited from ancient
mathematical practice and each paid by a chapter of Part II:

1. **Coherent variation:** when do nearby inputs have correlated
   outputs? $\longrightarrow$ continuity.
2. **Tangent and rate:** when does the function obey a local linear law?
   $\longrightarrow$ differentiability.
3. **Area and accumulation:** when do finite local measurements force a
   single total? $\longrightarrow$ integrability.

### Non-goals and borders

- No $\varepsilon$-$\delta$ definition, limits of functions, IVT, EVT or
  uniform continuity. Those belong to the continuity chapter.
- No derivative definition, tangent theorem or MVT. Tangents appear as
  an ancient desire and a named debt only.
- No Darboux sums or integral construction. Area and accumulation appear
  as ancient desires and named debts only.
- No general convergence of functions; the limit of functions is a
  future problem, ultimately belonging to function space.
- No long monster zoo. A counterexample appears only if it makes one of
  the chapter's debts precise and is deliberately revisited where its
  theory belongs.
- Do not call any enlargement of rational functions **the completion**.
  Completion depends on a notion of distance or convergence between
  functions; different choices lead to different worlds. That is a
  Part III door.

## Story

### The Part I mirror, with the direction reversed

Part I began with a naming engine for numbers:

$$
1 \quad\text{and}\quad +,-,\times,\div
\qquad\leadsto\qquad \mathbb Q.
$$

The generated world was too small. Adjoining $\sqrt2$ forced many new
numbers but left $\sqrt3$ out; adjoining all roots still left $\pi$ and
$e$ out. There was no principled stopping point. The book stopped adding
numbers one at a time and characterized the desired ambient system by
completeness.

The function story begins with the exact analogue:

$$
x,\quad\text{constant functions},\quad +,-,\times,\div
\qquad\leadsto\qquad \mathbb R(x),
$$

the rational functions. They are finitely described, computable and
highly structured wherever their denominators do not vanish. They are
the rational-number world of functions.

They also have gaps. Roots lead to algebraic functions; geometric curves
require branch choices or parametric descriptions; exponentials and
trigonometric functions escape algebraic operations; piecewise rules,
power series, continued fractions, algorithms and solutions of
differential equations each enlarge the world again. As with numbers,
there is no principled final construction.

So the definition goes maximally broad: every input-output assignment is
a function. This time the broad move overshoots. The universe now
contains everything practice asked for and functions with no coherent
behavior at all. For numbers, the characterization supplied the desired
structure. For functions, the unrestricted definition deliberately
supplies no structure. The rest of Part II develops the terminology
needed to recover it.

### Practice before the abstraction

The chapter opens on a table that does real mathematical work. The
strongest transition from Part I is the exponential table: six chapters
have filled in values $a^x$ that earlier practitioners could compute
only at scattered inputs; now the table is turned sideways and treated
as the single object $x\mapsto a^x$.

Historical tables then widen the practice: astronomical and chord tables
for prediction, logarithm tables for computation, and other tabulations
of one quantity against another. Diagrams of varying quantities and
curves produced by geometric or kinematic relationships show that the
formula was never the only precursor of the function idea.

The historical claim must be made carefully: these practitioners were
not secretly using the modern set-theoretic definition. They developed
distinct practices — table, diagram, curve, law — whose eventual common
abstraction is the function.

### Compression campaign

The table contains the values but cannot be written when the domain is
uncountable. The alternatives below are not a progression and do not
contain one another. They are overlapping, sometimes incomparable ways
of presenting functions, each inherited from a different practice. Each
solves one problem and creates another:

- **A formula** is finite and often computable, but different formulas
  may represent the same function, the same expression on different
  domains gives different functions, implicit formulas may give several
  outputs, and finite data admit many formulas.
- **A graph** displays global variation but is an approximate picture;
  formally an arbitrary function's graph is only a set meeting each
  permitted vertical line once and need not resemble a curve.
- **An algorithm** may define values no closed formula can express, but
  may not terminate, may only approximate, may hide its error, and may
  give no visible relation between neighboring inputs.
- **An infinite representation** — series, product, continued fraction
  or limit — inherits Part I's first question: does it converge, and for
  which inputs? It then adds the Part II question: what does the resulting
  function do as its input varies?

No presentation wins the campaign. Their common content is only an
assignment of outputs to inputs. The campaign therefore establishes the
need for the abstract definition without pretending that the abstract
definition is computationally useful. The chapter's movement is linear
only at this argumentative level:

$$
\text{practical examples}
\longrightarrow \text{incomparable presentations}
\longrightarrow \text{abstract assignment}
\longrightarrow \text{the need for structure}.
$$

### The diagnosis: too much freedom

An arbitrary function is the complete uncountable table. It may have no
finite description, no computable evaluation procedure and no
relationship between neighboring entries. This is not a defect in the
definition: its generality is what permits analysis to state exactly
which hypotheses each task requires.

The chapter's decisive move is therefore from **construction** to
**characterization**. We cannot build the useful functions by adding
formula types until the list is complete. We instead characterize forms
of dependence:

- order among inputs constraining order among outputs (monotonicity,
  convexity);
- nearby inputs constraining nearby outputs (continuity and its stronger
  quantitative forms);
- infinitesimal changes obeying a linear law (differentiability);
- finite local measurements forcing a stable total (integrability);
- distant entries tied by symmetry or a functional equation
  (periodicity, addition and multiplication laws).

Only the first layer is developed here. The next three chapters turn the
ancient expectations of coherent variation, tangents and areas into
precise properties. The exponential thread later performs the same
method on one particular function: its construction is removed, its law
is retained, and its regularity is characterized.

### The Part II arc opened here

The three properties are related but not interchangeable:

- Continuity supplies coherent dependence and makes approximation
  reliable.
- Tangents require more: differentiability is a local linear law not
  guaranteed by continuity.
- For accumulation on a closed bounded interval, continuity already
  supplies enough control; the integration chapter may focus entirely
  on continuous functions. Which additional functions are integrable is
  a later-book question.
- The Fundamental Theorem rejoins the branches: accumulating a
  continuous function produces a differentiable function whose
  derivative is the original integrand.

Thus Part II begins by separating three ancient programs and ends by
discovering that two of them — local change and accumulation — are
inverse, with continuity providing the bridge.

## Ledger

### Imports

- From the unnumbered opener: set and function notation;
  injective/surjective/bijective as vocabulary; composition notation.
- From Part I: the completed real number system; limits and infinite
  processes; the constructed families $x\mapsto a^x$ and
  $x\mapsto\sum x^n/n!$ are available as values waiting to be treated as
  whole functions.
- From Ch 1's naming engine: the construction-versus-characterization
  pattern and the failed one-word-at-a-time augmentation campaign.
- Named geometric debts from Part I: the full trigonometric function and
  convex-arc length have not yet been constructed.

### Exports

- A function treated as one mathematical object rather than a collection
  of unrelated calculations.
- The formal whole-function vocabulary and operations listed under
  Mathematical exports.
- Rational functions as the baseline generated class against which later
  enlargements can be understood.
- The presentation/behavior distinction.
- The three characterization debts that organize the remainder of Part
  II.

### Debts opened and where paid

- Reliable evaluation from approximate inputs $\to$ continuity.
- Existence of extrema $\to$ continuity on closed bounded intervals;
  locating extrema $\to$ differentiation.
- Tangent and instantaneous rate $\to$ differentiation.
- Area and accumulation $\to$ integration of continuous functions.
- The relation between change and accumulation $\to$ FTC.
- What properties survive limits of functions $\to$ named here and
  deferred to function space, except for special licensed cases such as
  power series.
- What a "completion" of rational or polynomial functions means $\to$
  function spaces, where a metric/norm specifies the missing limits.

### Deliberate revisits

- The exponential table: isolated values in Part I $\to$ whole function
  here $\to$ continuity/differentiability $\to$ the late Part II
  functional-equation reversal (`exponential-thread.md`).
- Dirichlet's function, if chosen for the closing diagnosis: admitted as
  a function here $\to$ analyzed for continuity later $\to$ revisited
  when the book eventually asks which discontinuous functions are
  integrable.
- A continuous nowhere-differentiable function: previewed at most here,
  owned by continuity/differentiation, and returned to at FTC as a
  continuous function that is nevertheless the derivative of its
  integral.

## Historical research brief

The chapter requires a dedicated source campaign after its purpose is
approved. Research is organized by mathematical practice, not by a list
of biographies:

1. tables as objects and computational instruments — Babylonian tables,
   Greek astronomy and Ptolemy, Indian and Islamic trigonometric tables,
   Napier and Briggs;
2. diagrams of variation — the latitude-of-forms tradition and Oresme;
3. curves and relationships — conics, Archimedes' spiral, geometric and
   kinematic generation;
4. algebraic compression — Viète, Descartes, Fermat and the relation
   between equations and curves;
5. formula conceptions of function — Leibniz, Bernoulli and Euler;
6. pressure toward the correspondence definition — the vibrating-string
   dispute, Fourier and Dirichlet;
7. the emergence of regularity as explicit structure — Bolzano, Cauchy,
   Weierstrass, Darboux, Thomae and the nowhere-differentiable examples.

Claims to treat as research questions rather than inherited facts:

- the exact date, wording and priority attached to the modern function
  definition (including the common 1829/1837 Dirichlet ambiguity);
- what Fourier claimed by "arbitrary" function and in which setting;
- whether "graph of a function" is an anachronistic description of
  Oresme's configurations;
- the exact mathematical role of Ptolemy's tables rather than the modern
  use we can retrospectively make of them;
- what Archimedes actually proved about the spiral's tangent and what
  relation that bears to differentiation;
- when formulas, curves and correspondences were treated as competing
  or coexisting meanings of function.

Nothing from the historical spine goes to print until this verification
is complete.

## Status and approval questions

Proposed from discussion and awaiting approval as a package:

- a standalone first chapter of Part II, rather than loading the history
  and definition problem into the already-full continuity chapter;
- the uncountable-table sentence and the construction-versus-
  characterization doctrine;
- the exact Part I mirror: rational functions as the generated world,
  failed augmentations, then the maximally broad input-output definition;
- continuity, differentiability and integrability as three
  characterizations of ancient desired behavior;
- continuity insufficient for tangents but sufficient for integration
  on closed bounded intervals; broader integrability deferred;
- FTC as the reunion of differentiation and integration. Whether it is
  also the endpoint of the current one-semester drafting project has
  been **reopened** by the possible move of the Daniell integral into
  Part III; see `part2-scope-and-daniell.md`. No replacement endpoint or
  power-series architecture has been approved.

Still open after approval of the purpose:

- exact section divisions and chapter length;
- the opening table: recommendation is the Part I exponential table as
  the transition, followed by historical tables as the widening;
- whether polynomial interpolation is the chapter's remembered
  mathematical set-piece;
- how much whole-function vocabulary is repeated from the unnumbered
  opener versus used without restatement;
- whether the countability argument (finite programs describe only
  countably many functions, while even binary sequences are uncountable)
  belongs in the main text, an exercise or nowhere;
- whether infinite continued fractions of functions receive a remark or
  are omitted for lack of a downstream client;
- which counterexample carries the final diagnosis without turning the
  chapter into a monster zoo;
- final wording of the chapter doctrine and, as always, the title in
  Steve's voice.
