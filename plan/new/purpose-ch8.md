# Ch 8 Purpose — Continuity (respects arrival)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **adjudicated 2026-08-21** — definition philosophy, section
shape, and core/optional dispositions decided in the same-day
discussion recorded in `part2-chapters.md` (Addendum). This file is
the purpose capture; the section list below is the working plan, its
internal granularity still adjustable. Shorthands are content labels,
NOT titles.

## The sentence (draft shorthand; wording is Steve's)

> **A function is continuous when it respects arrival**: whenever the
> inputs arrive at a, the outputs arrive at f(a).

Companion, for the chapter's second movement:

> Respecting arrival is qualitative. The practical question is
> quantitative — *the output must be correct to ε: how accurate must
> the input be?* — and ε-δ is the **tolerance-transfer** form of
> continuity.

## Goals

### The part-level job

- Pay the Functions chapter's first debt: coherent variation, made
  precise. Also its extrema debt (a maximum need not exist → EVT gives
  the conditions under which it must).
- Cash Part I's calculus forward-glance: Ch 1 showed IVT and EVT fail
  over ℚ; here both are proved, with completeness visibly the engine
  (bisection = nested intervals; EVT = Bolzano–Weierstrass). Bolzano
  1817, seeded in Ch 2's promotion history, gets his theorem.
- Run entirely on Part I's engine: the sequential definition means the
  chapter introduces **zero new quantifier machinery** — it is pure
  payoff of the ε-N training. ε-δ enters as a proved characterization
  with its own (quantitative) job, not as a new foundation.
- End on the monsters, opening Differentiation: coherence does not
  contain the tangent.

### Exports (each with its clients)

- Sequential continuity + the bridge techniques (build-a-bad-sequence
  from failure) → every later chapter.
- Limits of functions, lean (definition, sequential form, continuity =
  limit equals value) → the derivative's definition (Ch 9).
- Algebra and composition of continuous functions → polynomials,
  rational functions, integrands everywhere.
- ε-δ equivalence + the tolerance concept → Differentiation (Lipschitz:
  MVT computes the exchange rate, δ = ε/K), Integration (mesh).
- Uniform continuity + **Heine–Cantor** → Integration's forcing proof
  (its one indispensable client).
- Continuity of $|f|$, $\min(f,g)$ and $\max(f,g)$ (proved exercises,
  deliberately not promoted) → Integration's absolute bound and Part III's
  Daniell lattice manipulations. Protect the results, not their tier.
- Extension theorem (GE) → Part III's dense-subspace applications
  (revisit from higher vantage, per the border rule).
- IVT → EF (surjectivity of exp for log's domain; arcsin's range);
  Darboux's-theorem parallel in Differentiation.
- EVT → Rolle/MVT.
- Image theorem ([a,b] → [m,M]) → inverse-theorem bookkeeping; EF's
  log domain.
- **Monotone inverse theorem** → EF twice (log = exp⁻¹; sin from
  arcsin) and Differentiation (inverse derivative). Load-bearing.
- The monotone lemma, exactly as far as needed: monotone + dense range
  ⟹ continuous → the touchstone below.
- **aˣ is continuous** → Integration (∫aˣ), EF; the exponential
  thread's Part II continuity station ("from its construction").
- The sawtooth s(x) = dist(x, ℤ), manufactured in the gluing GE → the
  chapter's own non-examples (s(1/x), x·s(1/x)), Takagi, and the
  book-wide trig-free substitution policy.

### Skills

Proving and refuting continuity via sequences; the tolerance game
(finding δ(ε), recognizing point-dependence); using density;
subsequence extraction as a proof pattern (EVT, Heine–Cantor,
inverse); recognizing when [a,b] upgrades local to global.

### Exit state

The reader can certify or refute continuity fluently with sequences;
can transfer tolerances and knows the transfer rate varies with the
point except when it doesn't (and exactly when that is); owns the
three interval upgrades; owns aˣ as a continuous function by a real
theorem about their own construction; and knows — by holding the
monster — that coherence does not contain the tangent. The correlation
question about limits of tables is posed and visibly unanswered.

