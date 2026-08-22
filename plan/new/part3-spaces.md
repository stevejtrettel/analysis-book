# Part III — Spaces: Working Architecture

Status: capture of the 2026-08-21 narrative discussion. The part-level
story, the border with Parts II and IV, the distributional climax, and the
division between the basis and observer chapters are working decisions.
The seven-chapter shape is the working ruling, with two live compressions
to test after finding the minimal route through the mathematics: the two
integral chapters may collapse, and the Riesz/weak-observer chapter may
collapse into distributions. Section lists below are detailed planning
sketches, not approved outlines. Chapter names are content labels, NOT
title candidates.

Old sources consulted and superseded at shape level:

- `../2025-plans/overview-part3.md`
- `../2025-plans/part3-ideas/part-iii-functional-analysis-outline-v1.md`
- `../2025-plans/part3-ideas/part_iii_outline.md`
- `../../claude-notes.md`

Those documents remain a rich source of examples, proofs and applications.
Their old organization (metrics → function spaces → Fourier → differential
equations → distributions) is no longer authoritative.

## The governing story

Parts I and II studied numbers and functions one at a time. Part III makes
the decisive change of viewpoint promised at the Part II border:

> **A function becomes a point.** We can now ask whether two functions are
> close, whether a sequence of functions has somewhere to arrive, which
> coordinates reveal a function, and what remains visible when ordinary
> convergence fails.

The broad architecture of the book is now:

| Part | Governing object | Governing question |
|---|---|---|
| I — Numbers | numbers and processes producing them | What number does an infinite process reach? |
| II — Functions | one input-output table at a time | What structure makes a function workable? |
| III — Spaces | collections whose points are functions or generalized functions | What does closeness mean, and which limits exist? |
| IV — Solutions | equations and transformations acting on those spaces | Which space and coordinates make this problem solvable? |

The one-sentence border is:

> **Spaces asks what objects and limits exist. Solutions asks how laws
> select and move those objects, and what problems they solve.**

Part III is not a preparatory functional-analysis survey. Its story is a
sequence of forced enlargements. A familiar operation fails; the reader
asks what kind of closeness or object would preserve the information that
matters; a new space answers; and the chapter spends that answer before it
ends.

### The no-machinery-on-credit rule

Each chapter should follow:

> **visible failure → demanded language → immediate theorem or construction
> → a larger door**

No chapter may introduce an abstraction only because Part IV will need it.
Part IV may reveal that an object forced on us here is far more useful than
we knew, but it cannot retroactively supply the object's first motivation.

This is especially important for distributions. They belong at the end of
Spaces only if concentrating sequences and unstable differentiation have
already demanded them there. “Fourier transforms will need these later” is
not enough.

## What Part II hands forward

Part III opens several named doors rather than inventing a new agenda:

1. **Limits of correlated tables.** Pointwise limits are legal Part II
   grammar, but Cauchy's failed interchange claims require measuring whole
   functions. Part II deliberately does not define uniform convergence as
   a general theory.
2. **Differentiation and limits.** Power series differentiate term by term,
   but this is marked as exceptional. On $[-1,1]$,
   $f_n(x)=x/(1+nx^2)$ becomes uniformly tiny while $f_n'(0)=1$. Part III
   must explain the failure and eventually repair it.
3. **Riemann's question.** Part II integrates continuous functions and
   displays functions its traps cannot capture. It asks which further
   functions should be integrable and which limit interchanges are valid.
4. **Approximation.** Part II can construct and manipulate special infinite
   representations, but has no general account of best approximation,
   density, or the choice of coordinates for a task.
5. **Compactness beyond the line.** Bolzano–Weierstrass was decisive for
   real sequences. It is unknown what remains true when the points are
   themselves functions.

The long differentiation thread is therefore:

> Part II: a miracle for power series → early Part III: the failure is
> structural → end of Part III: in distributions, differentiation is total
> and commutes with limits.

## Backward audit: what Parts I and II must supply

One principal purpose of this plan is to audit the earlier book, not to
settle every theorem or chapter boundary in Part III. The question is:
**have Parts I and II earned everything that later arguments legitimately
import, without making them teach function spaces prematurely?**

The present audit finds no major missing prerequisite.

| Earlier ingredient | Current home | Part III client | Verdict |
|---|---|---|---|
| Completeness of $\mathbb R$; monotone and Cauchy convergence | Part I, especially Chs 2 and 5 | Metric completeness; Daniell construction; completeness proofs | Secure. |
| Subsequences and Bolzano–Weierstrass on $\mathbb R$ | Part I, Chs 4–5 | Arzelà–Ascoli; diagonal extractions; contrast with function-space escape | Secure. Part III can teach the new diagonal argument itself. |
| Absolute convergence, domination and exchange of numerical limits | Part I, Ch 6 | Series in Banach spaces; MCT/DCT analogy; basis expansions | Secure. |
| Countability and density of $\mathbb Q$ | Part I | Countable dense grids in Arzelà–Ascoli and separability examples | Secure. No general topology is needed early. |
| Algebra and composition of continuous functions | Part II, Continuity | Completeness of $C[a,b]$; test functions and approximation | Secure. |
| Continuity of $|f|$, $\min(f,g)$ and $\max(f,g)$ | Part II, Continuity exercises | Daniell lattice manipulations and elementary metric estimates | Protect as a proved exercise or reprove locally; no new section needed. |
| Uniform continuity and Heine–Cantor | Part II, Continuity | Dini's lemma; integral estimates; Arzelà–Ascoli motivation | Secure. General uniform convergence still belongs to Part III. |
| Derivative rules, MVT and finite Taylor control | Part II, Differentiation | Examples of unstable differentiation; approximation estimates | Secure. |
| A positive linear integral on $C[a,b]$, with trapping and bounds | Part II, Integration | Starting functional for Daniell; integral metrics; $L^1$ estimates | Secure in substance. Ensure the final chapter states the order and absolute bounds explicitly. |
| Substitution and integration by parts | Part II, The Calculus | Convolution changes of variables; orthogonality; distributional derivatives | Secure. |
| Licensed term-by-term operations on power series, plus the explicit differentiation failure | Part II, The Calculus | The long limits-and-derivatives thread | Secure; the failure has now been added to the plan. |
| Sine, cosine, periodicity and their basic calculus | Part II, Elementary Functions | Circle, trigonometric coordinates and periodic distributions | Secure. Complex notation can be introduced later. |
| Polynomial interpolation | Part II Functions candidate | Lagrange coordinates and quadrature | Desirable as a return, not a prerequisite: Chapter 18 can introduce it if the Part II candidate is cut. |

