# Ch 6 Purpose — the arithmetic of the infinite

Goals-first workflow; see `purpose-ch1.md` header for the content rule.
Skeleton — to be filled in its own discussion. Adjudicated shape:
`part1-chapters.md`.

## Goals

- Seed (decided): infinite operations as arithmetic — rearrangement =
  commutativity; double sums = associativity/grouping; Cauchy product
  = distributivity; dominated convergence = limits through the
  operations. A number chapter, not a hinge (the hinge story was
  rejected 2026-08-18; the chapter's narrative identity is otherwise
  OPEN — see `part1-philosophy.md`).
- Exports (seed): dominated convergence as the tool Part II runs on;
  series machinery per the Part I exit contract.
- Skills / strands / meta-lesson / exit state: TBD.

## Story

- **The story (decided 2026-08-18, Steve's line): the arithmetic of
  infinite processes — how do we compute when we can't grasp the
  numbers.** After Ch 4–5 the reader owns numbers reachable only
  through their stages; calculating with such a number means doing
  arithmetic on the finite stages and asking whether the result can
  be trusted at infinity. Each law of finite arithmetic becomes
  conditional out there: true with a license, false without.
  Commutativity = rearrangement (unlicensed disaster: a conditionally
  convergent series reordered to any value); associativity/grouping =
  double sums (grids where row sums ≠ column sums); distributivity =
  the Cauchy product (unlicensed products of convergent series can
  diverge); and the master question — when does a limit pass through
  an infinite operation, i.e. when can two limits be swapped —
  = dominated convergence. The unifying answer: the license is
  essentially always the same, absolute convergence / domination.
- **Euler presides as the hero** (thesis guardrail): the man who
  computed as though every license were already granted and was
  nearly always right; the chapter *certifies* his instincts, never
  corrects them. Climax: the two most famous processes for the same
  number proved to agree — (1+x/n)ⁿ = Σxᵏ/k! — spending nearly every
  license the chapter issues.
- **April §5.2 (iterated limits) folds into the grouping/double-sums
  section** (resolves the coverage ledger's orphan): row-vs-column
  sums IS the two-limits swap; the general moral ("interchanging two
  limits is never free") is stated there, and Part II re-proves its
  own interchange theorems with named hypotheses.
- A number chapter to the end: the part opened unable to say what a
  number is; it closes calculating with numbers no finite expression
  can write down.
- **The chapter's cast and material (Steve, 2026-08-20): bring back
  actual computational things of Newton and Euler that we want to
  justify.** Ch 5 completes the theory of the single process; this
  chapter answers "what do we do with that?" by certifying the
  historical computations — Newton's series arithmetic (the line about
  infinite series being "the decimals of algebra" — ⚠ **UNSOURCED**:
  searched 2026-08-20, only paraphrase in circulation; find the actual
  sentence in *De analysi* or the *Method of Fluxions*, or drop it),
  Euler's calculations wherever the licenses reach.
- **The exponential climax — scope RESOLVED 2026-08-20 (D3): general
  x.** Forced, because Ch 4 now finishes the x = 1 identity; repeating
  it here would be repetition, and the general statement is a real
  promotion. Full design in `exponential-thread.md`:
  - **e^x = lim (1+x/n)ⁿ = Σ xᵏ/k!** for every real x. e^x is already
    defined (Ch 2's construction at base e, available the moment Ch 4
    names e). Route: the law of exponents gives E(r) = e^r on
    rationals; E is monotone directly from the series; e^h → 1 as
    h → 0 falls out of Ch 1's Bernoulli inequality; squeeze.
    ⚠ This route was worked out in discussion, not read anywhere —
    write the squeeze out before building on it.
  - **E(x)E(y) = E(x+y) for the series, by the Cauchy product.** So the
    law of exponents is proved TWICE in Part I, for two different
    objects, and the agreement theorem is the bridge — the
    representation-theorem pattern, as with decimals and continued
    fractions.
  - **Stage Euler's §§115–116 line for line.** He expands (1+kz/j)^j by
    the binomial, then passes to the limit term by term in a sum WHOSE
    LENGTH IS ITSELF GROWING. That one illegal step is exactly
    dominated convergence. The chapter certifies his instincts and
    corrects nothing — its stated aim, delivered against the primary
    text rather than a modern reconstruction. Payoff: his eighteen
    places (§122).
  - **Newton, *De analysi* (1669)** — the other historical derivation,
    and natural material here by the chapter's own definition: he
    integrates 1/(1+x) for Mercator's log series, then REVERTS THE
    SERIES to get 1 + y/1! + y²/2! + ⋯. The exponential series arrives
    as the inverse of the logarithm's, nothing to do with compounding.
    Series reversion is the most violent arithmetic-of-infinite-
    processes operation of the period.
- Opening question / prelude brief: TBD.

## Section plan (working, approved 2026-08-20)

Five sections; section n runs on section n−1, as in Ch 3. **The
machinery is April's Ch 5, essentially unchanged. Everything new is
payoff.** Governing rule from the discussion: each section opens with a
computation someone actually performed, and the law is what is needed to
license it — practice → language, the book's rhythm at section scale.
(The taxonomy — commutativity, grouping, distributivity, limits — is the
backbone, never the subject.)

1. **Commutativity — rearrangement.** Opens with *why it always
   worked*: the reader has done infinite arithmetic since they were ten
   and it never failed, because **a decimal is always absolutely
   convergent**. They have had the license their whole life and never
   saw it. Ties back to Ch 3's decimals and makes the chapter's subject
   personal. Then the scandal, with **no value needed**:

       S    = 1 − 1/2 + 1/3 − 1/4 + 1/5 − 1/6 + …
       S/2  = 0 + 1/2 +  0  − 1/4 +  0  + 1/6 + …
       ────────────────────────────────────────────
       3S/2 = 1 +  0  + 1/3 − 1/2 + 1/5 +  0  + …

   Delete the zeros and that is exactly the two-positives-then-one-
   negative rearrangement: **rearranging multiplies the sum by 3/2,
   whatever the sum is.** ln 2 is never mentioned — right for a number
   chapter. Termwise addition of two convergent series is free (Ch 3
   limit laws); **deleting the zeros is the one step needing this
   chapter's license.** Then: absolute convergence licenses
   rearrangement; Riemann's theorem is the sharp converse, and its
   proof is an algorithm.
   *History (verified):* **Dirichlet 1837** proved the absolute case and
   *noticed* the conditional failure. In **1852** Riemann brought him a
   draft on Fourier series and asked his advice; Dirichlet reminisced
   about the old curiosity; Riemann made it a theorem — habilitation
   **1854**, published **1867** by Dedekind after Riemann's death, with
   Riemann crediting Dirichlet on the page. An old mathematician
   mentions something odd, a young one makes it a theorem, a third
   publishes it posthumously. Three sentences, better than the theorem's
   own story.
   ★ **Euler's transformation** — guided exercise, see below.
2. **Grouping.** The counterexample: an array whose rows all sum to 0
   and whose columns sum to 1. Fubini for series under absolute
   convergence. April's §5.2 iterated-limits material folds in here
   (row-vs-column sums IS the two-limits swap), with the general moral:
   interchanging two limits is never free.
   **Main-text payoff is structural: grouping is what proves the Cauchy
   product.** The section does not need a showpiece of its own.
   ★ **divisor identity** ζ(s)² = Σ d(n)/nˢ — guided exercise (Steve,
   2026-08-20). It is the item that genuinely exercises double
   summation, and putting it here means **ζ enters only as optional
   material**, never as a main-line commitment.
3. **The Cauchy product.** The failure — Σ(−1)ⁿ/√(n+1) squared
   diverges. The absolute-convergence license. ★ Mertens (sharper
   hypothesis, fiddly proof, starred). Then the section's showpiece:
   **Newton's fractional binomial** (below).
4. **Infinitely many factors.** **Euler's product**, the infinitude of
   primes, and **Σ1/p diverges** (below). NOTE: this section needs
   infinite products as computational objects — which reverses an
   earlier recommendation to cut products from this chapter.
5. **Passing to the limit.** Dominated convergence for series —
   **Tannery's theorem** (Jules Tannery; documented as *the* tool for
   proving the binomial limit and the series characterisation of the
   exponential equivalent). Naming is OPEN, see Status. Then the
   **climax** — Euler's *Introductio* §§115–116 staged line for line
   with its one illegal step licensed; eighteen digits. Closing pages:
   **e is irrational.**

### The three showpieces

**Newton's fractional binomial (§3) — the best story in the chapter.**
Wallis, *Arithmetica Infinitorum* (1656 — ⚠ sources differ, 1655/1656),
was trying to compute the area under y = √(1−x²): he could do (1−x²)ⁿ
for integer n, saw a pattern in the areas, and tried to **interpolate**
to n = ½. That gave him his product for 4/π and never the series.
Newton, 1664–65, learned interpolation from that book and interpolated
the **coefficients** instead of the areas. **Then he checked it by
squaring** — no proof, he multiplied the series by itself and got 1 + x.
The four beats, with the last self-referential: *practice* (Wallis
interpolates, Newton interpolates better) → *deferred question* (why
does an interpolated pattern give a true identity?) → *reckoning* (the
Cauchy product) → *certification* (**Newton's own method of checking,
turned into a proof** — he did the right thing and did not know it was
one).
The proof: f(x) = Σ C(½,n)xⁿ on |x| < 1 (radius from Ch 5); the Cauchy
product plus **Vandermonde's identity** collapses the coefficient sum to
C(1,n) = 1, 1, 0, 0, … so **f(x)² = 1 + x**. Two wrinkles to write out:
pinning the sign (f = +√(1+x)) wants a small continuity or estimate
argument, and Vandermonde for non-integer upper index needs the
two-polynomials-agreeing argument. Neither is deep.
Three dividends: it is the **third interpolation in the book** (AO 6770
in a power table, Ptolemy in a chord table, Wallis/Newton in a pattern
of coefficients); it belongs to the **exponential thread** (Oresme's
question asked of the binomial theorem) and carries the observation
**when the exponent stops being a counter, the sum stops being finite**;
and it is on the **π strand** — Ch 4 ends with Archimedes measuring the
circle, and this comes out of the same problem nineteen centuries later
by a different route.
**This REPLACES Newton's series reversion**, which cannot be licensed at
this level (reversion and composition need machinery Part I lacks). Cut
the reversion; a chapter with Basel already has its one honest gap.

**Euler's product and the primes (§4).** For real s > 1,
Σ 1/nˢ = Π_p (1 − p^(−s))^(−1). Proof is elementary: for fixed N,
Π_{p≤N} is a FINITE product of absolutely convergent geometric series,
so iterated Cauchy product gives Σ 1/n over exactly those n whose prime
factors are ≤ N (unique factorization makes tuple ↦ n a bijection); then
Σ_{n≤N} ≤ Π_{p≤N} ≤ Σ_{n≥1}, and N → ∞ squeezes.
**The block needs no ζ at all** — both prime theorems come from the
finite identity alone. That shrinks the number-theory detour a lot.
- **Infinitude of primes**: Π_{p≤N}(1−1/p)^(−1) ≥ H_N. Finitely many
  primes would bound the left side; Ch 3 proved H_N → ∞ (Oresme). **A
  fact about the primes, out of a fact about a series** — and Ch 3's
  harmonic series gets a SECOND MEANING three chapters later. Contrast
  with Euclid: his proof is finite, constructive, and hands you a new
  prime; Euler's is infinite, non-constructive, and tells you how many.
- **Σ 1/p diverges — checked 2026-08-20 and it IS Part I-legal**
  (an earlier ruling that it was out of bounds was wrong). Suppose
  Σ_p 1/p converges; pick k with Σ_{i>k} 1/p_i < 1/4, so
  Σ_{i>k} 2/p_i < 1/2. For every prime, (1−1/p)^(−1) = 1 + 1/(p−1)
  ≤ 1 + 2/p. Split off the first k primes as a constant C; **Ch 4's
  product inequality** Π(1+xᵢ) ≤ 1/(1−Σxᵢ) bounds the rest by 2. So
  H_N ≤ 2C for all N — contradiction. Needs only Ch 3, Ch 4 and this
  section: no log, no exp, no calculus.
  Dividends: it makes **Ch 4's product inequality load-bearing** (its
  only clients are currently Wallis and Viète), and it lets the reader
  compare two results they proved themselves — Σ1/n² converges,
  Σ1/p diverges, so **the primes are denser than the squares**.
  ⚠ Write out the iterated finite Cauchy product before relying on it;
  the whole block rests on it. Step 2's "pick k" is the only place the
  argument touches a limit and is where a student will stumble.
