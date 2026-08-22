# Ch 1 Purpose — practice without terminology

Goals-first workflow: this file is adjudicated before the chapter's
section list exists. The content rule: a section, example, or exercise
earns its place only by serving a named goal or the story, or by being
a named debt. Shorthand names are content labels, NOT title candidates.

Filled 2026-08-18 from the day's adjudicated decisions (see
`part1-chapters.md`, `axiomatic-measurement.md`); items marked OPEN are
Steve's to call.

## Goals

**Exports** (to be verified against outlines in a dedicated pass):

- Ordered field + order axioms — the "world before," and half of ℝ's
  interface (Ch 2 adds the other half).
- The inequality toolbox: triangle inequality, Bernoulli, binomial,
  AM-GM. Clients: e's capture in Ch 4 (binomial for the expansion,
  Bernoulli for e^h → 1 in Ch 6's squeeze; AM-GM is the cheap
  alternative route to monotonicity), estimates everywhere.
- Definitions of bounded / upper bound / sup, inf — the *words*,
  distilled mid-chapter from the trapping practice (the measurement
  material begs for them), then spent on the chapter's closer: the
  unified diagnosis — every gap has the same shape, a bounded set
  with no least upper bound in our world. (Decided in the story
  discussion, conditional on no overload — allocation checked, Ch 1
  carries ~four sections. The referents arrive in Ch 2, which opens
  by promoting the pattern to an axiom.)
- Measurement: axioms (A1)–(A4), (L1)–(L4); polygon area as known +
  the homework derivation series; the trapping inequality. Clients:
  Ch 2's forcing closure, Ch 3's parabola, Ch 4's Measurement of the
  Circle, the integration reprise (Part II).
- √2 is irrational.
- **The exponent joins the nameless list** (decided 2026-08-20; full
  design in `exponential-thread.md`). Integer powers are exactly what
  the naming engine generates — closure under multiplication. a^(1/2)
  needs roots; roots do not exist. No section of its own: the material
  rides inside the augmentation campaign and the diagnosis. Clients:
  Ch 2 (the whole algebraic track), Ch 3 (compounding), Ch 4 (e).
- **"Sequence" as a formal object, introduced here** (decided
  2026-08-18: the formal idea of an infinite process appears as early
  as possible; the *theory* of convergence stays in Ch 3 — the
  promotion rule again). Two ancient specimens travel together:
  the Babylonian iteration, pure inequality work (decreasing,
  bounded, error below any tolerance), and the **Pythagorean
  side-and-diagonal numbers** (Theon of Smyrna; ratios 1/1, 3/2, 7/5,
  17/12, … — the √2 continued-fraction convergents, and they
  OSCILLATE, closing in from both sides). One monotone process, one
  oscillating — the pair is load-bearing for Ch 2 and Ch 3 (see
  `sources/side-diagonal-numbers.md`). Clients: Ch 3 (Pell
  verification; the oscillation motivates the limit definition),
  Ch 4 (MCT re-proof; splitting section).
- **The infinite-process section** (decided 2026-08-20; Steve's
  structure). Its own section, and its order is the book's rhythm in
  miniature: **informal processes with examples → "sequence" defined as
  the formalization → notation for the special cases.** Four families,
  each with a Ch 1-legal specimen:
  - *recursive*: the Babylonian iteration; the side-and-diagonal
    numbers. Terms computable; the error provably below any tolerance.
  - *additive*: **Zeno's dichotomy**, ½ + ¼ + ⅛ + ⋯ — partial sums in
    CLOSED FORM, 1 − 2⁻ⁿ, by pure algebra.
  - *multiplicative*: **Π(1 − 1/n²)** — partial products in CLOSED
    FORM, (N+1)/2N, by telescoping. Pure algebra, no limits.
  - *continued fraction*: √2 = 1 + 1/(2 + 1/(2 + ⋯)) — **free**: its
    convergents ARE the side-and-diagonal ratios already in the chapter
    (`sources/side-diagonal-numbers.md`), just shown in that notation.
  Formalism budget: the definition and the four notations, nothing
  else. ("Bounded" arrives from the measurement/trapping side, where
  the chapter already needs it.)
