
## Chapter 3: Sequences and Convergence

**Overall narrative**: Chapter 2 handled monotone sequences via MCT. What about bounded sequences with no monotone structure? What does completeness force on *all* bounded sequences?

---

### Historical Prelude
- Bolzano (1817): bounded sequences have accumulation points
- Cauchy's criterion: terms getting close to *each other*
- By century's end: recognized these are equivalent faces of completeness

---

### 3.1 Subsequences
- Definition of subsequence (n₁ < n₂ < n₃ < ...)
- Motivation: probing a sequence's behavior by examining parts
- Theorem: subsequences of convergent sequences inherit the limit
- Contrapositive: two subsequences with different limits ⟹ divergence
- Cleaner proof that (-1)ⁿ diverges (subsequences → 1 and → -1)
- Definition: subsequential limit (accumulation point)

---

### 3.2 Bolzano-Weierstrass
- Theorem: every bounded sequence has a convergent subsequence
- Proof via bisection → nested intervals (completeness!)
- Remark: fails in ℚ
- Corollary: bounded + exactly one subsequential limit ⟹ convergent
- Reframing: divergence of bounded sequences means *multiple* subsequential limits
- Motivation: study the *set* of all subsequential limits

---

### 3.3 Limsup and Liminf
- For bounded sequence, set of subsequential limits is nonempty (BW) and bounded
- Definition via subsequential limits: limsup = largest, liminf = smallest
- Alternative definition via tails: limsup = lim(sup of tail), liminf = lim(inf of tail)
- Prove these agree
- Theorem: limsup is achieved (some subsequence converges to it)
- Theorem: convergence ⟺ limsup = liminf
- Examples: compute limsup/liminf for oscillating sequences

---

### 3.4 The Cauchy Criterion
- Observation: limsup = liminf means "tail oscillation" → 0
- Define tail oscillation ωₙ = sup(tail) - inf(tail)
- ωₙ → 0 ⟺ convergence
- Unpack: ωₙ < ε means all pairs j, k ≥ n satisfy |aⱼ - aₖ| < ε
- This *is* the Cauchy condition — derived naturally from limsup/liminf!
- Definition: Cauchy sequence
- Theorem: convergent ⟺ Cauchy
- Proof sketch (⟸): Cauchy ⟹ bounded ⟹ BW ⟹ convergent subsequence ⟹ whole sequence converges
- Significance: intrinsic (examines only the sequence), metric (uses distance, not order)

---

### 3.5 The Many Faces of Completeness
- Completeness has appeared as:
  1. LUB (axiom)
  2. MCT
  3. Nested Intervals
  4. Bolzano-Weierstrass
  5. Cauchy completeness
- Theorem: for an ordered field, all five are equivalent
- Sketch the equivalence cycle (or key implications)
- Why it matters: Cauchy generalizes to metric spaces without order
- Historical note: Cantor's construction of ℝ via Cauchy sequences of rationals

---