Two small drafting checks follow from this table:

1. Part II's integral should leave the reader with
   $f\le g\Rightarrow\int f\le\int g$ and
   $|\int f|\le\int|f|\le(b-a)\|f\|_\infty$ explicitly available.
2. The continuity of absolute value, minima and maxima may remain exercise
   tier, but the result must be owned somewhere before Daniell calls it.

These are protections, not requests for additional chapters or theory.

### What must not be backfilled into Parts I–II

The backward audit should not become an excuse to preload later language.
Part III should introduce for itself:

- metrics and norms on collections of functions;
- uniform convergence as a general mode of function convergence;
- quotient spaces, a.e. equality, measure and $L^1/L^2$;
- equicontinuity and Arzelà–Ascoli;
- inner-product geometry and infinite bases;
- continuous linear functionals, weak convergence and Riesz;
- test-function spaces and distributions;
- complex Fourier notation if it has not previously been needed.

Likewise, matrix exponentials and operator-generated motion need not be
smuggled into Parts I–II as prerequisites. Solutions can introduce them
when $x'=Ax$ supplies the motivation.

## Recommended shape: seven chapters

With Parts I and II occupying Chapters 1–13, these would be Chapters 14–20.

| Ch. | Working identity | One- or two-sentence narrative | Principal climax |
|---|---|---|---|
| 14 | **Functions Become Points** | A sequence of functions cannot be understood by watching one input at a time. We choose distances on whole functions, recover the grammar of convergence and completeness, and discover that different distances create genuinely different worlds. | $C[a,b]$ is complete in the sup distance but incomplete in the integral distance. |
| 15 | **The Integral Under Limits** | The old integral is not closed under the limits analysis naturally produces. Starting from the integral already earned in Part II, the Daniell construction enlarges its domain precisely enough to make monotone limits and then dominated limits legitimate. | MCT and DCT turn formerly dangerous interchanges into theorems. |
| 16 | **The World the Integral Creates** | Extending the integral changes what counts as zero, distance and even equality. Almost-everywhere identification, measure and the complete $L^p$ spaces reveal that we have not merely integrated more functions; we have completed a new mathematical world. | $L^1$ as the completion of continuous functions in integral distance; $L^2$ opens geometric structure. |
| 17 | **How Functions Escape** | Bounded real sequences cannot escape without leaving a convergent subsequence, but bounded functions can flee through ever-faster oscillation. Equicontinuity identifies the missing control, and Arzelà–Ascoli restores a Bolzano–Weierstrass theorem for functions. | Boundedness plus equicontinuity forces a uniformly convergent subsequence. |
| 18 | **Choosing the Right Coordinates** | A basis is not merely a way to name a function: it is a choice that makes a particular operation into arithmetic. Projection and orthogonality explain best approximation, while polynomial, sampling, Fourier and local bases show that there is no best coordinate system independent of the task. | Legendre geometry produces Gaussian quadrature; an $L^2$ basis turns approximation error into omitted coefficient energy. |
| 19 | **What Every Observer Sees** | Coordinates describe a point from within; continuous linear functionals describe it through every stable external measurement. Weak convergence preserves all such observations and recovers a form of compactness even when norm convergence fails. | Every bounded sequence in a separable Hilbert space has a weakly convergent subsequence. |
| 20 | **Beyond Functions** | Concentrating functions can converge under every smooth test without converging to any function. We accept the limiting measurements as new objects—distributions—and reach a final space in which every object is differentiable and differentiation commutes with limits. | $T_n\to T$ implies $T_n'\to T'$; periodic jumps acquire delta terms. |

The part has three movements:

1. **Closeness creates worlds** (Chs 14–16): metric grammar, then the
   integral's forced extension and the complete spaces it creates.
2. **Infinite dimensions require choices** (Chs 17–18): functions escape
   finite-dimensional intuition, and useful coordinates must be chosen for
   a purpose.
3. **Observation enlarges existence** (Chs 19–20): stable measurements give
   weak limits, then generalized objects beyond functions.

Seven chapters are the working shape because both potentially adjacent
pairs presently have distinct climaxes. Chapter 15 changes the
**operation**, while Chapter 16 discovers the **space** created by that
change. Chapter 19 restores convergence among functions through stable
observers, while Chapter 20 accepts observer-limits that lie beyond
functions. Either distinction may sustain two chapters—or may collapse
cleanly once the minimal theorem route is known.

---

## Chapter 14 — Functions Become Points

### Narrative

Part II treated a function as an uncountable table whose entries were
correlated. Now a whole table becomes one point. The opening question is
not “what is a metric space?” but: **when are two functions close enough
that the operations we care about cannot tell them apart?**

Different answers are useful. Worst-case distance preserves every value;
integral distance ignores narrow discrepancies; derivative-sensitive
distance preserves slopes. The metric abstraction is introduced only
after these competing judgments are visible.

