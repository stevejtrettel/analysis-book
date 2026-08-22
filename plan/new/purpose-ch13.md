# Ch 13 Purpose — Pi (the finale)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **proposed 2026-08-21 from the finale discussion; the chapter's
components are Steve's (decided), the four-act arc and its castings are
a proposal awaiting adjudication.** Chapter shape authority:
`part2-chapters.md` (Pi is the seventh Part II chapter, Ch 13 under the
current numbering). Shorthands are content labels, NOT titles.

Decided components (Steve, 2026-08-21): series that compute π; the
other π processes that have come up in the book; a proof of
irrationality. Basel: Steve open to fitting it; the audit
(`part2-chapters.md` finding 8) says it fits as the climax at ~one
section's marginal cost.

## The sentence (draft shorthand, wording is Steve's)

> The oldest computation in mathematics, run to completion — and past
> it. π computed at ever-accelerating rates, discovered living among
> the odd numbers and the primes, and known at last to be no ratio.

Twin doctrines the chapter delivers:

- **Certification, total:** nothing in the chapter is on loan. Every
  formula in all four acts is licensed by the reader's own theorems;
  the only unproved statements are three door-marked ones with dates
  (Lindemann 1882; Ramanujan 1914; the AGM). April's version had Basel
  as a placeholder and Wallis hanging off an unproved product; this
  version has no placeholders. The book about productive deferral ends
  with all debts paid and the remaining IOUs labeled.
- **Revelation:** the acts escalate from *faster* to *stranger* — π
  leaves geometry and turns up in pure arithmetic. Rate is Act II's
  through-line; escape-from-the-circle is Act III's.

## Goals

- **Exports**: none forward (terminal chapter) — its exports are
  backward: the π strand, the rate doctrine, the computational strand,
  and the three-constants arc all close here.
- **Skills**: rate analysis as practice (error bounds per method,
  digits per term); using Abel's theorem to *diagnose* a slow series;
  acceleration by moving off the boundary; applying best-approximation
  theory; a full irrationality proof at Part II level.
- **Strand closures**: π (Ch 1 traps → Ch 4 Measurement → here);
  Wallis (Part I §4.1 convergence → value here); Viète (cited closed);
  ζ(2) (Part I Ch 6 mystery → Basel); the fractional binomial (Part I
  Ch 6 → Newton's 1665 computation); continued fractions (Part I ★ →
  22/7 and 355/113 explained; Lambert); the computational strand
  (crescendo: the reader ends having personally computed π to ~15
  digits by hand-scale methods they proved).
- **Meta-lesson**: the thesis performed at chapter scale — an ancient
  practice, each deferral productive, each new language buying both a
  certification and a door; and *rate is a question the language
  creates* (Part I's line, cashed for the last time).
- **Exit state**: the reader can compute π to any accuracy by several
  licensed methods, can say why each is as fast as it is, knows π is
  irrational with a proof they own, and knows exactly which statements
  about π remain beyond the book — with dates.
- **Non-goals / borders**: no Fourier, no complex analysis, no
  Weierstrass sine product (Part III door as planned); no
  transcendence proof (Lindemann cited, as in Ch 1); a progression,
  not a tour — the ledger's warning ("the full list is too much merely
  because every item concerns π") is this chapter's design constraint.

## Story — four acts (PROPOSED)

Each act ends higher than the last: geometry → computation →
arithmetic → the number itself.

### Act I — One number

Short (a page vs a full section is OPEN). The handoff: area constant =
perimeter constant via calculus (April §9.4's Archimedes theorem,
relocated), on top of Integration's polygon-agreement theorem.
Everything the book has called π is one number. Consolidation, not
climax — exists so the rest of the chapter needs no footnotes.

### Act II — The hunt (rate)

The historical computation as a single story: every acceleration is a
theorem.

- Opening foil (one paragraph): Newton's method on cos x = 0 is
  quadratically fast and computationally circular — each step needs
  trig values to high precision. We need formulas that *output* π.
  (April §9.5's opener, demoted to a foil.)
- **The inverse-selection beat** (Steve, 2026-08-21): the functions
  that output π are the inverses the book already owns — and the
  obvious inverse is the annoying one. arcsin(1) = π/2 sits at an
  improper endpoint with an irrational integrand (April's
  arcsin-Riemann-sum beat, cut for exactly this reason, survives as
  the one-line "why not"); the RIGHT inverse is the tangent's —
  rational integrand, proper at x = 1, arctan(1) = π/4. The annoying
  inverse is not discarded: Newton's ★ below IS the dodge (evaluate
  arcsin at ½ — small input, no endpoint), so the annoying-inverse
  and right-inverse become the ★/main-line pair.
- Candidate hinge line, wording Steve's: from EF onward π is the
  *input* to every trig function — the period, the zeros — while its
  certified value entering this chapter is still Archimedes'
  3¹⁰⁄₇₁ < π < 3⅐ from Ch 4. The book's most-used constant is its
  least-computed; this act resolves the tension.
- Baseline: Archimedes' doubling — error ∝ 4⁻ⁿ, ≈ 0.6 digits per
  doubling; the reader certified this machine in Part I Ch 4.
- The series revolution: arctan as integral (anonymous specimen from
  The Calculus, named now); the Madhava–Gregory series; **Abel's
  theorem used to diagnose the slowness** — x = 1 is the boundary of
  the disk, ~500 terms for two digits. Beautiful and useless, and the
  chapter can say *why*.
- Leaving the boundary: Madhava's own arctan(1/√3) (π/6, terms ∝ 3⁻ᵏ,
  his 13 digits ~1400 — the thesis's best single witness, placed at
  last) and his correction terms (rate-consciousness centuries early);
  then Machin 1706 — 1/5 and 1/239, nine terms for fifteen digits.