### Non-goals and borders

- No power series (→ The Calculus).
- No theory of function-sequence limits: **pose, license, defer** per
  the tables-vs-points border rule (`part2-chapters.md` Addendum). The
  general answer is a Part III door.
- No uniform convergence anywhere.
- No derivative content beyond the monsters' diagnosis (→ Ch 9).
- No discontinuity taxonomy in main text (GE).
- Trig-free: only constructible trig values exist at this point; the
  sawtooth policy replaces every sin-based example (audit finding 3).
- **No foundational footnotes**: sequential ⟹ ε-δ is proved the
  standard way, without a countable-choice remark (decided 2026-08-21;
  the observation lives in the planning record only).

## Story

Five sections. The arc: the definition costs nothing (Part I paid for
it) → the practical question raises the stakes → the interval delivers
three theorems → the reader's own function is certified → the monster
takes the next chapter's subject away.

1. **Respects arrival.** Which functions respect it? The step function
   doesn't; Dirichlet respects nothing (density + sequences — whether
   Dirichlet debuts here or in the Functions chapter is that file's
   open question). The library falls out of Part I's limit laws in
   one-line proofs. Function limits defined leanly.
2. **Tolerance transfer.** The quantitative question, asked as the
   computational strand asks it: the output must be correct to ε — how
   accurate must the input be? ε-δ proved equivalent to the
   definition; the worked estimates (x², √x, 1/x — April §6.1's
   material, landing with a purpose); the discovery that δ varies with
   the point; uniform continuity as *one exchange rate honored across
   the domain*, with trig-free non-examples; Lipschitz as a remark
   (Differentiation will compute the rate). GE: extension theorem.
   ⚠ The table-maker framing (to how many places must the argument be
   carried?) needs a sources pass before any historical claim.
3. **What the interval forces.** Three upgrades of local to global,
   presented as one phenomenon: **values** (IVT — via bisection, the
   trapping spine's fourth appearance; Bolzano's sup proof as the
   historical GE), **extrema** (EVT via B–W), **tolerance**
   (Heine–Cantor). Applications kept honest: odd-degree polynomials,
   fixed points; nth-roots-via-IVT is a REPROOF of Ch 2 and is said to
   be one (a remark, not an application). Forward pointer stated: the
   third upgrade is the theorem Integration runs on.
4. **Monotone functions and inverses.** The inverse theorem (EF's
   workhorse, named as such); the monotone lemma; climax — **aˣ is
   continuous**: monotone, with range dense because a^(1/n) → 1
   (Part I). The reader's own sup-built function, certified.