### Proposed movement

1. **Watching one input is not enough.** Revisit stacks of functions from
   Part II: $x^n$, moving or narrowing bumps, and
   $x/(1+nx^2)$. Pointwise arrival can lose continuity, while closeness of
   values can fail to control slopes.
2. **Distances on whole functions.** On $C[a,b]$, compare
   $\|f-g\|_\infty$, $\int|f-g|$, and a $C^1$ distance such as
   $\|f-g\|_\infty+\|f'-g'\|_\infty$. State what each observer controls:
   evaluation and continuity, total error and integration, or
   differentiation.
3. **The reusable grammar.** Define metric spaces, balls, convergence,
   Cauchy sequences, completeness and continuous maps. Examples should
   include $\mathbb R$, $\mathbb C$, $\mathbb R^n$, sequence spaces and
   $C[a,b]$ so the abstraction constantly returns to concrete points.
   Open and closed sets enter only to the extent later arguments need them;
   this is not a point-set topology survey.
4. **Completeness travels.** Prove $\mathbb C$ and finite products complete
   from $\mathbb R$; prove $C[a,b]$ complete in the sup distance by taking
   pointwise limits and using uniform control. Generalize the series
   criterion: absolute summability in a complete normed space gives
   convergence.
5. **The same set, a different world.** Exhibit a sequence of continuous
   functions Cauchy in integral distance whose limit is discontinuous.
   Thus $C[a,b]$ is not complete in that metric. The missing point is not a
   defect in the sequence; it is a demand to enlarge the space.

### Main payload

- Metric, norm, convergence, Cauchy sequence and completeness.
- Continuous maps between metric spaces, phrased as preservation of
  arrival.
- Completeness of $C[a,b]$ with $\|\cdot\|_\infty$.
- Incompleteness of $C[a,b]$ with integral distance.
- The fact that continuity of an operation depends on the chosen metrics.
- Enough finite-product reasoning for $\mathbb C$, $\mathbb R^n$ and later
  matrix spaces—without a general finite-dimensional compactness theory.

### Immediate payoff and exit

The reader can now explain Part II's apparent contradictions: integration
is stable in value-based and integral distances, while differentiation is
not stable in the sup distance. The final incomplete sequence points
directly to the next chapter: **what completion does the integral demand?**

### Borders

- No abstract quotient spaces yet; almost-everywhere equality will force
  them in Chapter 16.
- No full compactness theory and no proof that all norms on $\mathbb R^n$
  are equivalent.
- No matrix or bounded-operator exponential. Matrix exponentials require
  only a submultiplicative norm and completeness of a finite matrix space,
  not the compactness material of Chapter 17; their motivating equation
  belongs in Solutions.
- The contraction mapping theorem may be recalled abstractly as a compact
  example of completeness, but Picard's theorem and other equation-driven
  uses belong in Solutions.

---

## Chapter 15 — The Integral Under Limits

### Narrative

Chapter 14 produced sequences whose natural limits lie outside the
continuous functions. Part II also left Riemann's dated question: which
functions should be integrable? Rather than begin with sets and measures,
we ask what the existing integral must become if monotone limiting
processes are to be legal.

This is the Daniell story: preserve the old integral, close first under
increasing limits, then under differences, and discover that the desired
convergence theorems force a much larger integral.

### Proposed movement

1. **The old boundary fails under limits.** Use two distinct failures:
   continuous ramps increasing to $\chi_{(0,1)}$ show that the old class
   is not closed; narrowing continuous spikes show that pointwise
   convergence alone does not preserve integral values. State the desired
   monotone principle before constructing anything. The Dirichlet function
   can return later as a test of how far the extension has reached, but it
   is not itself an increasing limit of continuous functions.
2. **Close under increasing limits.** Begin with the Part II integral on
   continuous functions. Dini's decreasing-to-zero lemma supplies the
   compatibility needed to define the integral of an increasing limit
   independently of its approximating sequence.
3. **Restore linearity.** Differences of the positive/upper objects create
   the integrable class. Prove well-definedness and show the old integral
   embeds unchanged.
4. **The convergence theorems.** Establish Monotone Convergence as the
   construction's governing theorem, Fatou's lemma if useful, then
   Dominated Convergence as the main working result.
5. **Spend the result immediately.** Revisit interchanging sums and
   integrals, and pay Part II's named differentiation-under-the-integral
   door under honest domination hypotheses. Return to the earlier failure
   examples and say exactly which hypothesis each violates.

### Main payload

- Daniell extension from the integral on continuous functions.
- MCT and DCT, with hypotheses understood as information, not ritual.
- A general theorem licensing integration of a limit.
- Differentiation under the integral sign as a long-delayed payoff.
- The integrable class as a vector lattice, to the extent the construction
  naturally supplies it.

### Immediate payoff and exit

Part II's special licenses for power series become instances of a much
broader theory. But the new integral declares some nonzero-looking
functions to have total size zero, so $\int|f-g|$ is no longer automatically
a distance. The exit question is: **what are the points of the world this
integral has created?**

### Borders

- Measure is not the starting machinery; it emerges in Chapter 16.
- Do not develop all standard measure theory before spending MCT/DCT.
- A full Riemann-integrability classification is unnecessary unless it
  serves the story; Part II deliberately posed the extension problem
  without promising Lebesgue's criterion.
- The chapter extends an operation. Completeness and geometry of the
  resulting $L^p$ spaces belong to the next chapter.

---

## Chapter 16 — The World the Integral Creates

### Narrative

The enlarged integral does more than attach values to additional tables.
It changes equality: functions that differ only on an invisible set have
distance zero and must represent the same point. Taking that fact
seriously produces almost-everywhere language, measure, quotient spaces
and the complete spaces $L^1$ and $L^2$.

