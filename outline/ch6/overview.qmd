## Chapter 6: Continuity

### Overview

Part II begins. We now have the real numbers, sequences, series, and tools for manipulating infinite processes. The question shifts: what makes a function well-behaved?

The zoo of "functions" admitted by Dirichlet's definition includes monsters — functions discontinuous everywhere, functions with no pattern at all. Continuity is the first and most fundamental filter: a continuous function respects closeness, meaning small changes in input produce small changes in output. This chapter develops the theory from definition through deep structural theorems.

The arc moves from local to global. We begin with the $\varepsilon$-$\delta$ definition at a single point, build up a library of continuous functions through algebraic operations and composition, establish that power series define continuous functions, and then discover what happens when continuity interacts with domain structure — the Intermediate Value Theorem, the Extreme Value Theorem, and the theory of monotone inverses. The chapter closes with uniform continuity, where the local-to-global theme reaches its sharpest form: on closed bounded intervals, the pointwise condition of continuity automatically upgrades to a uniform one.

### Historical Prelude

The chapter opens with an unnumbered historical introduction covering:
- The Intermediate Value Theorem as the motivating target — the theorem we *want* to be true
- Step functions as the obvious counterexample — why we need a definition that rules them out
- Cauchy and Bolzano's attempts to pin down continuity (infinitesimal changes)
- Weierstrass's $\varepsilon$-$\delta$ formulation — precision replacing intuition
- The good news: continuous functions are closed under algebraic operations
- The surprises: Cauchy's flawed theorem (limits of continuous functions are continuous — false!), Weierstrass's continuous nowhere-differentiable function

### Sections

1. **§6.1 Continuity** — The $\varepsilon$-$\delta$ definition, the estimation game parallel to $\varepsilon$-$N$, the sequential characterization as a bridge to existing tools, Dirichlet's function, limits of functions, one-sided limits. Guided exercises: classifying discontinuities (removable/jump/essential) and the ruler function (Thomae's function — continuous at irrationals, discontinuous at rationals).

2. **§6.2 Building Continuous Functions** — The sequential characterization pays off: sums, products, quotients, compositions of continuous functions are continuous, via one-line proofs invoking limit laws from Chapter 2. Building up from constants and $f(x) = x$ to polynomials, rational functions, $\sqrt{x}$. Guided exercise: piecewise functions and the gluing lemma.

3. **§6.3 Power Series and Continuity** — Power series as functions defined by infinite processes, starting from the geometric series $\sum x^n = 1/(1-x)$. Radius of convergence via the Cauchy-Hadamard formula. The warning: limits of continuous functions can be discontinuous (zigzag example). Dominated convergence saves power series on the interior. The boundary problem ($x^n$ on $[0,1]$), summation by parts, and Abel's theorem: convergence at the endpoint guarantees continuity there.

4. **§6.4 Global Properties** — The local theory is done; now continuity meets domain structure. The Intermediate Value Theorem (via completeness), with applications to $n$th roots, fixed points, and odd-degree polynomials. The Extreme Value Theorem (via Bolzano-Weierstrass). The unification: continuous image of $[a,b]$ is $[m, M]$. Monotone functions and continuous inverses — the tool that makes $\log$, $\arcsin$, $\arctan$ automatic in Chapter 9. Guided exercise: the bisection method.

5. **§6.5 Uniform Continuity** — One $\delta$ for all points simultaneously. Non-examples ($1/x$ on $(0,1)$, $x^2$ on $\RR$). The main theorem: continuous on $[a,b]$ implies uniformly continuous. Continuous extensions: uniform continuity on $(a,b)$ is exactly the condition for extending to $[a,b]$. Guided exercise: the sequential characterization of uniform continuity and the Cauchy-preserving property.

### Dependencies

**Requires:**
- §1.5 (density of $\QQ$ and irrationals)
- §2.2–2.3 ($\varepsilon$-$N$ definition, limit laws)
- §3.1 (Bolzano-Weierstrass)
- §3.2 (limsup, for Cauchy-Hadamard)
- §3.3 (Cauchy sequences, for extension theorem)
- §4.2 (ratio/root tests)
- §5.4 (dominated convergence)

**Leads to:**
- Chapter 7 (differentiation: limits of functions become the derivative, continuous inverse theorem enables inverse function derivatives)
- Chapter 8 (integration: uniform continuity is key to Riemann integrability of continuous functions)
- Chapter 9 (calculus: $\log$, $\arcsin$, $\arctan$ defined as inverses; Abel's theorem evaluates power series at endpoints)
