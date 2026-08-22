# The Exponential, the Logarithm, and e — Sources

Sourcing for the exponential thread (Ch 2 powers, Ch 4 capture, Ch 6
climax, Part II reckoning, Part II functional-equation revisit) and for
the logarithm's place in it. Web-verified 2026-08-20; ⚠ VERIFY items need
a library pass against print editions before quoting.

House rule as in `unspeakable.md`: the ⚠ TRAPS section lists sentences
that are FALSE and must never appear, even though they are widely
repeated.

---

## Arc 0 — Interest: the thread starts in Babylon, on the same tablets

**AO 6770** (Old Babylonian, ~1700 BC) poses: *how long, down to the day,
does it take to double your money at 20% annual interest?* In modern
terms, solve (1.2)^t = 2 — a logarithm problem, three millennia before
logarithms. The scribe's answer: 4 − (0;2,33,20) = 3;57,26,40 years,
i.e. 3 years and 344⅔ days. (Modern exact value: 3 years, 288 days on
the Babylonian 360-day year.) CONFIRMED. ⚠ VERIFY the tablet number,
transcription, and the reading of the sexagesimals against Neugebauer
(MKT) or Friberg before printing any figure.

**How the scribe did it is the point.** He worked from a *table of
powers* of 1.2 at integer exponents, found the answer trapped between
n = 3 and n = 4, and **interpolated linearly** — a linear approximation
to the exponential. Neugebauer conjectured a method of successive
corrections from the power tables. ⚠ VERIFY Neugebauer's conjecture and
its current standing.

**Why this matters to the book.** This is Stifel's table with a hole in
it, 3,200 years before Stifel — a table of integer powers, a value
wanted *between* the entries, and no way to say what that value is. The
scribe papered the hole over with interpolation and did not ask the
question. That is the deferral, in the first instance we have of it,
from the same tablet culture as the Babylonian square-root iteration
Ch 1 already carries. The interest thread and the table thread are one
thread at the start; they drift apart; Euler reunites them.

Later stations on the interest thread (⚠ all unverified, listed for a
later pass): Fibonacci, *Liber Abaci* (1202), compound-interest
problems; Simon Stevin (1582), published interest tables; Jacob
Bernoulli (1683), above.

---

## Arc 1 — Exponentiation: the exponent becomes a number, then a variable

The through-line: for two thousand years the exponent is a *label*
(which power am I), then it becomes a *number*, then a *variable*. The
last step is Ch 2's.

