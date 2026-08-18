---
title: "Functions"
---

## Part II Introduction: What Is a Function?

### The old view
- For most of history, "function" meant "formula" — an expression you could write down and evaluate
- Euler (1748): functions are polynomials, trig expressions, exponentials, compositions of these
- Everything in Part I was like this — $a^x$, $\log_a$, $E(x) = \sum x^k/k!$, geometric series
- This world is tidy and well-behaved

### Fourier's challenge
- Fourier (~1807) solving the heat equation: initial temperature of a bar can be anything — one temperature on the left, different on the right
- His solutions required representing arbitrary temperature distributions as infinite sums of sines and cosines
- These "functions" aren't given by any single formula
- Forced the question: what *is* a function?

### Dirichlet's answer
- Dirichlet (1829): a function is *any* rule assigning to each input exactly one output
- To show he meant it: $f(x) = 1$ on rationals, $0$ on irrationals
- No formula, no graph you could draw — between any two points it oscillates infinitely between 0 and 1
- A perfectly valid function under the new definition

### The zoo
- Once you accept Dirichlet's definition, the world of functions is vast and wild
- The ruler function: $f(p/q) = 1/q$ in lowest terms, $0$ on irrationals — somehow calm at irrationals, agitated at rationals
- $\sin(1/x)$ near zero: oscillates faster and faster, no way to assign a value at $x = 0$ that "fits"
- Indicator functions of bizarre sets
- The "nice" functions from calculus — polynomials, exponentials, power series — are a tiny minority
- How do we sort the nice from the wild?

### First lens: continuity
- The most basic demand: nearby inputs should give nearby outputs
- Bolzano (1817) wanted to prove the Intermediate Value Theorem — a continuous function crossing from negative to positive must hit zero
- Seemed geometrically obvious, but he couldn't prove it; needed a precise definition of continuity *and* completeness of $\RR$
- Cauchy (1821) gave a verbal definition — close, but still vague
- Weierstrass (1860s): the $\varepsilon$-$\delta$ definition — same quantifier game as $\varepsilon$-$N$ for sequences, but local
- Most monsters fail: Dirichlet's function is discontinuous everywhere
- But some sneak through: Weierstrass (1872) constructs a function continuous at every point, yet so jagged it has no tangent line anywhere
- Continuity tames the zoo, but doesn't fully domesticate it

### Second lens: tangent lines
- Fermat (1630s): to find where a curve reaches its peak, look for where the tangent line is horizontal
- His method of "adequality" — set $f(x)$ and $f(x+e)$ nearly equal, divide by $e$, then discard $e$ — mysteriously works
- The tangent problem more generally: given a curve, what line best approximates it at a point?
- Newton and Leibniz (1680s): the tangent slope is the limit of secant slopes
- But what does "limit" mean here? Berkeley (1734): "ghosts of departed quantities"
- We now have limits (Chapter 2) — so we can make this precise
- The zoo: $|x|$ has a corner at zero, no tangent. Weierstrass's monster has no tangent at *any* point
- Functions with tangent lines everywhere are a smaller, better-behaved class than merely continuous functions

### Third lens: area
- We computed the area under a parabola in Chapter 2 (Archimedes' quadrature)
- That worked beautifully — but which functions in the zoo even *have* a well-defined area?
- For a smooth curve, intuition says yes — but intuition hasn't met Dirichlet's function
- What is the "area" under Dirichlet's function between 0 and 1? Upper approximation always 1, lower always 0 — they never agree
- Riemann (1854): the integral exists precisely when upper and lower approximations converge to the same value
- Some functions have area, some don't — understanding the boundary is one of the deep stories of Part II

### What's ahead
- Chapter 6: Continuity — the definition, and what it forces (IVT, EVT)
- Chapter 7: Differentiation — tangent lines made rigorous, the Mean Value Theorem
- Chapter 8: Integration — axioms for area, the Riemann integral
- Chapter 9: Calculus — the Fundamental Theorem unifies differentiation and integration
- Chapter 10: Extending the integral — beyond Riemann, toward Lebesgue