- **The notation observation** (2026-08-20) — the load-bearing part,
  and the reason this is not bookkeeping. The four notations are not
  arbitrary: each makes a different feature of the *same* process
  visible — a recursion shows the **step**, a series the
  **increments**, a product the **ratios**, a decimal the **error**.
  So converting between notations is a TECHNIQUE (differences read a
  sequence as a series; ratios read it as a product). Ch 4's craft —
  "revealing hidden monotone structure" — is largely *changing notation
  until the structure shows*: telescoping reads a sequence as a series;
  the product inequalities read a product as a series. Stated here as
  an observation, Ch 4 need not invent it.
- **Placement: second-to-last, feeding the diagnosis** (decided
  2026-08-20). The closer is the unified diagnosis — every gap is a
  bounded set with no least upper bound — and each process hands that
  over directly: a **bounded set of partial values with no least upper
  bound**, computed by the reader themselves. The processes are not
  another example of the gap; they are its cleanest evidence.
- The diagnosis itself — the list of nameless things is Ch 2's
  to-do list: each item gets its definition there.

**Skills**: inequality wrangling; axiom-checking (verify a structure
is/isn't an ordered field); irrationality proofs; dissection and
axiom arguments for polygon area; working with sup-language for sets
that may have no sup.

**Strands**: √2 — diagonal discovered, irrationality proved,
Babylonian practice begun. π — the circle's measure posed via the
traps; the trap that closes on nothing; squaring the circle as a
great pillar (Lindemann 1882 cited). ∛2 — doubling the cube as the
other pillar (Wantzel 1837 cited). e — the *constant* is absent by
design (it enters with MCT in Ch 4), but **the exponential thread
starts here** (decided 2026-08-20; fork 5 resolved): as history and
worked practice only, never as a stated interface. Growth/process
measurement stays off the wish list (decided).

**Meta-lesson**: existence is definability; the book's master debt
(deferral) is opened here, on purpose, visibly.

**Exit state**: the student can compute, estimate, and prove — but
cannot name. They can state *exactly* what is missing: sets with no
sup, traps with no target, processes with no destination. Our
mathematics is smaller than our practice.

**Non-goals & borders**:

- Never spends sup-existence. The completeness axiom IS the border
  with Ch 2. (Ch 1 defines sup and exhibits the gaps; the word exists,
  the referent doesn't.)
- No convergence language — that is Ch 3. The Babylonian sequence is
  handled by inequalities alone.
- Border with the opener: notation vs mathematics. The book's first
  numbered page is mathematics.
- Not a history chapter: the ancient practice appears as *worked
  mathematics*, not as narrative about mathematics.
- No cardinality theory (moved to Ch 2's twist section).

## Story

- **Doctrine**: existence is definability — not having terminology
  means the thing does not exist in our mathematics.
- **The mechanism — the naming engine** (Steve, 2026-08-18): the
  axioms don't just constrain, they *generate*. 0 and 1 exist by
  decree; closure under the four operations names the rest — and the
  engine's output is exactly ℚ (anything writable with 1, +, −, ×, ÷
  is rational; a real little theorem). Nameable = generated.
- **What numbers are FOR vs what was pinned down** (Steve's framing):
  we use numbers to measure — lengths, areas, angles. Formalizing
  what that requires gives arithmetic (fields) and order. The chapter
  opens on this gap between use and specification. Growth/process
  measurement is deliberately NOT on the wish list (decided
  2026-08-18): the spatial/historical examples carry the need for
  completeness on their own.
- **The story, start to finish**: formalize what measuring needs
  (arithmetic, order) → the
  engine names ℚ, and *this is all we can name* → success! geometry
  works, Pythagoras is proved, roots appear in real problems → shock:
  the diagonal's length is not a number of our system. Of course it
  IS a number (we hope!) — we somehow *missed* it → the augmentation
  campaign: each fix is *our original world plus extra data asserting
  the existence of particular numbers* (adjoin √2 — the axioms force
  many new numbers, but not √3, HW proof; adjoin all roots; roots of
  roots — the constructibles, Greece!) — and every time, gaps remain
  → diagnosis. (Framing per Steve: one world repeatedly augmented and
  still wanting — NOT a ladder of rival worlds.)
- **The two great historical pillars** (decided 2026-08-18): *doubling
  the cube* — do the Greek constructions give all numbers? They never
  found ∛2, and in 1837 Wantzel proved they never could. *Squaring
  the circle — what is π?* — a modern naturally reaches for the bigger
  world of real algebraics; in 1882 Lindemann proved π escapes even
  that. Both questions stood open for over two millennia, and both
  fell in the same century that produced completeness — the
  longstanding-ness is documented by dates, not asserted.
- **The calculus forward-glance** (decided 2026-08-18: IN): the
  IVT/EVT-fail-in-ℚ beat stays in the diagnosis — a border crossing
  with its justification: it shows just how long-standing the problem
  had been; a rigorous theory of functions/calculus can't guarantee
  even the simple intuitive things over these gaps.
- **The exponential thread's four stations** (decided 2026-08-20;
  sourcing in `sources/exponential-and-log.md`). **AO 6770**
  (~1700 BC) — how long to double your money at 20%? The scribe works
  from a table of integer powers, finds the answer trapped between
  n = 3 and n = 4, and interpolates linearly: a logarithm problem three
  millennia before logarithms, from the same tablet culture as the
  Babylonian square-root iteration this chapter already carries, and
  the first recorded instance of the book's deferral — he papered over
  the hole and did not ask. **Stifel 1544** — the two rows,
  multiplication below matching addition above; the correspondence seen
  whole, and still only at the integers. **Oresme ~1360** — fractional
  exponents with notation, *and* the speculation that irrational powers
  are possible: Ch 2's question posed and unanswerable. **Napier's
  kinematic definition, named as a debt on the page** — a moving point
  whose speed is proportional to the distance remaining, and we cannot
  yet say what that description means (paid in Part II as dy/dt = −ky).
- **Free callback**: Napier coined *logarithm* from λόγος + ἀριθμός,
  "ratio-number" — the same word whose double meaning drives this
  chapter's ἄλογος doctrine. The word that names the crisis names the
  technology that answers it. (See `sources/unspeakable.md` and
  `sources/exponential-and-log.md`.)
- **The ladder of namelessness** (decided 2026-08-20; this supersedes
  the earlier "two severity levels" candidate and orders the chapter's
  nameless things instead of listing them):
  1. **The diagonal** — the *operation* is fine (measure a length); the
     NUMBER does not exist.
  2. **Zeno's dichotomy** — the *value* is obvious (you do cross the
     room); the OPERATION does not exist. Nobody can say what adding
     infinitely many things means. Same for Π(1 − 1/n²): every stage in
     closed form, only the destination unsayable.
  3. **Viète's product** (1593) — NEITHER exists. Not one symbol
     denotes: the nested roots are absent from ℚ, and so is the
     infinite product joining them.
- **Viète at the top of the ladder** (decided 2026-08-20 — Steve:
  "viete early is great"). 2/π = (√2/2)·(√(2+√2)/2)·(√(2+√2+√2)/2)·⋯ —
  **the first formula in European mathematics to represent an infinite
  process**, and on the standard account the first identity in history
  expressing π as a limit. Viète's own method is a variation on
  Archimedes' polygons (so Ch 4's product section and Ch 4's finale are
  one computation in two notations), and he got nine digits from it.
  ⚠ Sourcing and the "beginning of analysis" characterization: see
  `sources/`. Placement: at or just after the traps close on nothing —
  *we have just failed to say what the circle measures; here is a
  formula for it, and not one symbol in it means anything.* It is the
  chapter's most expensive specimen (the nested radicals must be
  displayed honestly) and the one that pays most: hardest namelessness,
  the π strand, and it sets up Ch 2, Ch 3 and Ch 4.