This chapter is the strongest reprise of Part I's construction of
$\mathbb R$: choosing which sequences and measurements matter determines
which world completion creates.

### Proposed movement

1. **What the integral cannot see.** Define null functions and null sets;
   introduce “almost everywhere.” Show why the integral distance is a
   pseudometric on raw functions and a metric only after identifying
   functions equal almost everywhere.
2. **Points as equivalence classes.** Introduce the quotient only because
   identity of indiscernibles has failed. Define $L^1$ as actual points,
   not casually as raw formulas, and verify that operations are
   well-defined.
3. **Measure emerges from integration.** Define the measure of a set as
   the integral of its indicator whenever available. Develop only the
   vocabulary needed to interpret null sets, convergence and later
   examples; retain the integral-first philosophy.
4. **Completion.** Prove $L^1$ complete, preferably with the absolutely
   summable subsequence/series argument. Establish that continuous (or
   suitably simple) functions are dense, so $L^1$ is genuinely the
   completion foreshadowed in Chapter 14.
5. **Different powers see different errors—but only as needed.** Develop
   $L^1$ as the completed integral world and $L^2$ as the indispensable
   geometric destination. General $L^p$, Hölder and Minkowski enter only
   when an identified later argument uses them; otherwise they are a brief
   generalization or GE. This is an introductory analysis book, not a
   first course in the full $L^p$ scale.
6. **Regularization.** On the circle or away from endpoints, convolution
   with a smooth approximate identity turns rough functions into smooth
   ones and converges in the relevant norm. Immediate payoff: smooth
   functions are dense. Long door: the same concentrated kernels will
   later converge to delta only after the space is enlarged again.

### Main payload

- Null sets, almost-everywhere equality and quotient points.
- Measure as a consequence of the integral.
- Completeness of $L^1$ and $L^2$.
- Only the inequalities and general $L^p$ statements with named clients;
  $p=1,2,\infty$ are the load-bearing cases, and even that notation should
  not force a survey.
- Convolution/approximate identities and density of smooth functions, if
  the proof budget permits.
- The inner product on $L^2$ as the door to the basis chapter.

### Immediate payoff and exit

The original incomplete Cauchy sequence now has somewhere to arrive.
Moreover rough functions can be approximated by smooth ones in the
distance appropriate to integration. But completeness is not compactness:
even a bounded procession of perfectly smooth functions may have no
strongly convergent subsequence. That failure drives Chapter 17.

### Borders

- Do not turn the chapter into an abstract measure-theory survey.
- Radon–Nikodym, signed measures, product measure and general Fubini may be
  deferred unless a named later theorem genuinely requires them.
- General Sobolev spaces belong beyond the present core. Their governing
  idea may be foreshadowed when derivative-sensitive norms appear.

---

## Chapter 17 — How Functions Escape

### Narrative

On the real line, boundedness gave the Bolzano–Weierstrass subsequence that
powered compactness arguments throughout Parts I and II. In a space of
functions, boundedness controls height but not complexity: a sequence can
escape through ever-finer oscillation.

The chapter's task is diagnostic and restorative. Equicontinuity names the
missing control, and Arzelà–Ascoli becomes Bolzano–Weierstrass rebuilt for
functions.

### Proposed movement

1. **The finite-dimensional promise.** Recall only the result actually
   needed for contrast: every bounded real sequence has a convergent
   subsequence. Examples in $\mathbb C$ or $\mathbb R^n$ may be mentioned,
   but a general finite-dimensional norm-equivalence/Heine–Borel
   development is not required.
2. **Bounded functions escape.** Use a uniformly bounded oscillating
   sequence in $C(\mathbb T)$ or $C[a,b]$ whose members remain separated in
   sup distance. The failure should be visible before “infinite
   dimensional” is offered as the diagnosis.
3. **Control motion as well as height.** Motivate equicontinuity as one
   tolerance rule shared by the entire family. Establish the finite-grid
   approximation that converts equicontinuity into finite information.
4. **Arzelà–Ascoli.** Prove the sequential form by diagonal extraction on
   a countable dense set followed by equicontinuity. State the clean
   criterion for relative compactness in $C[a,b]$.
5. **Spend the theorem.** Possible immediate applications include compact
   families of Lipschitz functions, compactness of an integral operator
   with continuous kernel, or existence of an optimal function inside an
   explicitly compact admissible family. Choose at least one; the theorem
   must do work before the chapter ends.
6. **Optional Baire coda.** Completeness also has a qualitative payoff:
   the monsters from Part II are not merely possible. A starred Baire
   section can show that nowhere-differentiable behavior is generic in
   $C[a,b]$, or can be reserved for the observer chapter's optional
   Uniform Boundedness route.

### Main payload

- Sequential compactness in metric spaces only as needed.
- Failure of closed-and-bounded compactness in function spaces.
- Equicontinuity and Arzelà–Ascoli.
- A clean distinction among completeness, boundedness and compactness.
- Baire category optional, not a prerequisite for the core story.

### Immediate payoff and exit

Arzelà–Ascoli explains exactly how a family must be controlled to regain
strong convergence. But compactness is only one response to escape. A
second is to stop demanding agreement in every detail and instead ask for
the coordinates that matter to a given task.

### Borders

- Compact operators and the compact self-adjoint spectral theorem are not
  automatic core material. They belong in Solutions if an equation or
  eigenfunction problem demands them.
- Peano existence, the direct method and other solution theorems may use
  Arzelà–Ascoli later; they should not be front-loaded here merely as
  motivation.

---

## Chapter 18 — Choosing the Right Coordinates

### Narrative