- Euler 1737, *Variae observationes circa series infinitas* (⚠ verify).

**e is irrational (§5, closing) — the Part I bookend.** Fourier's proof,
needing only the series and a geometric tail bound: suppose e = p/q,
take n ≥ q; then n!·e and n!·Σ_{k≤n} 1/k! are both integers, so their
difference is an integer — but it equals n!·Σ_{k>n} 1/k!, which is
strictly between 0 and 1/n. **Part I opened by proving √2 is not a
ratio and called it a crisis; it closes by proving e is not a ratio and
it is a triumph** — same theorem shape, opposite valence, because of
everything in between. And it is only possible because the chapter got
the SERIES rather than the trap: not merely faster digits, but a theorem
about the number's nature.
*History:* **Euler 1737** (same year as the prime product) proved it
from e's continued fraction, e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8,
…], which is infinite — so Euler used the OTHER Part I tool, and Ch 4's
starred continued-fraction section makes that remark available.
**Fourier** later gave the factorial-series proof, which is shorter.
Strand payoff: Liouville's number is transcendental by construction
(Ch 3), e is irrational by its series (Ch 6), and Ch 2 knows
transcendentals exist without naming one.

### ★ Euler's transformation — guided exercise (adopted 2026-08-20)

Steve: "for computationally minded people it's an interesting idea." It
survives the Cesàro ruling because it **accelerates a convergent series
without changing what convergence means.** Euler, 1755.
The one-step identity is provable with tools already in hand: with
S = Σ(−1)ⁿaₙ, re-indexing gives Σ(−1)ⁿaₙ₊₁ = a₀ − S, so
Σ(−1)ⁿ(aₙ − aₙ₊₁) = 2S − a₀, hence
**S = a₀/2 + ½ Σ(−1)ⁿ(aₙ − aₙ₊₁)** — linearity of convergent series
plus an index shift, nothing more. Iterating k times gives Euler's
formula S = Σ_k (−1)^k (Δ^k a)₀ / 2^(k+1). **Where this chapter's
material actually bites is the iteration**: passing from "k steps plus a
remainder" to the infinite transformed series requires the remainder to
vanish — a genuine convergence question, not bookkeeping.
Worked case aₙ = 1/(n+1): induction gives (Δ^k a)₀ = (−1)^k/(k+1), so
Σ(−1)ⁿ/(n+1) = Σ_{m≥1} 1/(m·2^m). **The original needs ~10⁶ terms for
six digits; the transform needs ~20.** ln 2 is never mentioned.
**Place it with §1**, because it pairs with the 3/2 rearrangement: same
series, two manipulations — one destroys the answer, one preserves it
and computes it a hundred thousand times faster, and the difference is
which license applies. That makes the chapter's point without
commentary, and it is the computational thread's best moment in Part I:
**the license is what makes the fast method legal.**
Shape: (a) prove the one-step identity; (b) iterate and identify the
remainder; (c) compute (Δ^k a)₀ for the alternating harmonic series;
(d) compare rates numerically; (e) find where it fails for a
non-alternating series.