- **Section rule**: every section ends with something *nameless*.
- **Candidates, not yet adjudicated**: the student's-decimals shock
  (non-repeating infinite decimals denote nothing in ℚ — the most
  personal instance of the pattern); the two severity levels of
  missing (provably absent, like √2 from ℚ, vs *unstatable*, like the
  circle's circumference — the gap that motivates a new KIND of
  axiom); reveal-then-shock ordering (inventory theorem stated before
  the diagonal lands, so the shock reads "unsayable, full stop" —
  Steve's draft order, working assumption).
- **The doctrine's ancient name** (sourced, see
  `sources/unspeakable.md`): the Greek vocabulary for irrational —
  ἄλογος (without ratio/word) and Plato's ἄρρητος (unsayable,
  Republic 546c) — IS the naming doctrine, 2,300 years early. Strong
  candidate chapter material; also raw material for titles. ⚠ Never say "Euclid
  called the diagonal alogos" — false in his technical usage (the
  trap is documented in the sources file). Titles themselves are
  Steve's; raw material from the discussion: his own sentences ("What
  Numbers Are For", "All We Can Name"), primary-source words, plain
  declaratives ("The Axiom" for Ch 2).
- **Ending**: a diagnosis — the chapter ends unresolved
  on purpose; the next chapter opens with the answer (first instance
  of the repeated Part I pattern: a limitation answered by the next
  chapter's opening).
- **Opening move** — OPEN (Steve): decided only that the chapter opens
  with a computation that works (thesis, design consequence 2).
  Candidates on the table: the Babylonian iteration; polygon
  dissection. Choice and voice are Steve's.
- **The example the chapter is remembered by** — OPEN (Steve):
  candidates: the Babylonian sequence,
  provably squeezing toward a destination that cannot be spoken; the
  measurement trap that closes on nothing.
- **Prelude brief**: beats 1–2 only — *the practice* (computations
  that work: Babylon, Archimedes) and *the deferred question* (what do
  they reach?). Reckoning and door belong to Ch 2's prelude. The
  truncation is deliberate: the two preludes together perform the
  four-beat template in slow motion.

## Ledger

**Imports**: the opener's notation; nothing else — this is the
foundation.

**Debts opened** (→ where paid):

- What does the diagonal measure? → Ch 2 (√2 defined).
- What value do the traps force? → Ch 2 (forcing theorem).
- What does the Babylonian sequence approach? → named in Ch 2;
  convergence proved Ch 3 (known endpoint) and Ch 4 (MCT).
- Roots, powers → Ch 2 (defined in the algebraic track).
- What does Napier's moving point mean? → Part II (dy/dt = −ky).
- Can the table be filled in between the integers? → Ch 2 in principle
  (aˣ denotes), Ch 3–Ch 6 in practice (the thread's carried question).
- Polygon area from the axioms → paid *in-chapter*, homework series
  (house pattern: main text defers, homework proves the tools
  suffice).
- Whether the (L4) debt is named on the page here — OPEN (see
  `axiomatic-measurement.md`, still-open list).

**Debts cashed**: none. The foundation only borrows.

**Deliberate repetitions**:

- Babylonian sequence: three visits across Part I (Ch 1 inequalities →
  Ch 3 known-endpoint verification → Ch 4 MCT re-proof), each visit
  showing progress. Do not consolidate.
- Measurement axiomatization: reprised for area-under-a-graph at
  integration (the designed repetition, `axiomatic-measurement.md`
  downstream consequences).
- Naive sup-powers (if included): becomes verbatim the existence proof
  for the exponential interface later (`axiomatic-functions.md`,
  specimen 1). Practice now, witness later.

## Status

- 2026-08-18 (second session): split confirmed in reallocated form;
  measurement pulled pre-axiom; language material → unnumbered opener;
  cardinality → Ch 2 twist. See `part1-chapters.md`.
- 2026-08-18 (story discussion): naming-engine mechanism adopted;
  augmentation framing (one world + extra existence-data, not rival
  worlds); two pillars adopted (doubling the cube, squaring the
  circle); IVT/EVT forward-glance IN (shows the problem's long
  standing); growth/process measurement OUT of the wish list.
  Reminder: border rules organize, they do not ban — see
  `part1-philosophy.md` policy note.
- OPEN: internal section split (the next planning discussion).
- ~~OPEN: where the sequence material sits; how much formalism~~ —
  **resolved 2026-08-20**: its own section, second-to-last, feeding the
  diagnosis; formalism is the definition plus the four notations and
  nothing else. See the infinite-process bullets in Goals.
- 2026-08-20 (unification pass): the infinite-process section adopted
  in Steve's order (processes → sequence → notation); series, products
  and continued fractions introduced HERE as notations for one object,
  so they are never "new" later; Zeno and Viète adopted; the ladder of
  namelessness replaces the two-severity-levels candidate.
- OPEN (Steve): opening computation; the example the chapter is
  remembered by; the decimals-shock
  candidate; severity-levels framing; reveal-then-shock order
  (working assumption, unconfirmed).
- OPEN: (L4) debt named on the page here or not.
- ~~OPEN: any function-interface statement in Ch 1~~ — resolved
  2026-08-20: **pure practice**, no interface stated. See
  `exponential-thread.md` (D1) and the four stations above.
- 2026-08-20 (exponential-thread rewrite): fork 5 resolved — the
  thread starts here as history and practice; four stations adopted
  (AO 6770, Stifel, Oresme, Napier's debt); the λόγος callback adopted.
- TODO: verification sweep of the exports list against the outline
  files.
