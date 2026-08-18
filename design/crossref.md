# Cross-referencing & numbering — subsystem spec

The make-or-break subsystem: sections, subsections, theorem-family
environments, equations, and figures, all auto-numbered and referenceable
across the entire book, identically in print and on the web.

## Principle

Numbering logic exists in **exactly one place** — the resolver. The pipeline:

1. **Parse** — each chapter's markdown → AST. Knows nothing about numbers.
2. **Resolve** — one walk over all chapters in `book.yml` order. Every
   numberable object gets `{kind, id, number}` stamped on its node; a global
   label table is built (`id → {kind, number, chapter, anchor}`). The only
   stage that counts.
3. **Emit** — LaTeX *ignores* the computed numbers (emits `\label`/`\cref`/
   `\eqref`; LaTeX counts natively, so the `.tex` is publisher-clean). Web
   *consumes* them (numbers and ref text baked into HTML). Emitters never
   count.

The loop closes with the **aux check**: after the PDF compiles, every
`\newlabel` in the `.aux` is diffed against the label table. Any mismatch
fails the build at the first divergent label. Drift caused by an unlabeled
object is caught at the next labeled object after it.

## Source syntax (decided)

Theorem-family — container directives; `title` is the optional amsthm bracket:

```markdown
:::theorem{#thm-picard title="Picard–Lindelöf"}
If $f$ is continuous in $t$ and Lipschitz in $y$, then ...
:::

:::proof
...
:::
```

Equations — Quarto-style trailing attribute. **Only labeled display math is
numbered**; unlabeled `$$` blocks emit `\[...\]` and increment nothing:

```markdown
$$
\dot y = f(t, y)
$$ {#eq-general}
```

Sections — explicit opt-in ids, Quarto-style. Unlabeled headings still get
URL anchors from slugs but cannot be `@`-referenced (so refs never break
silently on retitle):

```markdown
## Flows on the line {#sec-flows}
### A subsection {#sec-flows-sub}
## An unnumbered aside {.unnumbered}
```

Chapter files begin with a single `#` title (id optional: `{#ch-…}`);
`book.yml` holds only order and part grouping.

References — `@id` anywhere in prose. Case of the first letter controls
capitalization, exactly as in Quarto and cleveref:

| Source | Web | LaTeX |
|---|---|---|
| `@thm-picard` | theorem 2.4 (link) | `\cref{thm-picard}` |
| `@Thm-picard` | Theorem 2.4 (link) | `\Cref{thm-picard}` |
| `@eq-general` | (2.1) (link) | `\eqref{eq-general}` |
| `@sec-flows`, `@ch-…`, `@fig-…` | section 2.3 / … | `\cref{…}` |

The kind comes from the object carrying the id, not the prefix — prefixes
(`thm-`, `eq-`, `sec-`, `fig-`, `ch-`) are convention only. Name and number
join with a non-breaking space in both outputs.

## Environment registry (frozen for v1; extending = one entry + one generated line)

| Directive | amsthm style | Numbered |
|---|---|---|
| `theorem`, `lemma`, `proposition`, `corollary` | plain | shared per-chapter counter |
| `definition`, `example` | definition | same shared counter |
| `remark` | remark | same shared counter |
| `proof` | proof env | no |
| `sketch` | proof-like, header "Sketch." | no |

Generated declarations: `\newtheorem{theorem}{Theorem}[chapter]`, all others
`\newtheorem{lemma}[theorem]{Lemma}` etc.; `\theoremstyle` switched per
block; `sketch` defined as a proof variant in the preamble.

## Numbering rules (the mirror table)

Each rule is implemented twice — by LaTeX's counters and by the resolver —
so the rules stay deliberately boring:

| Kind | Number | LaTeX mechanism | Resolver mechanism |
|---|---|---|---|
| Chapter | N | `\chapter` | order in `book.yml` |
| Section / subsection | N.M / N.M.K | `\section` / `\subsection` | `##`/`###` counters, reset per parent |
| Theorem family | N.M | shared amsthm counter `[chapter]` | one counter per chapter |
| Equation | (N.M) | `equation` env + `\numberwithin{equation}{chapter}` | labeled display math per chapter |
| Figure | N.M | `figure` env (book class) | figure directives per chapter |

## Policies enforced as build errors (lints)

These keep the mirror trivially correct:

- Unlabeled display math never numbers (structural, see syntax above).
- `\tag`, `\notag`, `\nonumber`, and multi-numbered `align` inside math:
  **rejected** in v1 (use `aligned` inside one numbered equation).
- Raw LaTeX passthrough (future escape hatch): linted for counter-touching
  commands (`\section`, `\begin{equation}`, `\caption`, …) and refused.
- Duplicate id anywhere in the book: error.
- `@ref` to unknown id: error, with near-miss suggestions.
- More than one `#` heading per chapter file: error.

## Deliberate limitations

Documented boundaries chosen against actual needs — decisions, not debt.
The alternative to each was generality we don't use, and absorbing unused
generality is how Quarto got huge. If a boundary is ever actually hit, its
tripwire fires and we reconsider then, with a real case in hand.

- **Equation labels are recognized only on a `$$ {#eq-x}` closing line at
  the outermost level** (a small preprocessor rewrites that line before
  remark parses; remark-math cannot parse the trailing attribute itself).
  Labeled display math inside indented code blocks or blockquotes is not
  recognized — configurations a math book's prose doesn't contain.
  Tripwire: any extracted label that fails to attach to a math node is a
  build error (orphan-label lint), so a missed label is loud, never a
  silently dropped equation number. If needs ever genuinely change, the
  full solution is a micromark syntax extension; nothing downstream would
  notice the swap.
- **v1 environment roster and counter scheme are fixed** (seven shared-
  counter environments, per-chapter numbering). Extending is one registry
  entry; exotic numbering is refused on purpose.
- **Counter-touching math is refused** (`\tag`, `\notag`, `align`) rather
  than mirrored. Tripwire: the lint names the construct and the sanctioned
  alternative (`aligned` inside one labeled equation).

## Aux check mechanics

`latexmk` compiles the book; the checker parses `\newlabel{id}{{number}…}`
entries (hyperref format tolerated) from `main.aux` and compares `number`
against the label table for every id. Output: pass, or the first divergent
label with both numbers. Runs as part of every book build.

## Web anchors

`id → site/chNN/#id`. Chapter pages carry all anchors; the label table is
the single source for both anchor generation and link targets, so links
cannot drift from anchors.