5. **Monsters.** Two specimens, both limits of tables, each losing a
   different virtue in the limit (the zigzag moved here from The
   Calculus, fifth session — Steve: the warning belongs early):
   **the zigzag** — a pointwise limit of continuous functions that is
   not even continuous (the correlation question posed with the
   specimen on the page; the licensed fix is Ch 11's); and
   **Takagi** — assembled from the sawtooth, continuity by Tannery
   (the chapter's own definition plus Part I's own interchange
   theorem, nothing else), nowhere-differentiability bare-hands,
   partial sums differentiable a.e. and the limit nowhere.
   Weierstrass 1872 mentioned; Hermite's "lamentable plague" line if
   it survives verification. Ending unchanged: coherence does not
   contain the tangent — and the next chapter characterizes it
   anyway.

### Prelude brief (four beats, sketch)

Practice — the IVT used as obvious for centuries (root-finding,
curve-crossing; Euler's functions never misbehaved). Deferred question
— true of *which* functions, and why? Reckoning — Bolzano 1817, Cauchy
1821, Weierstrass's formulation. Certification and door — the ancient
confidence becomes three theorems, and the same rigor reveals the
monsters (Weierstrass 1872): not wreckage but new territory. April's
`06-continuity/00-history.md` is raw material; adapt from its
crisis-first shape to the four beats.

## Ledger

### Imports

- Part I: ε-N and limit laws; density; nested intervals (bisection);
  Bolzano–Weierstrass; dominated convergence/Tannery (Takagi);
  a^(1/n) → 1 (Ch 3 fundamental limits); the sup-built aˣ (Ch 2).
- Functions chapter: the three debts; whole-function vocabulary
  (monotonicity, boundedness, extrema as pre-continuity notions).

### Debts cashed

- Coherent variation (Functions debt 1) — the chapter's subject.
- Extrema (Functions diagnosis) — EVT.
- Ch 1's IVT/EVT-fail-in-ℚ forward-glance — both proved, completeness
  visibly doing the work.
- Bolzano 1817 (Ch 2's promotion history) — his theorem, at last.

### Debts opened (→ where paid)

- The tangent (made vivid by Takagi) → Differentiation, immediately.
- The correlation question (limits of correlated tables) → licensed
  for power series in The Calculus; answered in general in Part III
  (the door: rescuing Cauchy's 1821 theorem requires distance between
  functions).
- Thomae's integrability → Ch 10's door-GE candidate (the traps
  close, stated predicate-free; adoption open) — else Part III with
  Riemann's question.
- Takagi's second act → the FTC callback (a continuous function that
  is the derivative of its integral while having no derivative of its
  own to find; per `purpose-ch7.md` deliberate revisits).

### Deliberate revisits

- The trapping spine, fourth appearance: Ch 1 traps → Ch 2 NIP →
  Ch 3 decimals → bisection IVT here.
- The exponential thread's continuity station (aˣ, §4).
- The sawtooth: built here, reused for Takagi here, and available
  book-wide as the trig-free oscillator.

## Dispositions (from the core/optional audit — authority:
`part2-chapters.md` Addendum A4)

- GE roster: discontinuity taxonomy; Thomae; gluing-upgraded-to-
  sawtooth; bisection; extension theorem; sequential characterization
  of uniform continuity; Bolzano's sup-proof of IVT (historical).
- Exercises: one-sided-limit apparatus; max/min/|f|; monotone
  structure theory beyond the aˣ lemma; continuous injective ⟹
  monotone.
- Remark only: nth roots via IVT (reproof of Ch 2).

## Status

- 2026-08-21 (part2-chapters Addendum): sequential definition primary
  (A1); tolerance-transfer framing (A2); uniform continuity in-chapter,
  early-not-last, Heine–Cantor as the third interval upgrade (A3);
  core/optional dispositions (A4); Takagi ends the chapter (open
  joint 2 resolved); no countable-choice footnote (Steve).
- 2026-08-21 (fifth session): the zigzag joins the monsters section
  (the warning belongs early — Steve); and DECIDED: continuity of
  power series is NOT proved here — this chapter poses with
  specimens, Ch 11 delivers the whole trilogy as one treatment.
- OPEN: whether §1 splits (definition vs library) — granularity call
  at section-writing time.
- OPEN (Steve): the example the chapter is remembered by — candidates:
  aˣ certified; the bisection run in ℚ converging to nothing (the
  candidate callback, itself unadjudicated); Takagi.
- OPEN: prelude length; whether the chapter carries a section rule in
  the Part I manner (none imposed; do not force one).
- OPEN (inherited from `purpose-ch7.md`): where Dirichlet debuts.
- OPEN (Steve): title.
- ⚠ VERIFY (chapter-local; the full queue is in `part2-chapters.md`):
  write out aˣ via monotone + dense range; write out Takagi via
  Tannery (continuity) and the bare-hands non-differentiability;
  Hermite quote; Heine–Cantor attribution; Weierstrass 1872; Takagi
  1901; the table-maker framing; Bolzano 1817 particulars (partially
  covered by Part I's sources).