The motivating question is practical:

> **Which coordinates make the task we care about easy?**

A good basis can make differentiation a shift, sampling a coordinate read,
integration a weighted sum, or a differential operator a multiplication.
The chapter develops geometry only because projection answers the concrete
problem of best approximation.

### Proposed movement

1. **Coordinates are chosen for a job.** Begin in polynomial spaces.
   Monomial coefficients make differentiation and antidifferentiation
   arithmetic; Lagrange coordinates are sampled values; integrating the
   Lagrange basis produces quadrature weights. “Basis” is motivated before
   orthogonality.
2. **Geometry produces best approximation.** Define inner products,
   orthogonality and norm; prove Cauchy–Schwarz and Pythagoras; use
   Gram–Schmidt and finite-dimensional projection to find the closest
   approximation in a chosen subspace.
3. **Orthogonal polynomial coordinates.** Gram–Schmidt on
   $1,x,x^2,\ldots$ produces Legendre polynomials. Their coefficients
   separate the mean from higher-order information, and projection gives
   the best mean-square polynomial approximation.
4. **Integration as a coordinate problem.** Develop Gauss–Legendre
   quadrature as the principal set-piece. If $P_n$ is the $n$th Legendre
   polynomial, divide a polynomial of degree at most $2n-1$ as
   $p=qP_n+r$; orthogonality kills the first term and interpolation at the
   roots of $P_n$ integrates the second. Thus $n$ samples integrate every
   polynomial through degree $2n-1$ exactly.
5. **Infinite orthogonal coordinates.** In $L^2$, prove Bessel's
   inequality, characterize complete orthonormal systems, and establish
   Parseval/norm convergence once density is known. The Hilbert projection
   theorem may be proved here if the chosen route supports it.
6. **A gallery governed by tasks, not names.** The core need not develop
   every family equally:
   - monomials: differentiation and integration shift coefficients;
   - Lagrange: samples are coordinates and quadrature weights are
     integrals of basis functions;
   - Bernstein: positivity, shape preservation and an integral that reads
     as an average of coefficients;
   - Legendre: unweighted $L^2$ approximation and Gaussian quadrature;
   - Chebyshev: weighted approximation and stable interpolation;
   - trigonometric/complex exponential: periodic frequency, translation
     and differentiation;
   - Haar: locality, jumps and multiscale structure.
7. **The periodic basis.** Show that trigonometric polynomials are dense
   (a positive Fejér approximate identity is the natural route if Chapter
   16 developed convolution), hence obtain $L^2$ convergence and Parseval
   for Fourier coefficients. Ordinary partial sums need not converge
   pointwise; that warning supplies material for the observer chapter.

### Main payload

- General bases before orthonormal bases.
- Inner products, Cauchy–Schwarz, projection, Gram–Schmidt and Bessel.
- Parseval and the meaning of a complete orthonormal system.
- Polynomial and trigonometric bases as contrasting choices.
- A substantial integration payoff, preferably Gaussian quadrature.
- The governing lesson: **there is no best basis independent of a
  question.**

### Immediate payoff and exit

The chapter computes something genuinely surprising: $n$ well-chosen
samples can integrate degree $2n-1$ exactly. Fourier coordinates then give
the best finite-frequency approximation in $L^2$. But a basis also exposes
a new paradox: the orthonormal vectors $e_n$ have every fixed coordinate
tending to zero while their norms remain one. What, exactly, is converging?

### Borders

- The chapter may show that complex exponentials diagonalize periodic
  differentiation, but it should not yet build the equation-solving
  machinery around that fact. “The operator chooses its basis” is a
  Solutions payoff.
- Full Sturm–Liouville theory is not supportable as a remark masquerading
  as a theorem. It belongs with spectral solution methods if included.
- Fourier is present here as geometry, approximation and coordinates—not
  yet as the universal solver of heat, waves and constant-coefficient
  equations.

---

## Chapter 19 — What Every Observer Sees

### Narrative

Chapter 18 described a function internally through chosen coordinates.
This chapter turns outward: what numerical measurements can be made
stably on a space, and what does it mean for every such observer to agree
that a sequence has arrived?

This is not a dry “measurements and convergence” chapter. It begins with a
paradox—every fixed coordinate of $e_n$ tends to zero although
$\|e_n\|=1$—and ends by restoring a form of Bolzano–Weierstrass that strong
convergence lost.

### Proposed movement

1. **The coordinate paradox.** In $\ell^2$ or an abstract separable
   Hilbert space, $\langle e_n,e_k\rangle\to0$ for every fixed $k$, while
   no $e_n$ approaches zero in norm. A sequence can become invisible to
   every fixed coordinate without losing energy.
2. **Stable numerical measurements.** Define linear functionals and
   continuity/boundedness. Stability depends on the surrounding norm:
   evaluation is continuous on $C[a,b]$ with the sup norm but is not even
   well-defined on the a.e.-equivalence classes in $L^1$ or $L^2$;
   integration against a fixed $g$ is continuous in the appropriate
   $L^p$ setting.
3. **The dual space.** Collect continuous linear functionals as $X^*$,
   with the operator norm only as much as needed. This is the first of the
   three accessible functional-analysis additions adopted for the part:
   duality, Riesz representation and weak convergence.
4. **Riesz representation in Hilbert space.** Prove that every continuous
   linear functional on a Hilbert space is $F(x)=\langle x,g\rangle$ for a
   unique $g$. Thus all stable observers in $L^2$ are correlations with
   another $L^2$ function.
5. **Weak convergence.** Define $x_n\rightharpoonup x$ by convergence under
   every continuous linear functional. Compare strong and weak
   convergence; use oscillating Fourier modes as the principal example.
