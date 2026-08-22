# The Exponential Thread — Decided Design

Status: **rewritten 2026-08-20** from the day's discussion, replacing the
2026-08-20 discussion draft (Spines A/B/C and the "central tension"
section — both superseded; see *What this replaces* at the end).
Companion to `axiomatic-functions.md` (specimen studies) and
`sources/exponential-and-log.md` (all history, with ⚠ VERIFY flags).
Items marked OPEN are Steve's to call.

## The sentence

Every visit knows its role in one sentence, and the sentence is:

> **The exponential is the book's longest computation.** A scribe
> interpolates in a table of powers without asking what he has done;
> three thousand years later the table is filled in completely and
> unusably; and the book's business is getting access back — first
> slowly, then fast, then knowing why.

The thread's question, carried from Ch 1 to the end of Part I:
**can we fill in the table?**

## The three passes

The exponential is the one object the book treats at three levels of
abstraction, and the three land on the book's own three concepts.

| Pass | Where | The sentence |
|---|---|---|
| 1 | Parts I–II (early) | **values** — what practitioners could compute |
| 2 | Part II (late) | **the law** — the addition law alone nearly determines the function, and regularity is all-or-nothing |
| 3 | Part III | **structure** — eigenfunctions of d/dx; the law as a one-parameter group |

Value → law → structure, against number → function → space of
functions. Decided 2026-08-20 (Steve): pass 2 in Part II, pass 3 in
Part III.

**Pass 2 is a terminus, not a waypoint.** Part III is off the
one-semester path, so pass 2 must satisfy on its own; pass 3 is a
promise, never load-bearing.

## The governing design decision — construct, then reverse

Decided 2026-08-20 (Steve). The functional equation is **not** the early
definition.

1. **Ch 2 constructs.** aˣ is defined naively by sups. The law of
   exponents is then *proved* about the constructed object, and named.
2. **Part II reverses.** Remove the construction, keep the property,
   ask what satisfies it — and find more than we built. Monsters.

**Why this is right:** it is the Ch 1 → Ch 2 move performed again one
level up. Ch 2 promotes a pattern the practice kept reaching for (every
gap is a bounded set with no lub) to a defining axiom; the reversal
promotes a *theorem* about a constructed object to a defining property.
Same engine, function level. The exponential carries the book's own
doctrine rather than illustrating it.

**Required sharpening (2026-08-20).** For the reversal to bite, Ch 2 must
state its uniqueness argument as a **classification theorem**: the
functional equation forces aʳ on rationals; monotonicity plus density
forces the rest — *and these are all the monotone solutions.* Part II
then drops exactly one word from the hypothesis. Without this, "are
there others?" is not yet surprising, because Ch 2 already has a
one-parameter family.

## Part I — the order of business

### Ch 1 — the exponent is a counter, and the table has holes

The thread enters for free, on-doctrine: integer powers are exactly what
the naming engine generates (closure under multiplication). a^(1/2) needs
roots; roots do not exist. **The exponent joins the existing list of
nameless things** — no section of its own; it rides inside the
augmentation campaign and the diagnosis.

Four historical stations, in narrative order:

- **AO 6770 (Old Babylonian, ~1700 BC)** — how long to double your money
  at 20%? The scribe works from a *table of powers* at integer exponents,
  finds the answer trapped between n = 3 and n = 4, and **interpolates
  linearly**. A logarithm problem three millennia before logarithms, from
  the same tablet culture as the square-root iteration this chapter
  already carries. **The first recorded instance of the book's deferral:**
  he papered over the hole and did not ask.
- **Stifel, *Arithmetica Integra* (1544)** — the two rows, multiplication
  below matching addition above. The correspondence seen whole, and still
  only at the integers. Napier's project is filling in between the
  columns, continuously; that cannot be stated yet.
