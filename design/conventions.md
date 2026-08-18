# Theorem Block Conventions

Content conventions carried forward from the Quarto-era draft (April 2026),
with block syntax updated for the custom build system. The environment list
itself lives in `compiler/registry.js`; syntax spec in `DESIGN.md` and
`design/crossref.md`.

## Environment Types

- **Definition** (`#def-`): Every new concept being introduced. The backbone of the text.
- **Theorem** (`#thm-`): Major named results and landmark structural results. If it would appear on a qualifying exam by name, it's a theorem.
- **Proposition** (`#prp-`): Important results that aren't landmark. True and useful, but not named.
- **Lemma** (`#lem-`): Technical results whose purpose is to serve a specific proof.
- **Corollary** (`#cor-`): Immediate consequences of a theorem. Always lives right after its parent.
- **Example** (`#exm-`): Concrete instances, computations, counterexamples.
- **Remark** (`#rem-`): Commentary, connections, context. "This is why we need the hypothesis" or "compare this to the rational case."
- **Exercise** (`#exr-`): Reserved for end-of-section problem sets. *(No `exercise`
  environment exists in the compiler yet — punt to v2 per DESIGN.md; add to
  `compiler/registry.js` when exercises land.)*

## Inline Exercises (Proof Left to Reader)

When a result is stated in the text but its proof is left to the reader, use the appropriate environment type (proposition, corollary, theorem) and add "(Exercise)" to the title:

```markdown
:::proposition{#prp-pascal title="Pascal's Identity (Exercise)"}
$\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$.
:::
```

This way the result lives in the theorem/proposition counter where it logically belongs, and "(Exercise)" tells the student they supply the proof. Truly trivial inline exercises ("verify that...") are just prose with no block.

## Label Naming

- **Purely descriptive**, no chapter or section prefixes: `#thm-triangle-inequality`, `#def-ordered-field`
- **Lowercase kebab-case** for all labels: `#def-ordered-field`, not `#def-OrderedField`
- Labels should be specific enough to avoid collisions across chapters
- The prefix (`thm-`, `def-`, ...) is a reading convention for humans; the
  environment word comes from the directive name, and the crossref word from
  the label table (see `design/crossref.md`)

## Block Syntax

```markdown
:::theorem{#thm-triangle-inequality title="Triangle Inequality"}
$|a + b| \leq |a| + |b|$.
:::

:::proof
...
:::
```

- The `title` attribute is optional. Use it for:
  - Named theorems (Triangle Inequality, Bolzano-Weierstrass, FTC)
  - Definitions with a clear name (Ordered Field, Completeness, Continuity)
  - Anything with a good descriptive title
- Skip the title for routine propositions, lemmas, and corollaries
- `proof` and `sketch` are unnumbered and take no id
- While material is still outline-stage: keep short statement sketches in
  every block — these tell us what to write when we draft prose

## Informal Definitions in Prose

- For review material (especially ch1–2), define terms inline with bold: "a function is **injective** if..."
- Reserve directive blocks for the real content of the course — new results and definitions
- Bold terms = "you should already know this"; formal blocks = "here's the new material"

## Cross-References

- Reference with `@thm-label`, `@def-label`, `@prp-label`, etc.
- Capitalize the prefix to capitalize the word: `@Thm-label` → "Theorem 2.4"
- Example: "By @thm-triangle-inequality, we have..."

## Equations

- Numbered equations use a trailing label; unlabeled display math stays unnumbered:

```markdown
$$
y' = f(t, y)
$$ {#eq-general}
```

## Notation

- Use `log` for natural logarithm throughout (not `ln`)
- Macros: `\RR`, `\QQ`, `\ZZ`, `\NN`, `\CC`, `\FF`, `\ep` (for ε) — defined in
  `latex/macros.tex`, shared by print and web