6. **Weak Bolzano–Weierstrass.** For a bounded sequence in a separable
   Hilbert space, diagonalize across basis coordinates, use Bessel/Fatou
   to show the limiting coordinates define a point, and conclude that a
   subsequence converges weakly.
7. **Concentration defeats the present observers.** Narrow unit-mass
   bumps may not converge in the current function norm, yet
   $\int \rho_n\varphi$ approaches $\varphi(0)$ for every smooth probe.
   The measurements converge, but Riesz in $L^2$ cannot supply an $L^2$
   point representing their limit. This is the exact demand for the final
   enlargement.

### Main payload

- Continuous linear functionals and dual spaces.
- Concrete norm-dependence of evaluation and integration functionals.
- Hilbert-space Riesz representation.
- Weak convergence and strong-versus-weak examples.
- Weak sequential compactness for bounded sequences in separable Hilbert
  spaces, proved with basis coordinates rather than a general Banach-space
  theorem.

### Immediate payoff and exit

Weak convergence recovers subsequences from bounded sequences such as
orthonormal families and explains how oscillations disappear to every
fixed observer. Concentration then shows the boundary: all the smooth
measurements agree on a limit, but the limit is not a function in any
space yet built. Chapter 20 accepts the measurement record itself as the
new object.

### Optional larger climax

If Baire was proved in Chapter 17 and the load allows it, the Uniform
Boundedness Principle can be a starred payoff. Applied to Fourier partial
sum functionals, the growth of the Dirichlet kernels implies the existence
of a continuous function whose Fourier partial sums diverge. This is a
powerful theorem, but it competes with weak compactness and should not be
required merely to make the chapter feel important.

### Borders

- No general Hahn–Banach machinery is required for the core.
- No full identification of duals of every $L^p$ space.
- Weak compactness is proved in the separable Hilbert setting actually
  needed, not announced at maximal Banach-space generality.

---

## Chapter 20 — Beyond Functions

### Narrative

The final chapter reprises “Reaching for Infinity” one level above
functions. Concentrating sequences have stable limiting effects on every
smooth test, but there is no function with those effects. Instead of
discarding the limit, we enlarge the category of objects and call the
result a distribution.

The climax is not merely learning what delta is. It is constructing a
world in which differentiation—the operation whose instability was planted
in Part II—is defined everywhere and is continuous:

$$
T_n\longrightarrow T \quad\Longrightarrow\quad
T_n'\longrightarrow T'.
$$

### Recommended first model: distributions on the circle

Use $\mathbb T$ as the one distribution space constructed carefully in
this first course. It has several narrative and technical advantages:

- test functions are simply $C^\infty(\mathbb T)$; compact support and
  behavior at infinity do not obscure the first idea;
- convergence of tests is uniform convergence of every derivative;
- delta at a point, periodic mollifiers and distributional derivatives
  all exist cleanly;
- the basis chapter has already made the circle and periodic Fourier
  coordinates familiar;
- later distribution spaces can be introduced by saying which test
  functions the problem permits, without repeating the whole philosophy.

This choice changes one familiar example but none of the central theorem.
Delta exists on the circle:

$$
\delta_a(\varphi)=\varphi(a).
$$

It is simply not the derivative of a periodic step by itself, because
every periodic derivative has mean zero:

$$
T'(1)=-T(1')=0,\qquad \delta_a(1)=1.
$$

Instead,

$$
\mathbf 1_{(a,b)}'=\delta_a-\delta_b,
$$

and for the $2\pi$-periodic sawtooth $s(x)=x$ on $[0,2\pi)$,

$$
s'=1-2\pi\delta_0.
$$

The obstruction is a fact about the range of differentiation, not its
continuity. This is an excellent first glimpse of a Solutions question:
a continuous operator need not make every equation solvable.

### Proposed movement

1. **A sequence that should converge.** Let periodic smooth nonnegative
   bumps $\rho_\varepsilon$ have integral one and concentrate at $a$.
   They do not approach an ordinary integrable function, but
   $\int\rho_\varepsilon\varphi\to\varphi(a)$ for every smooth periodic
   test $\varphi$.
2. **Take the observations as the object.** Give $C^\infty(\mathbb T)$ its
   natural convergence (uniform convergence of every derivative). Define
   a periodic distribution as a continuous linear functional on this test
   space. If desired, replace topological shorthand with the concrete
   finite-derivative estimate characterizing continuity.
3. **Functions embed; delta does not come from a function.** Every
   $L^1(\mathbb T)$ function acts by integration. Point evaluation gives
   $\delta_a$, and the concentrating bumps converge to it
   distributionally.
4. **Move differentiation onto the observer.** Define
   $T'(\varphi)=-T(\varphi')$. Check that this agrees with classical
   differentiation for smooth periodic functions and records jumps for
   piecewise smooth ones.
5. **The promised resolution.** Every distribution has derivatives of
   all orders, and differentiation is continuous under distributional
   convergence. The proof is nearly immediate once the right world has
   been built; that simplicity is the emotional payoff.
6. **Limits of equations remain equations.** For a constant-coefficient
   differential operator $L$, if $Lu_n=f_n$, $u_n\to u$ and $f_n\to f$
   distributionally, then $Lu=f$. This spends continuity immediately and
   forms the direct bridge to Solutions.
7. **The circle's compatibility condition.** Derivatives annihilate the
   constant test, so $T'=S$ can have a periodic solution only when
   $S(1)=0$. The arc indicator or sawtooth makes the condition concrete.

### Main payload

- One test-function space constructed honestly.
- Periodic distributions as continuous linear functionals.
- Ordinary/regular distributions, delta and distributional convergence.
- Distributional differentiation, jump terms and differentiation of
  limits.