- **Oresme (~1360)** — fractional exponents with notation, *and* the
  speculation that irrational powers are possible. A medieval
  mathematician posing Ch 2's question and unable to answer it. Strongest
  single sentence in the thread. (Oresme also carries the harmonic series
  in Ch 3 — decide whether he is one character or two mentions.)
- **Napier's kinematic definition, as a named debt on the page.** He
  defined the logarithm by a moving point whose speed is proportional to
  the distance remaining. *We cannot yet say what that description
  means.* Paid in Part II, where it is revealed as dy/dt = −ky, forty
  years before calculus. House pattern.

Free callback: **"logarithm" is λόγος + ἀριθμός, "ratio-number"** —
Napier's coinage on the same word whose double meaning drives this
chapter's ἄλογος doctrine. The word that names the crisis names the
technology that answers it.

### Ch 2 — the axiom fills the holes, unusably

- aˣ denotes for every real x. **Oresme's 1360 speculation, cashed.**
  Stifel's table can now be filled in continuously — *in principle.*
- The law of exponents proved as a theorem, with the monotone
  classification attached (above).
- **The sting, and it is the thread's Ch 2 identity:** the entries are
  defined by suprema, so we know they exist and cannot compute one.
  Ch 1 could compute without naming; Ch 2 names without computing.
- OPEN (fork 2): section or guided exercise. Recommendation on record:
  **section** — under this plan the sup-work is not abstract exercise, it
  is filling in Napier's table.

### Ch 3 — compounding posed, and stuck

Decided 2026-08-20 (Steve), revising the earlier "e does not appear in
Ch 3" ruling, which was made when the thread started later. With Ch 1 and
Ch 2 behind them, compounding is a fully motivated limit.

**Placement: the definition section (§2), completing the scoreboard the
chapter already builds.**

| specimen | verdict |
|---|---|
| decimals | converge, name available — **confirmed** |
| Oresme's harmonic blocks | diverge, no name needed — **refuted** |
| Bernoulli's compounding | computable, bounded — **stuck** |

Three specimens, one section; the chapter's exit thesis (*we can compute
toward names, and refute without names; we cannot confirm without names*)
is exhibited where it is stated.

**The derivation, and every step but the last is algebra:**

1. Rate r, compounded n times: after time t, (1 + r/n)^(nt).
2. **The functional equation is free at every finite n** —
   (1+r/n)^(n(s+t)) = (1+r/n)^(ns) · (1+r/n)^(nt), exactly, no limits.
3. So compounding is already exponential at every stage, with a base
   Bₙ = (1 + r/n)ⁿ, the value at time t being Bₙ^t.
4. Subdividing finer is not new growth — it is the same shape with a
   shifting base. **Does the base settle?**

**How much Ch 3 proves — method (b), decided 2026-08-20 (Steve).**
Boundedness only: Bernoulli's own binomial-plus-geometric argument,
2 ≤ Bₙ < 3, plus the numbers (2, 2.25, 2.4414, 2.6130, …). Monotonicity
is **withheld** — finding it is Ch 4's craft, and it is the faithful
historical split, since bounding it between 2 and 3 is exactly where
Bernoulli stopped.

Why compounding and π both end open: they fail *differently*. Compounding
is the barest possible failure — everything computable, nothing to aim
at. π fails subtly — right method, algebra will not close. **Ch 4 is
bracketed:** compounding resolved on its first pages, π in its last
section.

- OPEN: whether §3 (the laws) revisits compounding to note that *if* the
  base settles, the value at **rational** times is B^t (arithmetic laws +
  the root law). Irrational t is a debt for Part II. A double-visit inside
  one chapter — house style, but Ch 3 is loaded.

### Ch 4 — the monotone structure found, and e named

