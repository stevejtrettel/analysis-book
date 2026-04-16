## The Cauchy Criterion

### Narrative

- Start from §3.2: convergence ⟺ limsup = liminf
- What does this mean? The gap between sup(tail) and inf(tail) shrinks to zero
- "Tail oscillation" → 0 is equivalent to convergence
- Unpack: terms in the tail are all getting close to *each other*
- This is a condition stated entirely in terms of the sequence — no limit mentioned!
- The Cauchy condition: for any ε, eventually all pairs of terms are within ε
- Key theorem: Cauchy ⟺ convergent (in ℝ)
- Significance: intrinsic test, generalizes to metric spaces

### Content

*(Opening motivation — not a numbered subsection)*
- Recall from §3.2: $a_n \to L$ iff $\limsup a_n = \liminf a_n = L$
- Equivalently: the gap $\overline{s}_n - \underline{s}_n \to 0$, where $\overline{s}_n = \sup\{a_k : k \geq n\}$, $\underline{s}_n = \inf\{a_k : k \geq n\}$
- Definition: tail oscillation $\omega_n = \overline{s}_n - \underline{s}_n$
- Theorem: $(a_n)$ converges iff $\omega_n \to 0$
- Question: what does $\omega_n < \varepsilon$ actually say?
- Answer: all terms in the $n$th tail lie within an interval of length $< \varepsilon$
- Equivalently: for all $j, k \geq n$, we have $|a_j - a_k| < \varepsilon$
- Key insight: this condition involves only the sequence itself — no limit appears!
- We can test whether a sequence "deserves to converge" without knowing where it converges to

### The Cauchy Condition
- Definition: $(a_n)$ is a Cauchy sequence if for every $\varepsilon > 0$, there exists $N$ such that for all $m, n \geq N$, $|a_m - a_n| < \varepsilon$
- Remark: "terms eventually stay close to each other"
- Remark: this is exactly the condition $\omega_n \to 0$ unpacked
- Examples:
  - $a_n = 1/n$ is Cauchy: for $m, n \geq N$, $|1/m - 1/n| \leq 1/N < \varepsilon$ if $N > 1/\varepsilon$
  - $a_n = (-1)^n$ is not Cauchy: $|a_{2k} - a_{2k+1}| = 2$ for all $k$
  - Partial sums $s_n = \sum_{k=1}^n 1/2^k$ are Cauchy (preview of series convergence)
- ✎ Inline: Verify directly that $a_n = n/(n+1)$ is Cauchy

### Cauchy Implies Convergent
- Theorem: In $\RR$, a sequence converges if and only if it is Cauchy (prove in text)
- Proof (⟹): If $a_n \to L$, then for $\varepsilon/2$, get $N$ so $|a_n - L| < \varepsilon/2$ for $n \geq N$. Then for $m, n \geq N$: $|a_m - a_n| \leq |a_m - L| + |L - a_n| < \varepsilon$
- Proof (⟸): This is the substantial direction.
  - Step 1: Cauchy ⟹ bounded (prove: fix $\varepsilon = 1$, get $N$; all terms within 1 of $a_N$; bound by $\max\{|a_1|, \ldots, |a_{N-1}|, |a_N| + 1\}$)
  - Step 2: Bounded ⟹ convergent subsequence (by BW)
  - Step 3: Cauchy + convergent subsequence ⟹ whole sequence converges
  - For step 3: let $a_{n_k} \to L$. Given $\varepsilon$, get $K$ so $|a_{n_k} - L| < \varepsilon/2$ for $k \geq K$, and $N$ so $|a_m - a_n| < \varepsilon/2$ for $m, n \geq N$. For $n \geq \max\{N, n_K\}$, pick $k$ with $n_k \geq N$ and $k \geq K$; then $|a_n - L| \leq |a_n - a_{n_k}| + |a_{n_k} - L| < \varepsilon$
- ✎ Inline: Why does the proof of (⟸) fail in $\QQ$? Which step uses completeness?
- Remark: the proof uses BW (hence nested intervals, hence completeness); Cauchy criterion fails in $\QQ$

### Significance
- The Cauchy criterion is *intrinsic*: it tests convergence using only the sequence, not the limit
- Practical: useful when we don't know what the limit should be
- Theoretical: the condition is *metric* — it uses only $|a_m - a_n|$, not the order structure of $\RR$
- This means Cauchy completeness generalizes: in any metric space, we can define Cauchy sequences and ask if they converge
- Definition: a metric space is *complete* if every Cauchy sequence converges
- $\RR$ is complete; $\QQ$ is not
- Historical note: Cantor constructed $\RR$ from $\QQ$ by "completing" it — adding limits of Cauchy sequences of rationals
- Remark: all five faces of completeness (LUB, MCT, Nested Intervals, BW, Cauchy) are equivalent in $\RR$ — see §3.4

### Guided Exercises

None for this section.

### Exercises

*Cauchy sequences*
- Prove directly that $a_n = 1 - 1/n$ is Cauchy
- Prove directly that $a_n = \sum_{k=1}^{n} 1/k!$ is Cauchy
- Prove that $a_n = \sum_{k=1}^{n} 1/k$ is not Cauchy (hint: show $|a_{2n} - a_n| \geq 1/2$; cf. §2.4)
- Prove: if $(a_n)$ is Cauchy, then so is $(|a_n|)$
- Prove: if $(a_n)$ and $(b_n)$ are Cauchy, then so is $(a_n + b_n)$

*The equivalence*
- Prove: every convergent sequence is Cauchy
- Prove: every Cauchy sequence is bounded
- Prove: if $(a_n)$ is Cauchy and has a subsequence converging to $L$, then $a_n \to L$

*Cauchy in ℚ*
- Construct a Cauchy sequence in $\QQ$ that does not converge in $\QQ$ (hint: approximate $\sqrt{2}$)
- The sequence $a_1 = 1$, $a_{n+1} = (a_n + 2/a_n)/2$ is Cauchy in $\QQ$. What does it converge to in $\RR$?

*Applications*
- Prove: if $|a_{n+1} - a_n| \leq r^n$ for some $0 < r < 1$, then $(a_n)$ is Cauchy (hence convergent)
- Use the previous result to prove the Babylonian sequence converges
- ★ Prove: if $|a_{n+1} - a_n| \leq c/n^2$ for some constant $c$, then $(a_n)$ is Cauchy

### Dependencies

**Requires**: §3.1 (BW), §3.2 (limsup/liminf, tail characterization)

**Used in**: §3.4 (equivalence of completeness notions), later chapters (series convergence tests)