- Naming beat (⚠ verify): the symbol π first appears in print in
  William Jones's 1706 book — reportedly the same year as, and
  printing, Machin's 100 digits. If it checks: the name and the
  hundred digits arrive together (naming doctrine as punchline).
- Shanks coda (April's remark, kept): 707 digits by hand, 1873; ~180
  wrong, caught by desk calculator in 1944. Rate without checking.
- ★ **Newton, 1665** (guided exercise; whether this is the ★ or the
  act's main line is OPEN): Part I Ch 6 proved the exponent-½ binomial
  series by squaring; the SAME Vandermonde argument proves the
  exponent-(−½) case (the two series multiply to 1); term-by-term
  integration (The Calculus) gives the arcsin series; arcsin(½) = π/6
  converges like 4⁻ⁿ. Essentially Newton's route to 15 digits at 22,
  with the "ashamed to tell you to how many figures I carried these
  computations, having no other business at the time" letter
  (⚠ verify quote and exact route). The fractional binomial came OUT
  of Wallis's circle problem; here it returns to the circle and wins.

Exercise design goal for the act: the reader out-computes Viète and
Newton with theorems they proved.

### Act III — The escape (π without the circle)

- **Wallis**: π from ratios of integers alone, via the cosine-power
  reduction formula; the value pays Part I §4.1's deferred debt.
- **The Gaussian integral — the Wallis integrals' third client**
  (adopted 2026-08-21 after the research pass; the more elementary
  proof, replacing the differentiation-under-the-integral route,
  which is OUT — see `purpose-ch11.md`): from Part I's inequalities
  1 − x² ≤ e^(−x²) ≤ 1/(1+x²), raise to the n-th power and integrate
  over [0,1]; the outer integrals become the cosine-power integrals
  Iₖ under substitutions this chapter already owns, the middle
  becomes the Gaussian, and the Iₖ asymptotics (equivalent to the
  Wallis product) squeeze it shut: **∫₀^∞ e^(−x²) dx = √π/2** — π
  named, no new machinery, and the history exactly right: this is in
  essence **Laplace's original 1774 proof**, run through Euler's
  cosine-power formula. Corollary by substitution:
  **Γ(1/2) = √π** — the Gamma ★'s payoff moment lands here if Gamma
  lives (the ★ itself is EF's). ⚠ verify Laplace 1774 and the Euler
  formula at source; ⚠ chase the modern chain (Conrad's Gaussian
  survey and its cited asymptotic-route reference).
  Placement note (Steve, 2026-08-21): kept here FOR NOW; when Part
  III is written, the Gaussian may move there for storytelling
  purposes — or be done a second time (the house double-visit
  pattern would permit it). Not a commitment either way.
- **Basel — the climax**: Daners's proof on the same integrals
  (Aₙ = ∫cos²ⁿ), telescoping identity (Part I technique) + the
  concavity bound sin x ≥ 2x/π (Differentiation). Cashes Part I Ch 6's
  planted mystery: ζ(2) two ways with no trace of π; the missing third
  expression arrives, and it has π in it. Source on file
  (`part2-scope-and-daniell.md`: Daners, Math. Mag. 85 (2012)).
- **The reveal behind it, nearly free**: combine Basel with Part I
  Ch 6's Euler product — both sides reader-proved — to get
  π²/6 = Π p²/(p²−1). **The circle meets the primes.**
- ★ Coprime density (candidate, cost unaudited): two integers are
  coprime with density 6/π². The rigorous route is inclusion–exclusion
  with a dominated-convergence finish — plausibly legal with the
  book's tools, but ⚠ must be written out before it is promised; the
  fallback is a stated remark with the heuristic
  (independence across primes, licensed by nothing — labeled as such).

### Act IV — The number itself

- **The continued fraction of π** (uses Part I's ★ CF theory; the CF
  itself is descriptive, not a computation method — say so):
  [3; 7, 15, 1, 292, …] explains the ancient fractions. 22/7 is a
  convergent — *why* Archimedes' bound was so good; 355/113
  (Zu Chongzhi, ~480 AD ⚠) is freakishly good because of the 292.
  Adds China to the book's cast of practicing civilizations. Sets up
  Lambert.
- **π is irrational.** Lambert 1761, via the continued fraction —
  cited, exactly parallel to Euler's 1737 CF proof for e (the Part I ★
  section makes both remarks available). The proof given: **Niven** —
  audited legal (`part2-chapters.md`): the polynomial xⁿ(a−bx)ⁿ/n!,
  integer-value lemma, sin's ODE and values at 0 and π, one explicit
  antiderivative checked by FTC II, n! beats cⁿ. ⚠ write out against
  the exact toolkit; verify Niven 1947 / Lambert 1761.
- **The door with a date**: Lindemann 1882, transcendence, squaring
  the circle impossible — Ch 1's pillar, cited on nearly the book's
  first pages, now standing at the end with its context. Beyond-remark:
  Ramanujan 1914 (8 digits/term), Chudnovsky, the AGM (digits double
  per step) — the hunt continues past the book's edge.
- Raw material, Steve's to use or not: the book's first theorem is
  "√2 is not a ratio" and its last is "π is not a ratio" — the same
  theorem about different constants, opposite valence, twenty-two
  centuries of technology between the proofs.

### Prelude brief

Four beats available at chapter scale: practice = the hunt itself
(Babylon-to-Machin computation); deferred question = what IS this
number (posed in Ch 1, deferred through the whole book); reckoning =
the licensed formulas and the irrationality; door = transcendence and
the modern algorithms. The chapter nearly IS its own prelude — keep
the prelude short or fold it into Act I. TBD.

## Ledger

- **Imports**: Integration (agreement theorem, reduction-formula
  machinery via IBP from The Calculus, improper integrals); The
  Calculus (term-by-term integration, Abel, the anonymous arctan
  specimen); Differentiation (convexity for the concavity bound);
  Elementary Functions (sin/cos with values and ODE); Part I (rate
  doctrine, telescoping, Euler product, fractional binomial ★, CF
  theory ★, the ζ(2) mystery, Wallis convergence, Viète closed).
- **Debts cashed**: Wallis's value (Part I §4.1); ζ(2)'s third
  expression (Part I Ch 6); Madhava placed (sources file, "not yet
  placed"); the π strand entire (Ch 1 → Ch 4 → here); Ch 1's
  squaring-the-circle pillar contextualized (cited, not proved — as
  always).
- **Debts opened**: none (terminal). Doors named with dates:
  Lindemann 1882; Weierstrass sine product (Part III, as already
  planned); Ramanujan/AGM (beyond the book).
- **Deliberate revisits**: Archimedes (fourth appearance of the
  doubling machine: Ch 1 traps, Ch 4 measurement, Integration
  agreement, here as rate baseline); Newton (Part I Ch 6 binomial →
  Act II ★); Euler (product → Act III; the CF-for-e remark → Act IV
  parallel).

## Cuts and demotions (proposed)

- Newton's-method-on-cos: demoted to Act II's opening foil, one
  paragraph.
- April §9.5's arcsin Riemann-sum beat: cut (Machin supersedes it).
- **Stirling ★: flagged for a decision.** Magnificent, uses Wallis —
  but it is about n!, not π, and dilutes a chapter fighting for
  progression. Options: EF ★ alongside Gamma if Gamma is adopted;
  stay here as ★ accepting the dilution; cut to exercises. Steve's
  call; interacts with the Gamma decision (`part2-chapters.md` open
  joint 3).
- Weierstrass sine product: stays deferred (Part III), unchanged.
- The n-ball orphan GE: possible ★ parking here; low priority.

## Status

- Components decided (Steve, 2026-08-21); four-act arc PROPOSED,
  awaiting adjudication as a package.
- OPEN (Steve): Newton's 1665 computation as Act II's ★ or its main
  line (arctan main line is cheaper and carries Madhava/Machin; the
  binomial main line carries the Part I loop and the quote).
- OPEN (Steve): Basel in (recommendation: yes, as the Act III climax).
- OPEN (Steve): the coprime ★ — worth its write-out cost, or a labeled
  remark, or out.
- OPEN (Steve): Stirling's home (above).
- OPEN: Act I's length (page vs section); prelude folded or separate.
- OPEN: the example the chapter is remembered by; title (Steve's
  voice — "Measurement of the Circle" is taken by Ch 4; the naming
  principle suggests naming for the program).
- ⚠ VERIFY before print (add to a sources pass): Jones 1706 (symbol π;
  relation to Machin's 100 digits); Newton's "ashamed" letter and the
  exact 1665 route; Madhava's arctan(1/√3), 13 digits, correction
  terms (partially covered in `sources/series-products-and-primes.md`);
  Zu Chongzhi 355/113 ~480 AD; Shanks 1873 / Ferguson 1944; Lambert
  1761; Niven 1947; Ramanujan/Chudnovsky/AGM rate claims; π's CF
  values; the exponent-(−½) Vandermonde extension (write out — new
  mathematics, not just sourcing).