**Route: the binomial expansion** (already the plan's choice), because it
does three jobs at once.

    (1 + 1/n)ⁿ = Σ_{k=0}^{n} (1/k!) · (1−1/n)(1−2/n)···(1−(k−1)/n)

- **Monotone** — each factor increases with n, and there are more terms.
- **Bounded** — every product of factors is ≤ 1, so the sum is
  ≤ Σ 1/k! ≤ 1 + 1 + ½ + ¼ + ⋯ = 3. Bernoulli's Ch 3 bound recovered as a
  *consequence of structure* rather than a lucky estimate.
- MCT closes it. **e exists, and is named here** (D2, below).

AM-GM gives monotonicity alone in three lines (n copies of (1+1/n), one
copy of 1) — the cheaper route if only the hypothesis is wanted. The
binomial earns its length by producing the bound and the series too.

**This expansion is Euler's §116, done legally.** He wrote (j−1)/j = 1
for infinite j; here (1 − 1/n) stays finite and is watched climbing.
Ch 6 licenses his version.

**Ch 4 finishes the x = 1 identity** (decided 2026-08-20). The reverse
inequality is within reach: for fixed m ≤ n, keep the first m+1 terms,
let n → ∞ by the limit laws on a *finite* sum, get e ≥ Σ_{k≤m} 1/k! for
every m; order survives limits (Ch 3). Nothing exceeds Ch 3's laws plus
MCT, so deferring it would be an artificial hold-back — against the
policy that border rules organize rather than stifle.

Two reasons it belongs here:

- **The section rule** — "every section ends with a number that now
  exists." e named but computable to one digit barely exists. It also
  matches the chapter's other constant: Archimedes hands over
  223/71 < π < 22/7, so π arrives computable.
- **The rate contrast is the payoff.** The paired trap ((1+1/n)ⁿ below,
  (1+1/n)^(n+1) above) has gap ≈ e/n — three digits needs n ≈ 1000. The
  series gives eighteen digits in twenty terms. Same number, two
  processes, wildly different rates — and "sup says where, not how fast"
  is the deficit Ch 3 opened with. Both on one page makes the point
  better than commentary.

**Invent-then-name fires here.** The reverse inequality lets n → ∞ with m
fixed, then m → ∞ — a two-limits swap, performed under concrete pressure
with no name for it. Ch 6 names it.

- **Briggs (D5) — OPEN.** 2ⁿ(a^(1/2ⁿ) − 1) is decreasing (the claim
  reduces to (s−1)² ≥ 0) and bounded below, so MCT gives L(a);
  additivity from the limit laws. A complete existence proof for the
  logarithm, whose algorithm is literally Briggs 1624 — fifty-four
  successive square roots of 10. **Guided exercise vs main text is the
  open question**, and it is a load question: Ch 4 is the fullest chapter
  in the book.
  Design note if it is in: Bernoulli (growth) and Briggs (table) are two
  MCT arguments, two centuries apart, on two problems the reader has no
  reason to connect. Their unification is Part II's reveal. That is the
  design, not a redundancy.

### Ch 5 — one paragraph

The series Euler manipulated freely in 1748 was first *proved* convergent
by Cauchy in 1821 — same *Cours d'analyse* as the criterion the chapter
is built on. The reckoning motif at chapter scale: Ch 5's tools arriving
eighty years late to certify Ch 6's hero. Light touch; the thread's only
business here.

### Ch 6 — the climax

**Scope: general x** (D3, forced — Ch 4 already did x = 1).

- **e^x = lim (1 + x/n)ⁿ = Σ xᵏ/k!**, for every real x. e^x is already
  defined (Ch 2's construction at base e, available the moment Ch 4 names
  e). Route verified: the law of exponents gives E(r) = e^r on rationals;
  E is monotone directly from the series; e^h → 1 as h → 0 falls out of
  Ch 1's Bernoulli inequality; squeeze. ⚠ Write the squeeze out before
  building on it.
- **E(x)E(y) = E(x+y) for the series, by the Cauchy product.** So the law
  of exponents is proved **twice in Part I, for two different objects**,
  and the agreement theorem is the bridge — the representation-theorem
  pattern, as with decimals and continued fractions.
- **Stage Euler's §§115–116 line for line.** He expands (1 + kz/j)^j by
  the binomial, then passes to the limit term by term in a sum *whose
  length is itself growing*. That one illegal step is exactly dominated
  convergence. The chapter certifies his instincts and corrects nothing —
  its stated aim, delivered against the primary text.
- **Newton, *De analysi* (1669)**, the other historical derivation: he
  integrates 1/(1+x) for Mercator's log series, then **reverts the
  series** to get 1 + y/1! + y²/2! + ⋯. The exponential series as the
  *inverse of the logarithm's*, nothing to do with compounding. Series
  reversion is the most violent arithmetic-of-infinite-processes
  operation of the period — Ch 6 material by the chapter's own
  definition.
- ⚠ The "infinite series are the decimals of algebra" line attributed to
  Newton in `purpose-ch6.md` is **unsourced** — a paraphrase in
  circulation. Find the actual sentence or drop it.

## Part II — the two returns

### The reckoning (April §7.4) — its job has changed

It no longer *defines* e; it **explains** e. The number that turned up in
compound interest for no evident reason is the unique base whose growth
rate equals its size.

**The ceremony survives naming e early, because the ceremony was never
about the name.** Euler, *Introductio* §122, in his own words:

> "Since we are free to choose the base a for the system of logarithms,
> we now choose a in such a way that k = 1. … for the sake of brevity for
> this number 2.718281828459⋯ we will use the symbol **e**."

and k, from §114, is lim (a^h − 1)/h — the derivative at zero. So *many
solutions, one per base; calculus picks the best one, and that defines e*
is **Euler's own definition, 1748**, not a modern retrofit. Historically
the *name* came in 1690 (Leibniz's **b**) and the *selection* in 1748:
two separate events, and the book can have both.

Also paid here: **Napier's moving point** = dy/dt = −ky, closing the Ch 1
debt. And **Briggs's stabilizing ratio and the growth rate are the same
k** — the two threads of Ch 4, revealed as one question.

### The functional-equation pass (pass 2)

The reversal cashes. Statement to aim for:

> Every solution of E(x+y) = E(x)E(y), not identically zero, is either
> e^(kx) — or its graph is **dense in ℝ × (0,∞)**.

- E is never zero (if E(a) = 0 then E ≡ 0), so E(x) = E(x/2)² > 0, and
  the multiplicative equation reduces to the additive one.
- **The dense-graph branch is choice-free** — about a page, no Hamel
  basis, and far more vivid than "discontinuous." *This is the branch to
  state.*
- The regularity side is all-or-nothing and cheap: continuity **at a
  single point**, or monotonicity on **any** interval, or boundedness on
  **any** interval, each forces e^(kx). Continuous ⟹ C^∞ by
  E(x)·∫₀^h E = ∫_x^(x+h) E and FTC, then bootstrap — needs nothing past
  the integration chapter.
- **Ch 2's classification is the special case the reader already proved.**
  The opening question writes itself: *how little do we actually need?*
- Existence of a pathological solution genuinely requires choice — no
  explicit Hamel basis can be written down. ⚠ **Do not overstate:**
  Solovay's model assumes an inaccessible cardinal. Safe form: *one
  cannot prove in ZF + DC alone that a discontinuous solution exists,
  granting the consistency of an inaccessible cardinal.*
- **The history is real, not retrofitted.** Cauchy's *Cours d'analyse*
  (1821, Ch. V) solves exactly these equations under a continuity
  assumption — he treated the functional equation as the
  characterization of the elementary functions. Darboux 1875 weakens it
  to continuity at one point; Hamel 1905 builds the monster. **Eighty-four
  years between an assumption made and an understanding of what it
  bought** — a deferred question taken seriously, yielding a monster *and*
  a certification of Cauchy at once. The thesis, in a place it does not
  currently reach. And Cauchy gets a second act after Ch 3 and Ch 5.

**Trig joins here.** The addition formulas are the same law: exp is a
one-parameter group into (0,∞), (cos, sin) one of rotations, and their
differential equations are what the group law becomes on differentiating
at the identity. Pathological trig solutions are exp's pulled back —
(cos∘A, sin∘A) for A additive. This is the answer to the long-standing
"what is the story for sin/cos" question: **one late story, both threads
walk in.** Not yet planned in detail.

## Part III — pass 3

Eigenfunctions of d/dx; the functional equation as the one-parameter
group / semigroup law; Euler's formula as the two groups being one.
Off the semester path. Sketch only.

## The recurring technique, noted not built

Steve, 2026-08-20: no new material is wanted for this — just awareness of
the repeated theme. **The sequences and recursions of analysis both
certify that something exists and compute it.** Where this thread
instantiates it:

- AO 6770 interpolates a power table — an algorithm with no object.
- Ch 2's sups certify and compute nothing.
- Briggs's square roots and Bernoulli's compounding are algorithms that
  are also existence proofs.
- The e/n trap versus the factorial series: *same number, two processes,
  different rates* — and **rate is a question the language creates.**
- Structural note worth knowing: **MCT certifies without computing.**
  Every other Ch 4 tool (nested intervals, alternating bounds,
  contraction, geometric comparison) hands over an error estimate. That
  is why the **paired trap** keeps recurring at the chapter's best
  moments — one-sided monotonicity proves existence; two-sided trapping
  computes.

## Decisions recorded

| # | Question | Disposition |
|---|---|---|
| D1 | Algebraic wish stated early? | **Resolved: no.** Ch 2 proves the law as a theorem about the construction; the wish is stated at the Part II reversal. (Subsumes `axiomatic-functions.md` forks 1 and 5.) |
| D2 | Name e at capture, or hold for the ceremony? | **Resolved: named at Ch 4 capture**, with historical origins. The ceremony is the k = 1 selection, not the naming, so nothing is lost. |
| D3 | Ch 6 scope | **Resolved: general x**, forced by Ch 4 taking x = 1. |
| D4 | Part II exp: axiomatic or constructive | **Resolved: construct then reverse** (see above). The April hard lemma (differentiability of sup-powers at 0) evaporates. |
| D5 | Briggs returns? | **Partly: yes, in Ch 4.** Guided exercise vs main text still OPEN. |

## Still open

- Ch 2: powers-and-logs as a section or a guided exercise (fork 2).
  Recommendation on record: section.
- D5's form: Briggs as guided exercise or main text; Ch 4 load.
- Whether Ch 3 §3 revisits compounding for the rational-time base claim.
- Oresme as one character or two mentions (Ch 1 exponents, Ch 3 harmonic).
- Where the ceremony sits in Part II relative to the pass-2 dichotomy —
  same section, or the dichotomy later with its own occasion.
- The trig side of pass 2: planning not started.
- Whether the trig series S, C are planted in Ch 6 — recommendation on
  record is **no**, by the produced-by-story test. Still unruled.
- ⚠ All history is sourced in `sources/exponential-and-log.md`, which
  carries the VERIFY flags and an eight-item TRAPS list. Nothing from
  this document goes to print without that pass.

## What this replaces

The previous draft mapped three candidate spines (A "the longest reach,"
B "one question asked twice," C "the constant first") onto five linked
knobs, and closed by declaring an irreducible choice between *early
ownership of e* and *the definitional ceremony* — "you cannot have both."

That was true given its options. The three-pass plan added an option
nobody had on the table: **move the ceremony.** With the dichotomy
landing in Part II, the "many solutions, one best" story is delivered
better and later — as a theorem about *every* solution rather than a
selection from a family Ch 2 happened to build — so the early name costs
nothing. Euler's §122 then showed the ceremony was never about the name
at all. The tension is dissolved, not split; the spines are superseded by
the construct-then-reverse design above.

Old draft preserved at `/tmp/exponential-thread.bak.md` for this session
only; the reasoning that mattered is captured here.
