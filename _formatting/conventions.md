# Theorem Block Conventions

## Environment Types

- **Definition** (`#def-`): Every new concept being introduced. The backbone of the text.
- **Theorem** (`#thm-`): Major named results and landmark structural results. If it would appear on a qualifying exam by name, it's a theorem.
- **Proposition** (`#prp-`): Important results that aren't landmark. True and useful, but not named.
- **Lemma** (`#lem-`): Technical results whose purpose is to serve a specific proof.
- **Corollary** (`#cor-`): Immediate consequences of a theorem. Always lives right after its parent.
- **Example** (`#exm-`): Concrete instances, computations, counterexamples.
- **Remark** (`#rem-`): Commentary, connections, context. "This is why we need the hypothesis" or "compare this to the rational case."
- **Exercise** (`#exr-`): Reserved for end-of-section problem sets.

## Inline Exercises (Proof Left to Reader)

When a result is stated in the text but its proof is left to the reader, use the appropriate environment type (proposition, corollary, theorem) and add "(Exercise)" to the name line:

```
::: {#prp-pascal}
## Pascal's Identity (Exercise)
$\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$.
:::
```

This way the result lives in the theorem/proposition counter where it logically belongs, and "(Exercise)" tells the student they supply the proof. Truly trivial inline exercises ("verify that...") are just prose with no block.

## Label Naming

- **Purely descriptive**, no chapter or section prefixes: `#thm-triangle-inequality`, `#def-ordered-field`
- **Lowercase kebab-case** for all labels: `#def-ordered-field`, not `#def-OrderedField`
- Labels should be specific enough to avoid collisions across chapters

## Block Syntax

```
::: {#thm-triangle-inequality}
## Triangle Inequality
$|a + b| \leq |a| + |b|$.
:::
```

- The `## Name` line is optional. Use it for:
  - Named theorems (Triangle Inequality, Bolzano-Weierstrass, FTC)
  - Definitions with a clear name (Ordered Field, Completeness, Continuity)
  - Anything with a good descriptive title
- Skip the name for routine propositions, lemmas, and corollaries
- Keep short statement sketches in every block — these tell us what to write when we draft prose

## Informal Definitions in Prose

- For review material (especially ch1–2), define terms inline with bold: "a function is **injective** if..."
- Reserve `:::` blocks for the real content of the course — new results and definitions
- Bold terms = "you should already know this"; formal blocks = "here's the new material"

## Cross-References

- Reference with `@thm-label`, `@def-label`, `@prp-label`, etc.
- Example: "By @thm-triangle-inequality, we have..."

## Notation

- Use `log` for natural logarithm throughout (not `ln`)
- Macros: `\RR`, `\QQ`, `\ZZ`, `\NN`, `\CC`, `\FF`, `\ep` (for ε)
