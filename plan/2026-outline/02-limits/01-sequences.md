## Sequences and Series

### Narrative

- Chapter 1: $\RR$ is uncountable, finite descriptions are countable
- **Key insight**: Infinite processes bridge the gap
- Historical examples show sequences as tools in action — before we even define them
- Formal definition: what these examples have in common
- Series and products are secretly sequences — find closed form for $S_n$ or $P_n$
- Geometric and telescoping examples show how to collapse infinite sums/products into sequences
- The question: we have $S_n$ as a sequence, but what happens as $n \to \infty$?

### Content

- Chapter 1 showed $\RR$ uncountable, finite descriptions countable
- Infinite processes bridge the gap
- Sequences let us *name* numbers we can't write down finitely
- Preview: every real is limit of a sequence of rationals (proved in §2.3)

### Historical Examples: Sequences in Action
- *Archimedes and the parabola*: area under parabola via inscribed triangles
  - Total area: $T + T/4 + T/16 + \cdots$
  - Partial sums $S_n = T(1 + 1/4 + \cdots + 1/4^n)$ — Archimedes claimed $S = 4T/3$
- *Babylonians and $\sqrt{2}$* (~1800 BCE): 
  - Clay tablet shows approximation $1;24,51,10$ in base 60
  - Algorithm: $x_1 = 2$, $x_{n+1} = (x_n + 2/x_n)/2$
  - Compute: $x_2 = 1.5$, $x_3 = 1.4167\ldots$, $x_4 = 1.41422\ldots$
  - Clearly "approaches" $\sqrt{2}$ — but what does that mean?
- Both produce lists of numbers that seem to approach a value
- What do these examples have in common?

### What Is a Sequence?
- Definition: a sequence is a function $a: \NN \to \RR$; write $a_n$ for $a(n)$
- Notation: $(a_n)$ or $(a_1, a_2, a_3, \ldots)$
- Two ways to specify: closed form (e.g., $a_n = 1/n$) vs recursive (e.g., $a_{n+1} = f(a_n)$)
- The Babylonian example is recursive; Archimedes' partial sums have a closed form (we'll find it)

### Series and Products as Sequences
- A series $\sum a_n$ is really the sequence of partial sums $S_n = a_1 + \cdots + a_n$
- A product $\prod a_n$ is really the sequence of partial products $P_n = a_1 \cdots a_n$
- To understand a series or product, find a closed form for $S_n$ or $P_n$
- Then ask: what happens to this sequence as $n \to \infty$?

*Geometric partial sums*
- Goal: closed form for $S_n = 1 + r + r^2 + \cdots + r^n$
- Trick: $S_n - rS_n = 1 - r^{n+1}$
- Theorem: For $r \neq 1$: $S_n = \frac{1 - r^{n+1}}{1 - r}$ (prove in text)
- This resolves Archimedes: $S_n = T \cdot \frac{1 - (1/4)^{n+1}}{1 - 1/4}$

*Telescoping sums and products*
- Idea: consecutive terms cancel, leaving only endpoints
- Sums: if $a_k = t_k - t_{k-1}$, then $S_n = t_n - t_0$
- Products: if $a_k = t_k / t_{k-1}$, then $P_n = t_n / t_0$
- Example: $\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1}$, so $\sum_{k=1}^{n} \frac{1}{k(k+1)} = 1 - \frac{1}{n+1}$
- Example: $1 - \frac{1}{k^2} = \frac{(k-1)(k+1)}{k^2}$ telescopes to give $\prod_{k=2}^{n}(1 - 1/k^2) = \frac{n+1}{2n}$
- ✎ Inline: Verify the partial fractions $\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1}$
- ✎ Inline: Verify that $\prod_{k=1}^{n}(1 + 1/k) = n + 1$

### The Question
- We have closed forms: $S_n = \frac{1 - r^{n+1}}{1-r}$, $S_n = 1 - \frac{1}{n+1}$, $P_n = \frac{n+1}{2n}$
- We have the Babylonian sequence: $1.5, 1.4167, 1.41422, \ldots$
- What happens as $n \to \infty$? What does "$\to$" mean?
- This is **convergence** — next section

### Guided Exercises

None for this section.

### Exercises

- Prove the geometric partial sum formula by induction
- Compute the first 5 terms of the Babylonian sequence for $\sqrt{3}$
- (Pell structure) Write $x_n = p_n/q_n$ for the Babylonian sequence with $x_1 = 2/1$. Show that $p_{n+1} = p_n + 2q_n$ and $q_{n+1} = p_n + q_n$. Compute $(p_n, q_n)$ for $n = 1, 2, 3, 4, 5$. Show that $p_n^2 - 2q_n^2 = (-1)^n \cdot 2$ for all $n \geq 1$.

### Dependencies

**Requires**: §1.5 (uncountability of $\RR$, existence of $\sqrt{2}$)

**Used in**: §2.2 (convergence definition), §2.3 (geometric series sum), §2.4 (Babylonian convergence)