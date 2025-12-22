## Why Lebesgue?



**Uniqueness**

- Theorem: Any extension of $I$ from $C[a,b]$ satisfying linearity and MCT must agree with ours
- Proof sketch: MCT forces values on $L^\uparrow$, linearity forces values on $L^1$
- There was no choice—MCT determined everything

**Maximality**

- Theorem: $L^1$ is the largest class where $f$ integrable $\Rightarrow |f|$ integrable
- "Absolute integrability" property
- Extensions beyond (like HK) lose this

**Connection to Derivatives**

- Theorem: $f \in L^1$ iff $f = F'$ a.e. for some absolutely continuous $F$
- FTC for Lebesgue: cleaner than Darboux version
- Preview of absolute continuity

**Completeness Revisited**

- $L^1$ with $d(f,g) = \int |f - g|$ is complete
- In fact: $L^1$ is the completion of $C[a,b]$ under this metric
- Every element of $L^1$ is a limit of continuous functions
- We added exactly the missing limits—nothing more

**A General Machine**

- The construction used the length axiom $\mu([c,d]) = d - c$ only as input
- Positivity, linearity, Daniell's condition did the work
- Replace with $\mu((c,d]) = g(d) - g(c)$ for increasing right-continuous $g$
- Same machine produces a new integral
- In Chapter N: this captures all finite Borel measures on $[a,b]$—the Riesz representation theorem

**Beyond Lebesgue: The Henstock-Kurzweil Integral**

- Lebesgue isn't the only extension
- HK: every derivative is integrable, full FTC
- Example: $F(x) = x^2 \sin(1/x^2)$, differentiable everywhere, $F'$ not Lebesgue integrable
- Tradeoff: HK has better FTC, but no $L^p$ theory
- Different integrals answer different questions

**Closing Perspective**

- Darboux: simplest integral for area under curves
- Lebesgue: largest integral with good limit behavior
- HK: largest integral with full FTC
- For functional analysis: Lebesgue is essential