- Stability of constant-coefficient differential equations under limits.
- The distinction between continuity of an operator and surjectivity of
  that operator.

### What is deliberately deferred

The chapter should not become a survey of every distribution space.
Specifically defer until a problem requires it:

- the theorem that every periodic distribution equals its Fourier series;
- distributions on $\mathbb R$ built from $C_c^\infty(\mathbb R)$;
- Schwartz space and tempered distributions;
- the Fourier transform of distributions;
- convolution of general distributions, fundamental solutions and PDEs.

The first item is an especially good early Part IV payoff. Fourier
coefficients will show that periodic distributions are exactly the right
space for a periodic differential equation—not the retroactive reason we
defined them, but an unexpectedly large reward from an object already
forced on us by limits and differentiation.

### Exit from Spaces

The reader leaves Part III having learned to make worlds rather than merely
inhabit them. They can choose a distance, complete an operation's domain,
recover compactness by adding control or weakening observation, select
coordinates for a task, and accept generalized limits beyond functions.

The final note should look forward rather than pretending the book has
ended:

> We now possess spaces in which limits exist, approximation is meaningful,
> geometry supplies coordinates, weak observations recover convergence,
> and differentiation respects limits. What can we solve with them?

---

## The Fourier division between Spaces and Solutions

Fourier material crosses the part boundary, but its jobs are distinct.

### Spaces owns

- trigonometric and complex exponential systems as choices of coordinates;
- finite orthogonal projection as best $L^2$ approximation;
- density/completeness of the periodic system and hence $L^2$ convergence
  and Parseval, if the basis chapter carries the full core proposed above;
- Fejér kernels as positive approximate identities, if used to prove
  density;
- examples showing that norm, pointwise and weak convergence differ;
- periodic distributions as the final new kind of space.

### Solutions owns

- the question “which basis does this operator choose?”;
- complex exponentials as the eigenbasis that diagonalizes periodic
  differentiation in actual equation solving;
- the theorem that every periodic distribution has a Fourier expansion,
  proved when a periodic equation requires that space;
- heat, wave and other evolution equations;
- Fourier transform and continuous spectrum on $\mathbb R$;
- Schwartz/tempered distributions, fundamental solutions, sampling,
  uncertainty and other transform payoffs.

Thus Spaces does not hide Fourier until the end, but neither does it spend
the major solution story before Part IV.

## Transformations and motion: why they move to Part IV

The old plans placed matrix exponentials and bounded operators among the
space machinery. The conversation found that “the arithmetic of
transformations” lacks a compelling native motivation there. Its real
question is an equation:

$$
x'(t)=Ax(t).
$$

That gives a strong opening movement for Solutions:

- $x'=ax$ and scalar exponential;
- coupled motion $x'=Ax$;
- microsteps $(I+tA/n)^n\to e^{tA}$;
- growth, shear and rotation;
- $e^{it}$ and the rotation matrix as the same phenomenon;
- bounded operator exponentials;
- the obstruction posed by unbounded differentiation.

Spaces may establish bounded linear maps and the completeness estimates
needed later. It should not tell the motion story before motion supplies
the reason.

## The live compression options

Seven chapters remain the working plan. There are two live ways to reach
six, and they should be judged by the actual minimal theorem roster rather
than by chapter-count symmetry.

### Option A — merge the integral pair

If the actual $L^1/L^2$ roster is small enough that Chapter 16 cannot earn
a separate narrative movement, merge Chapters 15 and 16:

1. Functions Become Points
2. Completing the Integral and Its World
3. How Functions Escape
4. Choosing the Right Coordinates
5. What Every Observer Sees
6. Beyond Functions

The combined chapter would need to move rapidly from Daniell extension
through MCT/DCT to a.e. equality, $L^1$ completeness and the $L^2$ door.
Its risk is that one
chapter must carry both a technically serious construction and the
conceptual revelation of the space it creates.

### Option B — merge observers into distributions

If the functional-analysis route can remain lean, Chapters 19 and 20 form
a naturally escalating single story:

> stable measurements → Riesz represents Hilbert observers by functions →
> weak convergence → concentration produces a limiting observer not
> represented by an $L^2$ function → smooth tests and distributions →
> differentiation commutes with limits.

This may be the more narratively seamless merge. Its risk is mathematical
load: dual spaces, Riesz representation, weak convergence, weak
subsequential compactness, the smooth test space, delta and distributional
differentiation can easily become two chapters' worth of ideas. The main
diagnostic is weak Bolzano–Weierstrass. If it remains a substantial core
climax, the chapters probably stay separate; if it is shortened, moved or
made optional, Riesz can become the pivot inside a strong combined finale.

If both Option A and Option B survive their audits, Part III could contract
to five chapters without merging unrelated stories. Do not instead merge
the basis and observer chapters: their narratives are cleanly different.
Coordinates describe a point internally and are chosen for a task;
functionals observe a point externally and determine a mode of convergence.
Do not merge the escape chapter into the metric opening either; the
finite/infinite-dimensional surprise needs time to become an event rather
than a cautionary paragraph.

## Dependency spine

The intended mathematical dependency is:

$$
\begin{aligned}
&\text{Part II sequences and continuous integral}\\
&\quad\downarrow\\
&\text{metrics and completeness}\\
&\quad\downarrow\\
&\text{Daniell extension} \to \text{MCT/DCT} \to L^1,L^2\\
&\quad\downarrow\qquad\qquad\quad\downarrow\\
&\text{Arzelà--Ascoli}\qquad\text{Hilbert projection and bases}\\
&\hspace{118pt}\downarrow\\
&\hspace{58pt}\text{duality, Riesz and weak convergence}\\
&\hspace{118pt}\downarrow\\
&\hspace{82pt}\text{periodic distributions}.
\end{aligned}
$$

