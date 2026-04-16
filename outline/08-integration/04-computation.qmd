## Computing Integrals

### Narrative

- We compute integrals directly from the definition — no shortcuts
- Powers via sum formulas, exponentials via geometric series
- These calculations are possible but laborious; a better method comes in Chapter 9

### Content

### The Direct Method
- Lemma: to compute ∫_{[a,b]} f, it suffices to find any sequence of partitions Pₙ with U(f, Pₙ) − L(f, Pₙ) → 0. The common limit is the integral.
- Strategy: choose partitions, compute L and U explicitly, show both converge to the same limit

### Powers
- Theorem: ∫_{[0,b]} xⁿ = bⁿ⁺¹/(n+1) for any n ∈ ℕ
- Proof: uniform partitions on [0,b], monotonicity gives explicit L and U, compute using sum formulas
- Extend to ∫_{[a,b]} xⁿ = (bⁿ⁺¹ − aⁿ⁺¹)/(n+1) by subdivision
- ✎ Inline: verify explicitly for n = 1 using Σi = n(n+1)/2 and for n = 2 using Σi² = n(n+1)(2n+1)/6

### Exponentials
- Theorem: if E is an exponential function, then E is integrable on [a,b] and ∫_{[a,b]} E = (E(b) − E(a))/E'(0)
- Proof: uniform partitions; law of exponents turns L into a geometric series; closed form via geometric sum formula; limit involves (E(Δₙ) − 1)/Δₙ → E'(0); upper sum satisfies U(E, Pₙ) = E(Δₙ)·L(E, Pₙ), and E(Δₙ) → 1, so U and L have the same limit
- Corollary: ∫_{[a,b]} exp = exp(b) − exp(a)

### Guided Exercises

None for this section.

### Exercises

TBD

### Dependencies

**Requires**: §8.1–8.2 (integration theory), §2 (geometric series), §7 (exponential functions, E'(0))

**Used in**: §9.1 (FTC)
