# Series, Products, and Euler's Primes — Sources

Sourcing for the unification pass and Ch 6's content plan: the early
infinite processes (Zeno, Viète), Newton's fractional binomial, Euler's
prime product, e's irrationality, the rearrangement story, and Tannery.
Web-verified 2026-08-20. ⚠ VERIFY items need a library pass before
anything is quoted in print.

House rule as in `unspeakable.md`: the ⚠ TRAPS section lists sentences
that are FALSE or unsafe, however often repeated.

---

## Viète's product (1593) — Ch 1's top rung, Ch 4's closer

2/π = (√2/2) · (√(2+√2)/2) · (√(2+√2+√2)/2) · ⋯

- **The first formula in European mathematics to represent an infinite
  process**, and on the standard account **the first identity in
  history expressing π as a limit.** CONFIRMED as the standard claim.
- One source characterises it as marking **the beginning of mathematical
  analysis**. ⚠ ATTRIBUTE, do not assert — this is a historian's
  judgement, not a fact.
- **Viète's own method is a variation on Archimedes' polygon
  approximation** — the derivation runs on the cosine double-angle
  formula, i.e. repeated bisection. CONFIRMED in outline. This is what
  makes Ch 4's products section and Measurement of the Circle one
  computation in two notations. ⚠ VERIFY how Viète himself framed it
  before writing "Viète saw it as Archimedes' method."
- He computed π to **nine digits** with it. CONFIRMED.
- Statable with nested radicals alone (a₁ = √2/2, a_{k+1} =
  √(2+2a_k)/2), so no trigonometry is needed to display it in Ch 1.
  Checkable directly.

Sources: https://en.wikipedia.org/wiki/Vi%C3%A8te's_formula ;
https://www.johndcook.com/blog/2012/07/20/oldest-series-for-pi/

---

## Zeno — Ch 1's middle rung

The **Dichotomy** (½ + ¼ + ⅛ + ⋯) is the additive specimen. Zeno is
named in `thesis.md` as the question the Greeks deferred and, before
this pass, appeared in no chapter — that gap is what the Ch 1 process
section closes. Partial sums 1 − 2⁻ⁿ in closed form: pure algebra,
Ch 1-legal.

⚠ Not researched in this pass beyond the mathematics. Before print:
sources for the Dichotomy's formulation (Aristotle, *Physics* VI is the
usual route — Zeno's own words do not survive), and for the standard
claim that exhaustion was the Greek response to it.

---

## Newton's fractional binomial — Ch 6 §3

- **Wallis, *Arithmetica Infinitorum*** — 1656 in the sources consulted
  here; **⚠ 1655 is also widely given.** Resolve before citing. Wallis
  attacks the area under y = √(1−x²) (the circular segment), handles
  (1−x²)ⁿ for integer n, sees a pattern in the areas, and tries to
  **interpolate** to n = ½. That yields his product for 4/π and never a
  series. CONFIRMED.
- **Newton, 1664–65**, learned interpolation from that book and applied
  it to the **coefficients** rather than the areas — noticing patterns
  in the integer binomial sequence and extending them to rationals,
  obtaining the generalized binomial theorem for negative and fractional
  exponents. CONFIRMED.
- **He verified by multiplication**, not by proof — squaring the series
  and recovering 1 + x. CONFIRMED in substance; ⚠ VERIFY the exact form
  of his own account (the 1676 *Epistola prior* / *posterior* to
  Oldenburg for Leibniz is the usual citation).
- Why it matters here: **his own method of checking is this chapter's
  method of proving.** The Cauchy product plus Vandermonde's identity
  gives f(x)² = 1 + x exactly.

Sources: https://www.quantamagazine.org/how-isaac-newton-discovered-the-binomial-power-series-20220831/ ;
https://www.britannica.com/topic/Newton-and-Infinite-Series-1368282 ;
Kim, "The Origin of Newton's Generalized Binomial Theorem," J. Hist.
Math. — https://www.koreascience.or.kr/article/JAKO201414938219924.page

---

## Euler's prime product — Ch 6 §4

- **Euler, 1737**, *Variae observationes circa series infinitas*. The
  product formula and the prime consequences. ⚠ VERIFY the title, year
  and exactly which results appear in that paper versus later ones.
- The elementary proof (finite product, iterated Cauchy product, unique
  factorization, squeeze) is standard and needs no citation, but see the
  ⚠ in `purpose-ch6.md`: **write out the iterated finite Cauchy product**
  before the block rests on it.
- Ch 4's product inequality Π(1+xᵢ) ≤ 1/(1−Σxᵢ) for xᵢ ≥ 0, Σxᵢ < 1 is
  standard; verified numerically here. ⚠ Confirm the exact hypotheses as
  the workshop will state them.

---

## e is irrational — Ch 6's closer

- **Euler, 1737** — proved it by showing e's simple continued fraction
  is infinite: e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8, …]. CONFIRMED.
  Same year as the prime product.
- **Fourier** — the factorial-series proof by contradiction (n!e and
  n!Σ_{k≤n}1/k! both integers; their difference is an integer strictly
  between 0 and 1/n). CONFIRMED as the standard attribution. ⚠ VERIFY
  the date; c. 1815 is commonly given but was not confirmed here.