Specific audits:

- Arzelà–Ascoli needs metric completeness and Part II's uniform
  continuity ideas, not the full $L^p$ chapter. Its placement after the
  integral world is narrative rather than forced by every dependency.
- Hilbert geometry needs $L^2$ and completeness.
- Riesz representation needs the Hilbert projection theorem.
- Weak sequential compactness in separable Hilbert space needs an
  orthonormal basis and Bessel/Parseval machinery.
- Periodic distributions need the observer idea and smooth test functions;
  they do not require the theorem that every distribution has a Fourier
  series.
- Matrix exponentials do not need the general compactness chapter.

## Material salvaged from the old Part III plans

### Kept, but moved or reframed

- Metric/function spaces, now motivated together by functions becoming
  points.
- Daniell, MCT/DCT and $L^p$, promoted to the opening movement of Spaces.
- Arzelà–Ascoli as the repair of Bolzano–Weierstrass.
- Density, mollification and approximate identities, attached to the
  integral world and later delta motivation.
- Inner products, projection, orthogonal bases and Parseval, reframed by
  task-specific coordinates.
- Legendre, Chebyshev, trigonometric and Haar systems, selected by their
  concrete jobs rather than catalogued.
- The strong old explanation of complex exponentials: sine and cosine mix
  under differentiation; $e^{inx}$ diagonalizes it. The explanation is
  introduced in the basis chapter and spent on equations in Solutions.
- Distributions motivated by “sequences that should converge,” now the
  climax of Spaces rather than an overloaded final applications chapter.
- Baire and generic monsters as a starred option.

### Moved to Solutions

- Banach fixed point as Picard–Lindelöf and genuine ODE theory.
- Matrix exponentials, linear systems and transformation-generated motion.
- Gronwall, continuous dependence and numerical methods.
- Calculus of variations and the direct method.
- Heat/wave equations, Sturm–Liouville and eigenfunction solution methods.
- Compact operators and spectral theory, if the selected problems justify
  the machinery.
- Fourier transform, tempered distributions and fundamental solutions.
- Sampling, uncertainty, Poisson summation, central-limit and Borwein
  applications.

### Cut from the core unless a client appears

- a general point-set topology chapter;
- full finite-dimensional norm equivalence and compactness theory;
- a catalogue of $L^p$ duals;
- Hahn–Banach at maximal generality;
- Fredholm theory without a sustained integral-equation story;
- Sturm–Liouville as an unsupported promise;
- multiple distribution spaces introduced in advance of their uses.

## Recorded chapter-count and scope ruling

- **Keep seven chapters for now**, as the clearest form in which to audit
  the story and dependencies.
- **Retain two live compressions:** collapse the integral pair if the
  eventual $L^1/L^2$ treatment is too small to sustain Chapter 16; collapse
  Riesz/weak observers into distributions if their minimal route forms one
  manageable escalating chapter.
- **Author's initial inclination:** the observer/Riesz-to-distributions
  route probably does collapse in the final book, following the escalation
  recorded in Option B. Keep the chapters separate during planning so each
  movement's narrative and theorem load can be evaluated rather than hidden
  inside a prematurely compressed outline.
- **Minimal $L^p$ principle:** include only what this introductory book
  needs. $L^1$ supplies the completed integral world and $L^2$ supplies the
  later geometry; no theorem earns core status merely because it belongs
  to the standard $L^p$ syllabus.

## Open decisions for the next walk

1. **What is the minimal $L^1/L^2$ theorem roster?** Audit every proposed
   inequality and general $L^p$ statement against a named client; this
   audit will also decide whether the two integral chapters remain two.
2. **What is the minimal observer-to-distributions route?** In particular,
   decide whether weak Bolzano–Weierstrass is core, optional, or movable;
   that decision will largely determine whether Chapters 19 and 20 remain
   separate.
3. **Where does regularization live?** Current recommendation: at the end
   of the $L^p$ world, with smooth density as the immediate payoff and
   delta as the long return.
4. **How is trigonometric completeness proved?** Fejér gives a concrete
   approximate-identity return; another density proof may reduce load.
5. **Is Baire core, starred, or postponed?** It has a strong monsters
   payoff but is not needed for the seven-chapter spine.
6. **Does Chapter 19 stop at weak Hilbert compactness?** Uniform Boundedness
   plus Fourier divergence is an excellent optional climax but may crowd
   the clean bridge to distributions.
7. **First distribution space.** Current recommendation: periodic
   distributions on $\mathbb T$. Reconsider $\mathcal D'(\mathbb R)$ only
   if $H'=\delta$ is judged more important than the circle's technical and
   narrative economy.
8. **Exact Part IV opening.** “Transformations generate motion” is the
   leading candidate, but belongs to the separate Solutions plan.
9. **Titles.** Every chapter label in this document is explanatory
   shorthand, not proposed book prose.

## Part-level success test

Part III works only if a student can answer all of these in ordinary
language:

- Why can the same sequence converge under one distance and fail under
  another?
- What failure forced the extension of the integral?
- Why are functions identified almost everywhere in $L^p$?
- How can bounded functions escape when bounded numbers cannot?
- Why does the best basis depend on the operation or question?
- What can every stable observer see that a norm may refuse to call
  convergence?
- Why is delta an honest object on the circle even though it is not a
  function?
- Why do differentiation and limits commute for distributions?
- Which questions have deliberately been handed to Solutions rather than
  answered abstractly in advance?

If those answers are vivid, “Spaces” is not too abstract. Its payoff is
that the reader sees mathematical worlds being built in response to
failures—and leaves with tools powerful enough that the next part can
concentrate on remarkable solutions rather than foundational repair.