### What the chapter deliberately cannot do

**Basel.** Euler's ζ(2) = π²/6 comes from writing sin x / x as an
infinite product over its roots — treating an entire function like a
polynomial. This chapter cannot license that; it needs Weierstrass
factorization. Put it in **deliberately**: a chapter that licenses
everything has no stakes, and naming Euler's most famous calculation
plus the exact unlicensed manipulation makes the whole apparatus real.
Improved by §4: the chapter can now write ζ(2) **two ways** — a sum over
the integers and a product over the primes — and **neither shows a trace
of π.** The missing third expression is the product over the roots of
sin. A specific, visible mystery with a named door, not an admission of
defeat.

### Cut list (2026-08-20)

- **Newton's series reversion** — cut; replaced by the fractional
  binomial, which can actually be certified.
- **Generating functions** (e.g. Binet via Σ Fₙxⁿ = x/(1−x−x²)) —
  **cut to Part II, deliberately.** Reading coefficients off a partial
  fraction expansion requires **uniqueness of power series
  coefficients**, and every route to that identity theorem goes through
  differentiation or a continuity argument this chapter lacks. Binet is
  provable by plain induction anyway, so generating functions would
  borrow machinery to reprove something cheap. Recorded so it is not
  re-proposed.
- **Cesàro / divergent series** — ruled out (Steve, 2026-08-20): "I
  don't want to change the notion of convergence here." This removes
  the ★ divergent-series door that was under discussion, and with it
  the only competitor for the e-irrationality ending.