- Sandifer, "Who proved e is irrational?" (How Euler Did It, Feb 2006):
  http://eulerarchive.maa.org/hedi/HEDI-2006-02.pdf — the place to
  settle both attributions.

---

## Rearrangement: Dirichlet → Riemann — Ch 6 §1

- **Dirichlet, 1837** — published that absolutely convergent series may
  be rearranged freely, and **discovered that conditionally convergent
  ones may not.** CONFIRMED. ⚠ Do NOT claim without checking that this
  was the same paper as his primes-in-arithmetic-progressions work of
  the same year.
- **1852** — Riemann, working on a paper extending Dirichlet's results
  on Fourier series, sought Dirichlet's advice and showed him a draft;
  Dirichlet reminisced about his discovery. CONFIRMED.
- **1854** — Riemann submits the habilitation containing the theorem;
  **1867** — published by Dedekind after Riemann's death (Dedekind's
  footnote records the 1854 submission). Riemann **credits Dirichlet**
  for the observation on the page. CONFIRMED.

Sources: https://en.wikipedia.org/wiki/Riemann_series_theorem ;
Agana, "The Classical Theory of Rearrangements" (Boise State thesis) —
https://scholarworks.boisestate.edu/cgi/viewcontent.cgi?article=2052&context=td

---

## Tannery's theorem — Ch 6 §5

- Named for **Jules Tannery**. Gives sufficient conditions (dominance by
  a convergent series) for interchanging a limit with an infinite sum;
  it is the **discrete case of Lebesgue's dominated convergence
  theorem**. CONFIRMED.
- Documented application: **proving the binomial limit and the infinite
  series characterisations of the exponential equivalent** — i.e.
  exactly Ch 6's climax. CONFIRMED.
- ⚠ No date established for Tannery's own statement. Find it before
  naming him in print.

Source: https://en.wikipedia.org/wiki/Tannery's_theorem

---

## Euler's transformation — Ch 6 ★ exercise

- **Euler gave a first version in 1755.** CONFIRMED. Accelerates
  convergence of alternating series; Abramowitz & Stegun state it with
  the forward difference operator as
  Σ(−1)ⁿaₙ = Σ_k (−1)^k (Δ^k a)₀ / 2^(k+1).
- It **preserves the limit** — it is acceleration, not a new summation
  method — which is why it survives the ruling against Cesàro material.
- The worked case Σ(−1)ⁿ/(n+1) = Σ_{m≥1} 1/(m·2^m) and the one-step
  identity were both derived and checked here; no citation needed, but
  ⚠ the induction (Δ^k a)₀ = (−1)^k/(k+1) should be written out.

Sources: https://mathworld.wolfram.com/EulersSeriesTransformation.html ;
https://dlmf.nist.gov/3.9

---

## Madhava and the Kerala school — not yet placed

Collected during the computational-thread discussion; **no chapter
currently uses it.** Recorded so it is not lost.

- **~1400**: power series for sine, cosine and arctangent — the Taylor
  series, 250–300 years before Newton and Gregory — **with correction
  (error) terms**, implying real understanding of the limiting nature of
  the series. CONFIRMED.
- Used them to compute **π to 13 decimal places**, a record that stood
  over a century. CONFIRMED.
- Newton rediscovers sine and cosine in 1669; Gregory arctangent in
  1671; Leibniz 1673. CONFIRMED.
- Why it is not placed: the arctangent series needs calculus to derive,
  so Part I cannot reach it. **Natural home is Part II**, where it is
  the strongest single piece of evidence for the thesis's continuity
  claim — Archimedes' project (more digits) carried on by entirely
  different means.

Source: https://en.wikipedia.org/wiki/Madhava_series

---

## ⚠ TRAPS

1. **"Viète's formula marks the beginning of analysis."** A historian's
   characterisation. Attribute it or drop it; do not assert it.
2. **"Viète followed Archimedes."** His method is *a variation on* the
   polygon idea; whether he framed it that way is unverified.
3. **"Wallis's Arithmetica Infinitorum, 1655."** Sources give 1655 and
   1656. Pick one only after checking.
4. **"Newton proved the generalized binomial theorem."** He did not —
   he interpolated a pattern and **checked it by multiplication.** The
   distinction is the entire story; erasing it destroys the section.
5. **"Dirichlet proved the rearrangement theorem."** He proved the
   absolute case and *noticed* the conditional failure. Riemann proved
   the theorem, and credited Dirichlet for the observation.
6. **"Euler discovered Σ1/p diverges in 1737."** Verify which results
   are actually in *Variae observationes* before attaching year and
   title to a specific theorem.
7. **"Zeno wrote…"** Zeno's own texts do not survive; the Dichotomy
   reaches us through Aristotle. Attribute accordingly.

---

## Library follow-ups

- Wallis, *Arithmetica Infinitorum* — settle 1655 vs 1656.
- Newton, *Epistola prior* / *posterior* (1676) — his own account of
  the interpolation and the check by multiplication.
- Euler, *Variae observationes circa series infinitas* (E72) — which
  prime results are in it.
- Sandifer, HEDI Feb 2006 — Euler 1737 vs Fourier on e's irrationality,
  and Fourier's date.
- Riemann, *Über die Darstellbarkeit…* (1867) — the passage crediting
  Dirichlet.
- Jules Tannery — the original statement and date.
- Aristotle, *Physics* VI — the Dichotomy.
