# Ch 12 Purpose — Elementary Functions (the stories collected)

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Status: **PROVISIONAL DRAFT** (2026-08-21, fifth session — written
ahead of full sign-off; Steve: "we can write them FOR NOW, and come
back to revise"). What carries real adjudication from the discussion:
the chapter is preserved (retirement considered and declined), the
framing is Steve's own wording, arc functions moved upstream,
sinh/cosh in, the plain-language rule. The assembly as a whole awaits
Steve's revision pass. Shorthands are content labels, NOT titles.

## The framing (Steve's, recorded in his terms)

> Collect the bits and pieces of the stories of the functions we have
> built across the book, and assemble a clean collection. The
> functional-equation and simple-differential-law characterizations
> become **new possible definitions — more abstract, but equivalent
> to the original concrete goals.** The abstract definitions are the
> means to transport these ideas to bigger worlds. And the
> equivalence is not free: **continuity is essential to some of it.**

So each section collects one function's whole story — everything the
history built, the simple law it obeys, and the theorems saying the
law could have been the definition. The equivalence theorems are
short *now* because earlier chapters did the work: this chapter
proves one-line theorems joining things already built.

## Goals

### The part-level job

- Give the functions their names. H, A, T, L, E were built and used
  namelessly; here they become log, arcsin, arctan, and the
  exponential family — with every earlier sighting identified as one
  object.
- Complete trigonometry: invert Ch 11's arc function, and let
  uniqueness deliver every law at once — the moment trig's tour has
  been waiting for since Ch 2.
- State the abstract definitions and prove them equivalent to the
  concrete constructions — and show, via the reversal, that the
  equivalence hangs on continuity.
- End Part II's theory: after this chapter only the celebration (Π)
  remains.

### Exports (each with its clients)

- log (= H = exp⁻¹, with L(a) = log a): → Π (Stirling ★), everything
  after.
- sin, cos, tan, arcsin, arctan with all laws, values, periodicity,
  and series: → Π (everything), the returned exercise packet.
- log 2 named (Ch 11's H(2) collapse gets its word): the
  rearrangement scandal's value, finally speakable.
- sinh, cosh (decided in): the other differential law y″ = +y; the
  hyperbola's pair.
- The classification of E(x+y) = E(x)E(y) with regularity, and its
  failure without: → Part III revisits (the thread's pass 3).
- The equivalence pattern itself: → Part III, where the abstract
  definitions are the ones that travel.

### Exit state

The reader owns every elementary function several ways at once —
by construction, by law, by series — knows the ways agree and why,
knows the agreement needs continuity, and has met the functions that
obey the law *without* continuity: monsters no one can exhibit.

### Non-goals and borders

- No new machinery: every proof runs on Chs 8–11 plus Part I.
- No π computations (Π's).
- No general theory of function spaces; the transport of the abstract
  definitions to bigger worlds is a closing remark with Part III's
  address on it, not a section.
- Plain-language rule (Steve, 2026-08-21): the chapter's concepts are
  stated concretely — "the law could serve as the definition," "the
  stories collected" — no invented terminology.

## Story

1. **The exponential and the logarithm, collected.** The one-line
   theorems: H is increasing (H′ = 1/x); H(aˣ) = L(a)·x (chain rule +
   the workhorse), so **H(a) = L(a)** and **H = (eˣ)⁻¹**. Now name
   it: log. Every sighting unified on one page — Briggs's algorithm
   (Part I ★), the slope at zero (Ch 9), the divisor in the Riemann
   sums (Ch 10), the hyperbola's area with its twice-proved law
   (Ch 10–11), the alternating harmonic sum = log 2 (Ch 11) — one
   function, met six ways across five chapters. The debts paid by
   name: Napier (his kinematic point, finally identified), Briggs,
   Saint-Vincent. Euler's §122 as history: the ceremony was the
   selection k = 1, and the reader watched both sides of it (Ch 9's
   slope, Ch 10's integral). aˣ = exp(x log a). The law-definitions
   stated with their equivalences: f′ = cf classifies (posed in
   Ch 9 — recommendation on record: proved here); the functional
   equation with monotonicity recalls Ch 2's classification.
2. **Sine and cosine, completed.** Invert Ch 11's A: sine is the
   height at a given arc (monotone inverse theorem); cos; the ODE by
   the inverse rule; **uniqueness delivers every law at once** —
   addition formulas, periodicity, special values — the arrival
   trig's thin tour has pointed at since Ch 2 (the two routes to
   uniqueness — the energy argument vs Ch 9's Taylor machine — are
   the standing fork; the Taylor route also hands over the series).
   The geometric agreement: the analytic sine is the circle's own
   sine — the Ch 2 ★'s P(θ), certified. T inverted and named:
   arctan. The deferred "returns when sin exists" exercise packet
   from Ch 9 lands here; the Archimedes-spiral ★ (subtangent =
   circumference, by parametric differentiation) is available here
   or in Π.
3. **The hyperbola's pair (decided in).** sinh and cosh: the other
   simple differential law (y″ = +y); definitions from exp,
   identities in parallel with §2; the parameter is the hyperbola's
   *area* — which is H's geometry, tying the chapter's two conics
   together (circle measured by arc, hyperbola by area). ⚠ the
   area-parameter claim needs writing out; Lambert history ⚠.
4. **The reversal: the equivalence is not free.** Keep the law, drop
   continuity — and the abstract definitions stop agreeing with the
   concrete ones. The classification: every solution of
   E(x+y) = E(x)E(y) is e^(kx) **or its graph is dense in the
   plane** (the choice-free branch — state this one); continuity at
   a single point, or monotonicity or boundedness on any interval,
   restores everything; continuous ⟹ C^∞ by the FTC bootstrap. The
   history is real: Cauchy 1821 solves the equations under
   continuity; Darboux 1875 weakens it to one point; Hamel 1905
   builds the monster — eighty-four years to learn what one word was
   buying. The trig monsters are the exponential's, pulled back —
   the two threads share their pathology. No explicit monster can be
   written down (the Solovay caveat, phrased per
   `sources/exponential-and-log.md` — do not overstate). Echo of
   Ch 2's twist: name everything, then meet what cannot be named.
5. **★ Gamma (OPEN, pending audit).** The factorial table does not
   determine a function; the recurrence still doesn't; log-convexity
   does (Bohr–Mollerup). Euler's integral as the witness — improper
   integrals ✓, convexity ✓, log ✓ all in hand. Bookends the
   Functions chapter's interpolation set-piece. Leave-out-able.
   Note (2026-08-21, research pass): **Γ(1/2) = √π is NOT proved
   here** — it follows by substitution from the Gaussian integral,
   which Π proves via the Wallis squeeze; if Gamma lives, its √π
   moment lands in Π.
6. **Closing remarks.** The transport: the concrete definitions
   cannot leave the real line — compound interest and circles don't
   generalize — but E′ = E, the series, and the laws go anywhere;
   that is what the abstraction buys, and Part III spends it
   (exponentials of bigger things; the thread's pass 3). And
   possibly the Liouville remark (if not placed in Ch 11 §3): some
   integrals provably cannot be written in elementary terms at all —
   cited, 1835 ⚠ — the honest reason the book had to keep inventing
   names.

### Prelude brief

The chapter nearly narrates itself: practice = the whole book so far
(each function's construction story IS the practice); deferred
question = what are these things, really? (asked implicitly every
time a nameless object appeared); reckoning = the laws as
definitions, the equivalences; door = transport, and the monsters.
Keep it short — the material is the reader's own memory.

## Ledger

- Imports: Chs 8–11 entire; Part I's classifications (Ch 2), series,
  and the ★ material (Briggs, P(θ), Lipschitz).
- Cashes: every outstanding name; Napier (final); the exponential
  thread's second pass (the reversal — its designed terminus:
  "pass 2 must satisfy on its own"); trig's law arrival (the tour
  rule's promised event); the f′ = cf question from Ch 9 (if the
  recommendation stands); the Ch 9 deferred exercise packet; the
  spiral ★ (or → Π).
- Opens: none that Part II must pay. Doors with addresses: transport
  (Part III; the thread's pass 3); Liouville (cited only); the
  boundary/uniform questions were already Part III's.
- Deliberate revisits: Ch 2's twist echoed (§4); the two conics
  joined (§3); the Functions chapter's interpolation set-piece
  bookended (★Gamma, if in).

## Historical research brief

Mostly already sourced: `sources/exponential-and-log.md` Arc 4 covers
Cauchy/Darboux/Hamel/Solovay with its TRAPS list; the ceremony (§122)
is verified there. New campaigns needed: sinh/cosh history (Lambert,
Riccati ⚠); Bohr–Mollerup (⚠, only if Gamma is in); Liouville 1835
(⚠, only if the remark is placed here); trig-side history is covered
by Ch 7's brief (Ptolemy) and the standing trig-trace items.

## Status

- Decided (fifth session): the chapter is preserved (retirement
  considered, declined — the reversal needs this home, Calc's
  identity needs protecting, the course needs the rhythm); the
  framing in Steve's terms above; arc functions upstream in Ch 11;
  sinh/cosh in; the plain-language rule.
- OPEN (Steve): Gamma ★ in/out (audit first); the Liouville remark's
  home (here vs Ch 11 §3); f′ = cf posed-in-9-proved-here
  (recommendation on record); the trig uniqueness route (energy vs
  Taylor — the Taylor route also delivers the series); whether the
  spiral ★ lands here or in Π; the example the chapter is remembered
  by; title ("Elementary Functions" is a candidate, possibly too
  narrow — Steve's call, Steve's voice).
- Resolved by architecture: `axiomatic-functions.md` fork 3
  (wish-first vs build-first for trig) — the construction now lives
  in Ch 11 (the arc function), so this chapter states the law and
  inverts the witness; the old fork's content is subsumed.
- ⚠ VERIFY: the H(aˣ) = L(a)x one-liner (write out); sinh/cosh
  area-parameter; the reversal's write-outs are already queued in
  the sources file; Gamma/Liouville items only if adopted.