- **Archimedes, *The Sand Reckoner*** (~3rd c. BC). To name numbers past
  the myriad, he defines "orders" built on the myriad-myriad (10⁸) and
  works with the rule that the product of terms in the geometric series
  of ratio 10⁸ is another term of the series — the law of exponents, in
  service of a *naming* problem. CONFIRMED in substance. ⚠ VERIFY the
  exact formulation (Heath's translation) before claiming "Archimedes
  states the law of exponents" in print.
- **Diophantus, *Arithmetica*** (~250 AD). Powers named by compounding:
  δύναμις (x²), κύβος (x³), δυναμοδύναμις (x⁴, "square-square"),
  δυναμόκυβος (x⁵), κυβόκυβος (x⁶). Notation stops at the sixth power;
  one unknown only. The naming structure shows the thinking: not
  "exponent 5" but "square-cube." CONFIRMED on the names. ⚠ VERIFY the
  claim that no general exponent notation exists anywhere in the text.
- **al-Karajī (d. ~1019) / al-Samawʾal, *al-Bāhir fi'l-jabr*** (~1150,
  written at nineteen). Tabular treatment of powers of the unknown and
  of its reciprocal, with the multiplication rule across the table —
  the law of exponents as arithmetic, negative exponents included.
  CONFIRMED in outline. ⚠ VERIFY the exact form of the table and rule
  (Rashed's editions) before describing it precisely.
- **Nicole Oresme, *Algorismus proportionum* and *De proportionibus
  proportionum*** (~1360). **The key medieval figure for this thread.**
  First systematic operational rules for multiplying and dividing
  ratios with integral *and fractional* exponents; a special notation
  for fractional powers; an original distinction between irrational
  ratios whose exponents are rational and those whose exponents are
  irrational; and — the striking part — **he speculates that irrational
  powers are possible.** CONFIRMED. This is stronger than "Oresme had
  fractional exponents": he asked the a^√2 question and could not
  answer it. Oresme also carries the harmonic series (below), so he
  appears twice.
- **Michael Stifel, *Arithmetica Integra*** (Nuremberg, 1544). The
  hinge. An arithmetic progression laid above a geometric one —

      0   1   2   3   4   5   6   7   8
      1   2   4   8  16  32  64 128 256

  — with the explicit observation that multiplication and division
  below correspond to addition and subtraction above; negative
  exponents on the following page. **Stifel is credited with the term
  "exponent" (Lat. *exponens*)** and treats whole and fractional
  exponents. CONFIRMED. Widely described as an early logarithm table
  in embryo — seventy years before Napier.
- **Descartes (1637), Wallis (1655), Newton (1676).** Modern superscript
  notation; systematic meaning for negative and fractional exponents;
  the binomial theorem extended to fractional and negative powers. All
  three already appear elsewhere in the plan. ⚠ VERIFY specifics if
  any is quoted.
- **Euler, *Introductio in analysin infinitorum*** (1748). The exponent
  becomes a continuous variable and aˣ becomes a function of x. Euler
  makes *function* the central concept of analysis and treats the
  elementary transcendental functions without integral calculus.
  CONFIRMED.

**Why this arc ends in Ch 2.** The Greeks had exponents 2 and 3. Oresme
had fractions and *wondered* about irrationals. Nobody had a^√2 until
real numbers existed. The sup construction is the last step of a
two-thousand-year sequence, and it is the step that needed completeness.

---

## Arc 2 — Logarithms: the law was the goal, the construction was kinematic

- **John Napier, *Mirifici Logarithmorum Canonis Descriptio*** (1614).
  Definition is **kinematic**, not by a law and not by exponents: two
  points, one moving uniformly along an infinite line, the other along
  a finite segment with velocity proportional to the distance
  *remaining*. The logarithm is a ratio of two distances, geometrically
  conceived. CONFIRMED.
  - Turning multiplication into addition was the **design goal**
    (computational relief for astronomers), but not the definition.
  - **Napier had no notion of base.** Retrospectively his logarithms
    correspond to base 1/e with a 10⁷ scaling. CONFIRMED. See TRAPS.
  - The decelerating point is dy/dt = −ky in disguise — Napier defined
    the logarithm by a differential equation forty years before
    calculus. (This is our reading, not a sourced claim; state it as
    an observation.)
- **Etymology — a direct Ch 1 callback.** Napier coined *logarithm*
  from **λόγος** (ratio, proportion, word) + **ἀριθμός** (number):
  "ratio-number." CONFIRMED. This is the *same word* whose double
  meaning drives Ch 1's naming doctrine — ἄλογος, "without logos."
  The word that names the crisis in Ch 1 names the technology that
  answers it. Napier never explained the coinage; the derivation is
  universally accepted but is an inference from the components. ⚠ VERIFY
  that no primary statement of Napier's explains it.
- **1618, appendix to Edward Wright's English translation of the
  *Descriptio*** — probably by **William Oughtred**. Contains the
  equivalent of log_e 10 = 2.302585 (tables carried no decimal point,
  so likely printed as 2302585). **First appearance in print of a
  natural-logarithm quantity** — anonymous and unremarked. CONFIRMED
  (MacTutor). ⚠ VERIFY the Oughtred attribution, which is "probably."
- **Henry Briggs, *Arithmetica Logarithmica*** (1624; collaboration with
  Napier from 1615–17). Base 10; logs of 1–20,000 and 90,000–100,000 to
  14 places. **Method: repeated square roots** — bring a number close to
  1 by taking m successive square roots, using log√t = ½ log t.
  Reportedly "I computed successively 54 square roots of 10."
  CONFIRMED. Briggs also gave a numerical approximation to log₁₀(e)
  without identifying e. This is the algorithm already slated as the
  book's MCT exercise.
- **Nicolaus Mercator, *Logarithmotechnia*** (1668). Series for
  log(1+x); **first use of the term "natural logarithm"** for base-e
  logs. CONFIRMED.
- **Euler, *Introductio* (1748), Ch. VI–VII.** Logarithm and exponential
  finally understood as inverses, on an equal footing. CONFIRMED.

**The order to tell.** Logarithms preceded exponentials *as functions*
by 134 years. "log is the inverse of exp" is Euler's late reduction, not
the natural early view. Napier's goal was the law; his construction
never mentions powers.

**Both pre-calculus constructions are derivatives in disguise.** Napier's
decelerating point is dy/dt = −ky. Briggs's stabilizing ratio
2ⁿ(a^(1/2ⁿ) − 1) is lim (a^h − 1)/h. Neither man had the language.

---

## Arc 3 — e: a number for 117 years before it was a question

Unlike √2 and π, which were questions before they were numbers, e was a
number before anyone asked what it was.

| Date | Event | Status |
|---|---|---|
| 1614 | Napier's logs are effectively base 1/e; e is structurally present, unnoticed | CONFIRMED |
| 1618 | Oughtred(?) appendix prints log_e 10 = 2.302585 | CONFIRMED, attribution ⚠ |
| 1624 | Briggs approximates log₁₀(e), does not identify e | CONFIRMED |
| 1647 | Saint-Vincent computes the area under the rectangular hyperbola; connection to logs unclear at the time | CONFIRMED |
| 1661 | Huygens relates hyperbola and logarithm; computes the logarithm of e to **17 decimal places** — without recognizing e as a constant | CONFIRMED |
| 1668 | Mercator: the term "natural logarithm" | CONFIRMED |
| 1683 | **Jacob Bernoulli**, compound interest: the limit of (1+1/n)ⁿ, shown by the binomial to lie **between 2 and 3**. He got no further, and did not connect it to logarithms | CONFIRMED |
| 1690–91 | **Leibniz**, letters to Huygens: the constant gets a symbol — **b** | CONFIRMED |
| 1727/28 | Euler uses **e** in an unpublished paper on explosive forces in cannons | ⚠ VERIFY |
| 1731 | Euler to Goldbach, 25 Nov: e "denotes that number whose hyperbolic logarithm is = 1" | CONFIRMED |
| 1736 | *Mechanica* — first appearance of e in print | CONFIRMED |
| 1748 | *Introductio* — full treatment; e to 18 places; e^{ix} = cos x + i sin x | CONFIRMED |
| 1873 | Hermite proves e transcendental | CONFIRMED |

**MacTutor's characterization of Bernoulli 1683: "the first time that a
number was defined by a limiting process."** Worth using — it is exactly
Ch 4's thesis (certification is creation) — but attribute it as
MacTutor's judgement rather than asserting it flatly; "first" claims of
this kind are contestable.

### Euler's own definition of e — primary text, and it is Steve's ceremony

From Blanton's translation of the *Introductio*, Book I, Ch. VII
(paragraph numbers are Euler's):

**§114** — sets a^ω = 1 + kω for ω infinitely small, i.e.
**k = lim (a^h − 1)/h**: "we let ψ = kω. Then we have aω = 1 + kω…"
He then computes, for a = 10, using a table of common logarithms,
**k = 2.30258**. *That is the same number the 1618 appendix printed,
identified at last, 130 years later.*

**§116** — obtains a^z = 1 + kz/1 + k²z²/2! + k³z³/3! + ⋯, and at z = 1,
a = 1 + k/1 + k²/2! + ⋯.

**§122** — the ceremony, in Euler's words:

> "Since we are free to choose the base a for the system of logarithms,
> we now choose a in such a way that k = 1. … we obtain the value for
> a = 2.71828182845904523536028⋯ . When this base is chosen, the
> logarithms are called natural or hyperbolic. … for the sake of brevity
> for this number 2.718281828459⋯ we will use the symbol **e**."

**This is "there are many solutions, one per base; calculus picks the
one best one, and that defines e" — as Euler's own definition, 1748.**
The selection criterion k = 1 is the derivative at 0. The plan's
instinct was not a modern retrofit.

**§119** — Euler's series for the logarithm comes from
log(1+x) = (j/k)((1+x)^{1/j} − 1) with j infinite. **This is Briggs's
expression** 2ⁿ(a^{1/2ⁿ} − 1) **taken to the limit.** Briggs computed
with it in 1624; Euler defines with it in 1748.

⚠ VERIFY all quotations against Blanton's published translation
(Springer, 1988/1990, pp. 92–100) — the copy consulted is a MathFest
2019 handout, and its header labels the chapter "7" while its
introductory sentence says "Chapter VI." The paragraph numbers (114–123)
indicate Chapter VII.

### The two derivations of the exponential series

- **Newton, *De analysi*** (1669), written in response to Mercator's
  1668 log series. Newton integrates the series for (1+x)^{-1} to get
  log(1+x) = x − x²/2 + x³/3 − ⋯, then **reverts the series** — inverts
  it by successive approximation — to obtain
  x = 1 + y/1! + y²/2! + y³/3! + ⋯ where y = log x. **The exponential
  series arrives as the inverse of the logarithm's**, not from
  compounding. CONFIRMED. Series reversion is the most extreme
  "arithmetic of infinite processes" operation in the period and is
  natural Ch 6 material.
- **Euler, *Introductio* §§115–116** (1748), the derivation the book
  should actually stage: expand a^z = (1 + kz/j)^j by the binomial for
  finite j, then let j be infinite and take
  (j−1)/j = 1, (j−1)/2j = 1/2, (j−1)(j−2)/(2j·3j) = 1/(2·3), … term by
  term, landing on a^z = 1 + kz/1 + k²z²/2! + ⋯. **Euler's illegal step
  is passing to the limit term by term in a sum whose length is itself
  growing — which is exactly dominated convergence.** Ch 6's climax can
  be Euler's §116 line for line, with that one step licensed. Primary
  text confirmed above.

⚠ The Newton quote flagged in `purpose-ch6.md` ("infinite series are the
decimals of algebra") is NOT verified — it is a paraphrase in
circulation. Find the actual sentence in *De analysi* or the *Method of
Fluxions* before using it, or drop it.

### The letter "e"

Best scholarly guess: **a was already in use and e was the next
available vowel.** It is almost certainly *not* "e for Euler" (he would
not have) and not securely "e for exponential." Present as the likely
explanation, not a settled fact. Good anti-anecdote material, in the
house pattern of the Euclid-*alogos* and Hippasus corrections.

---

## Arc 4 — The functional equation (for the Part II revisit)

- **Cauchy, *Cours d'analyse*** (1821), Ch. V. Studies the continuous
  solutions of φ(x+y) = φ(x) + φ(y), and by the same technique
  φ(x+y) = φ(x)φ(y), φ(xy) = φ(x) + φ(y), φ(xy) = φ(x)φ(y). Derives
  φ(mα/n) = (m/n)φ(α), then passes to the limit through rationals using
  his 1817 characterization of continuity. Result: the only continuous
  solutions of the additive equation are f(x) = kx. CONFIRMED.
  **Cauchy treated the functional equation as the characterization of
  the elementary functions.** ⚠ VERIFY chapter/section numbering against
  Bradley–Sandifer's annotated translation before citing precisely.
- **Darboux (1875)**: continuity at a *single point* suffices.
  **Darboux (1880)**: it suffices that f be nonnegative (or nonpositive)
  for small positive x. CONFIRMED.
- **Hamel (1905)**: constructs discontinuous solutions using a basis for
  ℝ over ℚ (now the Hamel basis). CONFIRMED.
- **Ostrowski**: boundedness on one side on a *measurable set of
  positive measure* suffices. CONFIRMED in substance; ⚠ VERIFY date
  (commonly given as 1929).
- Measurability (Fréchet, Banach, Sierpiński) ⟹ linear; every
  discontinuous solution is non-measurable. CONFIRMED in substance;
  ⚠ VERIFY attributions and dates individually.

**The regularity list, as it can be stated to undergraduates.** An
additive f is linear if any one of: continuous at one point; monotonic
on any interval; bounded above or below on any interval; Lebesgue
measurable; nonnegative on the positive reals; **or its graph is not
dense in ℝ².**

**The dense-graph theorem is choice-free.** Any non-linear solution has
graph dense in ℝ² — proved by elementary means, no axiom of choice.
CONFIRMED (the standard proof builds the rational lattice generated by
a point where f(a) ≠ a·f(1)). **This is the branch to state**, because
it is vivid and it needs nothing.

**The existence of a pathological solution genuinely requires choice.**
No explicit Hamel basis can be written down, so the pathological
solutions cannot be exhibited. In the Solovay model (ZF + DC, all sets
of reals Lebesgue measurable) every solution is linear. CONFIRMED —
**with the caveat below.**

⚠ **Do not overstate Solovay.** His model assumes the consistency of an
**inaccessible cardinal**, and that hypothesis is known to be
unavoidable for the all-sets-measurable statement. The honest sentence
is: *one cannot prove in ZF + DC alone that a discontinuous solution
exists, granting the consistency of an inaccessible cardinal* — not
"it is impossible to construct one, full stop."

The continuous ⟹ C^∞ bootstrap (from ∫ₓ^{x+h} E = E(x)·∫₀^h E and FTC)
is elementary and standard; no citation needed, but write it out before
committing to it in print.

---

## Also confirmed in passing

- **Oresme, *Questiones super geometriam Euclidis*** (~1350, dated by
  Grant): the block-grouping proof of harmonic divergence, alongside a
  treatment of geometric series. CONFIRMED — this clears the ⚠ flag
  standing in `purpose-ch3.md`. Note Oresme now appears twice in the
  book (fractional exponents, harmonic series); worth deciding whether
  that is one character or two mentions.

---

## ⚠ TRAPS — sentences that are false or unsafe

1. **"Napier's logarithms are to base e."** No. Effectively base 1/e,
   with a 10⁷ scaling — and Napier had no concept of base at all. Even
   "base 1/e" is a retrospective description of a kinematic definition.
2. **"Napier defined the logarithm as an exponent."** No — that is
   Euler's reformulation, 134 years later.
3. **"Euler discovered e."** No. The number is in print from 1618, is
   bounded by Bernoulli in 1683, and is symbolized by Leibniz in 1690.
   Euler *named* it and *explained* it. The correct verb matters, and
   the distinction is the whole story.
4. **"e stands for exponential"** or **"e stands for Euler."** Neither
   is established; the next-available-vowel explanation is the scholarly
   best guess.
5. **"Stifel invented logarithms."** No — he laid the two progressions
   side by side and saw the correspondence. Napier built a *continuous*
   version, which is the hard part.
6. **"Oresme defined irrational powers."** No — he distinguished the
   case and speculated that such powers are possible. The distinction
   between speculating and defining is precisely the book's doctrine.
7. **"You cannot construct a discontinuous solution."** Needs the
   inaccessible-cardinal caveat above.
8. **"Archimedes stated the law of exponents."** Safe only in the
   hedged form ("works with the rule that…"), pending the Heath check.

---

## Sources (web-checked 2026-08-20)

- Lewy / arXiv, "The oldest example of compound interest" (AO 6770):
  https://arxiv.org/pdf/1510.00330
- Britannica, "Newton and Infinite Series" (series reversion):
  https://www.britannica.com/topic/Newton-and-Infinite-Series-1368282
- MacTutor, "The number e":
  https://mathshistory.st-andrews.ac.uk/HistTopics/e/
- MacTutor, Stifel biography:
  https://mathshistory.st-andrews.ac.uk/Biographies/Stifel/
- MacTutor, al-Samawal biography:
  https://mathshistory.st-andrews.ac.uk/Biographies/Al-Samawal/
- MacTutor, Earliest Uses of Symbols for Constants:
  https://mathshistory.st-andrews.ac.uk/Miller/mathsym/constants/
- Euler, *Introductio* Bk I Ch VII, Blanton trans. (MathFest 2019 handout):
  http://faculty.washington.edu/etou/eulersoc/documents/Euler-Introductio_Ch7.pdf
- Grant, "Part I of Nicole Oresme's Algorismus proportionum":
  https://isidore.co/misc/Physics%20papers%20and%20books/Zotero/storage/UHC22MUH/228107.pdf
- Stifel, *Arithmetica integra* (Internet Archive facsimile):
  https://archive.org/details/bub_gb_fndPsRv08R0C
- MAA Convergence, "Logarithms: The Early History of a Familiar Function":
  https://old.maa.org/press/periodicals/convergence/logarithms-the-early-history-of-a-familiar-function-john-napier-introduces-logarithms
- Roegel, reconstruction of Briggs's *Arithmetica logarithmica* (1624):
  https://locomat.loria.fr/briggs1624/briggs1624doc.pdf
- Laporte, "The method of Henry Briggs":
  https://archived.hpcalc.org/laporte/The%20method%20of%20Henry%20briggs.htm
- Wikipedia, Napierian logarithm:
  https://en.wikipedia.org/wiki/Napierian_logarithm
- Wikipedia, Cauchy's functional equation:
  https://en.wikipedia.org/wiki/Cauchy%27s_functional_equation
- Wikipedia, Solovay model:
  https://en.wikipedia.org/wiki/Solovay_model
- Bradley & Sandifer, *Cauchy's Cours d'analyse: An Annotated Translation*
  (Springer) — the edition to check Ch. V against.
- Etymonline, "logarithm": https://www.etymonline.com/word/logarithm

### Library follow-ups

- Blanton's *Introduction to Analysis of the Infinite* (Springer 1988),
  pp. 92–100 — verify the §114/§119/§122 quotations.
- Heath, *The Works of Archimedes* — the Sand Reckoner's orders.
- Bradley–Sandifer — Cauchy *Cours d'analyse* Ch. V numbering.
- Rashed on al-Karajī/al-Samawʾal — the power table.
- Grant's edition of Oresme, *De proportionibus proportionum* — the
  irrational-exponent speculation, exact wording.
- Ostrowski 1929 — exact reference.
- Neugebauer, *Mathematische Keilschrifttexte*, or Friberg — AO 6770
  transcription and the interpolation method.
- Newton, *De analysi* — the series reversion, and the hunt for the
  "decimals of algebra" sentence.
