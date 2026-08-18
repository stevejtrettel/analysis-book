# Reaching for Infinity — Goal and Thesis

The founding document of the new plan (third edition). Every part plan,
chapter plan, and prelude gets tested against this. Drafted 2026-08-18 from
discussion; wording below is a draft for Steve to knock into his own words.

## The goal

An undergraduate real analysis text — rigorous and readable, every result
proved, every definition motivated — whose first realization is a
**one-semester course (Parts I–II, with marked optional material)** taught
in late 2026. The book stays full; the course is a visible path through it.

## The thesis

Most analysis books center the 19th-century crisis: foundations shaking,
rigor arriving as the rescue, the subject born from the wreckage. This book
tells a different story:

> Analysis is not the child of a 19th-century crisis. It is one of the
> oldest continuous practices in mathematics — Babylon iterating toward √2,
> Archimedes measuring the circle — and at every stage its practitioners
> deferred the deepest questions about infinity, because deferral was
> productive. The 19th century is the chapter of the tradition in which
> those questions were finally taken seriously, and the reward was double:
> the ancient methods were certified at last by the right language for
> number, and entire unexplored worlds opened. This book tells that whole
> story — and its reader, who has been doing calculus while deferring the
> same questions, is living the last chapter of it.

Unpacked:

- **A continuous practice, millennia long.** The ancients are protagonists,
  not pre-rigorous figures awaiting correction. Archimedes was rigorous —
  bespoke, per-problem rigor (his postulate, double-contradiction
  exhaustion). The modern language makes that rigor general and reusable:
  completeness is exhaustion, done once, for everything.
- **Deferral was productive, every time.** Exhaustion is a technology for
  *avoiding* actual infinity; it let the Greeks be rigorous without
  answering Zeno. Newton and Leibniz deferred what dx is — and got physics.
  Euler deferred convergence — and got more true formulas than anyone.
  Shelving the hardest question was, in each era, the fastest way forward.
- **The reckoning is the tradition's crowning move, not its rescue.** When
  the deferred questions were finally taken seriously, the reward was
  double: *certification* (MCT vindicates Babylon; completeness gives
  Archimedes' polygons their target; rectifiability makes "the circle has
  a length" a theorem) and *revelation* (uncountability, the monsters,
  function spaces, distributions — not wreckage, but the territory that
  taking-infinity-seriously earned). No Monsters, New Treasures, Infinite
  Riches.
- **Guardrails.** Not "only crisis" mode — the crisis is an episode inside
  the long story, and Euler is a hero whose reach exceeded the era's
  grammar, never a cautionary bungler. But also not triumphalist ("the
  ancients did it all, we merely respelled it") — the language earns its
  place by what the ancients could not do: rates, rearrangement,
  uncountability, and eventually Part III entire.
- **The student recapitulates the tradition.** They have been doing
  calculus for years — successfully, like Euler — deferring the same
  questions for the same good reason. This course is their 19th century.
  The book's implicit moral: the hard question you shelved is a door, not
  an embarrassment. (Candidate conceit for the preface.)

## Design consequences

These are the local rules the thesis imposes; part and chapter plans cite
them by name.

1. **Prelude template (four beats):** *the practice* (what the ancients
   could actually do — open with a computation that works) → *the deferred
   question* (what was shelved to make that progress) → *the reckoning*
   (taking it seriously) → *certification and the new door* (the old method
   vindicated; the unexplored world glimpsed). Every chapter prelude knows
   which deferred question it cashes and which door it opens. The Dec 2025
   `historical-intros-plan.md` (crisis-first template) is raw material
   only.
2. **Chapter rhythm: method → language → vindication.** Where possible,
   ancient/classical practice appears *before* the definitions that will
   certify it (as §2.1 already does: Archimedes' parabola and the
   Babylonian iteration before ε-N). A chapter with no practice attached
   is a diagnosis, not a fate.
3. **The constants strands are spine, not enrichment.** √2, π, e — three
   ancient computational achievements carried until the language catches
   up and certifies each. The `narrative/` threads are primary planning
   documents.
4. **Naming principle:** where a section realizes an ancient program, name
   it for the program ("Measurement of the Circle", not "Archimedes' π").
5. **Geometry is a stake in the ground.** Length and area defined via
   polygons early (currently §1.5) makes ℚ's incompleteness a crisis of
   *practice* — we cannot say what the diagonal measures — not of
   philosophy.

## Companion documents (planned)

- `mathematical-goals.md` — the mathematical goals and the proof
  ideas/techniques the book deliberately emphasizes and reuses. (Next
  discussion.)
- Part I and Part II plans, then chapter plans, built against this thesis.