- **Infinite products as a convergence topic** — stays in Ch 4. But
  products return here as computational objects (§4).
- Don't dress up the machinery: the grouping counterexample, Tannery,
  Mertens and the √(n+1) failure are tools and demonstrations. They do
  not need stories and should not be given them.

### Story-shape note

The chapter's four narrative items are deliberately **different
shapes**, and that is a strength, not an inconsistency: Newton and Euler
are four-beat certification stories; rearrangement is the **monster**
(practice that does not work — the chapter's revelation beat); e's
irrationality is a **bookend**. Four identical arcs would be worse.

### Raw material, not a recommendation

Abel's 1826 line — *"Divergent series are the invention of the
devil…"* — is about precisely this chapter's subject, the absence of
rules for manipulating series. ⚠ Unverified and the wording varies by
translation. Possible epigraph material; the choice and phrasing are
Steve's.

## Ledger

- Seed: names and generalizes the workshop's invented techniques
  (positive parts → a± in rearrangement; invent-then-name rule).
  e-strand climax. Details TBD.

## Status

- Shape decided 2026-08-18; hinge-story rejected (see
  `part1-philosophy.md` Open). Purpose discussion not yet held —
  **this chapter and Ch 1 are the two with real story questions
  outstanding.** (Note: the story line is now recorded above and in
  `part1-chapters.md`; `part1-philosophy.md`'s "Open" entry for this
  chapter may be stale — check before treating it as live.)
- 2026-08-20 (content pass, Steve: "these are all good recommendations"):
  **the chapter now has a full section plan** — five sections, machinery
  unchanged from April, all additions payoff. Adopted: the decimals
  opening; the 3/2 rearrangement with no value needed; Newton's
  fractional binomial (replacing the series reversion); Euler's product,
  infinitude of primes and Σ1/p diverges; Tannery; e irrational as the
  closer; ★ Euler's transformation; ★ divisor identity. Ruled out:
  Cesàro/divergent series, generating functions (→ Part II), series
  reversion.
- **Length is the live worry.** This chapter and Ch 4 are now the two
  heaviest in Part I, and Ch 4 is already flagged as the fullest in the
  book. A cut menu exists (Basel remark; either starred exercise;
  Σ1/p; Newton's binomial → Part II, where power series would motivate
  it better; e irrational — resist hardest). **The real question is
  structural, not arithmetic: does the finale of Part I get to be the
  longest chapter?** Undecided; it determines the cut list rather than
  the other way round.
- OPEN: **does Tannery get named?** The invent-then-name rule says yes
  (Ch 4 performs the two-limits swap concretely, Ch 6 names it), but
  "Tannery's theorem" is an obscure name for a famous idea. Alternative:
  call it dominated convergence for series and put Tannery in a note.
- OPEN: whether Basel goes in. Half a page, buys the chapter its
  stakes — but it is a second deferral in a chapter that already defers
  Wallis's value.
- 2026-08-20 (exponential-thread rewrite): D3 resolved to general x;
  Euler §§115–116 adopted as the staging; Newton's series reversion
  added; the "decimals of algebra" quote downgraded to UNSOURCED after
  an unsuccessful search.
