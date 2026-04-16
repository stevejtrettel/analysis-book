## Completeness

### Narrative

- Many infinite processes want a "target" — we need a way to name it
- Some are sequences: Babylonian √2, inscribed n-gon perimeters, nested intervals
- Some are sets with no natural ordering: all rationals with r² < 2, all inscribed polygons, all rectangles under a curve
- In each case: a collection of approximations, and we want the smallest number ≥ all of them
- This is the supremum — the least upper bound
- Completeness: every nonempty bounded set has a supremum
- This ONE property is what ℚ lacks and ℝ has
- The ε-characterization is the workhorse for arguments
- Nested intervals: the ancient method of trapping between bounds is now validated

### Content

*(Opening motivation — unnumbered)*

We've seen that ℚ has holes — numbers that "should" exist but don't. Now we ask: what property would fill those holes?

Consider the many situations where we want to "complete" an infinite process:

*Sequences approaching a target:*
- Babylonian iteration for √2: $a_1 = 1$, $a_{n+1} = \frac{1}{2}(a_n + 2/a_n)$ — each $a_n$ is rational, approaching something
- Inscribed regular n-gons: perimeters $P_6, P_{12}, P_{24}, \ldots$ approaching the circumference
- Bisection for √2: nested intervals $[1, 2] \supset [1.4, 1.5] \supset [1.41, 1.42] \supset \cdots$
- Archimedes' bounds: $3\frac{10}{71} < \pi < 3\frac{1}{7}$, refining with each polygon doubling

*Sets with no natural ordering:*
- $\{r \in \QQ : r^2 < 2\}$ — all rationals whose square is less than 2
- All inscribed polygons in a circle (not just regular n-gons — any polygon)
- All polygonal paths inscribed in a curve
- All rectangles contained under a curve $y = f(x)$

In each case, we have a collection of "approximations from below," and we want the *target* — the number they're all pointing toward.

For a finite set, we'd take the maximum. But these are infinite sets, and the maximum may not exist (there may be no largest element).

What we want: the *smallest number that's ≥ all elements of the set*.

This is the **supremum**.

### Bounds and Supremum
- Definition: $M$ is an *upper bound* for $S$ if $x \leq M$ for all $x \in S$
- Definition: $S$ is *bounded above* if it has an upper bound; *bounded below*, *bounded* similarly
- Definition: $M = \sup S$ (supremum, or least upper bound) if:
  - $M$ is an upper bound for $S$, and
  - No number smaller than $M$ is an upper bound
- Definition: $m = \inf S$ (infimum, or greatest lower bound) — analogous
- Theorem: Supremum is unique (if it exists)
- Convention for unbounded sets:
  - If $S$ is nonempty and unbounded above, write $\sup S = +\infty$
  - If $S$ is nonempty and unbounded below, write $\inf S = -\infty$
  - With this convention, every nonempty set has a sup and inf (possibly $\pm\infty$)
- Examples: $\sup\{1 - 1/n : n \in \NN\} = 1 \notin S$; $\sup[0,1] = 1 \in S$; $\sup(0,1) = 1 \notin S$
- Examples: $\sup \NN = +\infty$; $\inf \NN = 1$; $\sup \ZZ = +\infty$; $\inf \ZZ = -\infty$
- Key example: $S = \{r \in \QQ : r^2 < 2\}$ is bounded above in $\QQ$ (e.g., by 2) but has no sup in $\QQ$
- This is how holes manifest: bounded sets without least upper bounds
- Definition: An ordered field is *complete* if every nonempty set bounded above has a supremum
- The Real Numbers: We define $\RR$ to be a complete ordered field
- Remark: $\QQ$ satisfies all field and order axioms but not completeness — this ONE property is what it lacks
- Theorem: In a complete ordered field, infima also exist
- Proof: $\inf S = -\sup(-S)$ where $-S = \{-x : x \in S\}$

### The ε-Characterization
- Theorem: $M = \sup S$ if and only if:
  - (1) $M$ is an upper bound for $S$, and
  - (2) For all $\varepsilon > 0$, there exists $x \in S$ with $x > M - \varepsilon$
- Proof in text
- Interpretation: you can get arbitrarily close to sup from below using elements of $S$
- This is the workhorse for supremum arguments throughout the course
- ✎ Inline: Verify $\sup\{1 - 1/n : n \in \NN\} = 1$ using the ε-characterization
- Theorem: ε-characterization of inf (analogous)

### Working with Suprema
- Theorem: $\sup(S + c) = \sup S + c$ where $S + c = \{x + c : x \in S\}$
- Theorem: $\sup(cS) = c \cdot \sup S$ for $c > 0$
- ✎ Inline: Prove $\sup(cS) = c \cdot \sup S$ for $c > 0$
- Theorem: $A \subseteq B \Rightarrow \sup A \leq \sup B$
- Theorem: $\sup(A \cup B) = \max\{\sup A, \sup B\}$
- Analogous results for inf

### The Nested Interval Property
- The ancients used a powerful technique: trap the target between upper and lower bounds, then squeeze
- Babylonians: rectangle sides approaching √2 from above and below
- Archimedes: inscribed polygon < circumference < circumscribed polygon
- Bisection: $a_n < \sqrt{2} < b_n$ with $b_n - a_n \to 0$
- They trusted this method worked — now we can prove it
- Definition: Intervals $I_1 \supseteq I_2 \supseteq I_3 \supseteq \cdots$ are *nested*
- Theorem (Nested Interval Property): If $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \cdots$ are nested closed intervals in a complete ordered field, then $\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset$
- Proof: Let $L = \sup\{a_n\}$. Show $L \leq b_n$ for all $n$. Then $L \in [a_n, b_n]$ for all $n$.
- Theorem: If also the lengths $b_n - a_n$ become arbitrarily small, the intersection is exactly one point
- Remark: This is what completeness guarantees — the trapping method always works
- Remark: Open intervals can have empty intersection even when nested (example: $(0, 1/n)$)
- Remark: In $\QQ$, nested closed intervals can have empty intersection — completeness fails

### Looking Ahead
- With completeness, we can finally make rigorous definitions
- §1.4: √n exists for all n; decimal expansions make sense; ℝ is uncountable
- §1.5: Lengths of curves, areas of regions, angles — all defined via suprema, now guaranteed to exist

### Guided Exercise

### The Babylonian Square Root

The Babylonians (~1800 BCE) discovered an algorithm for approximating $\sqrt{2}$. Starting with a $2 \times 1$ rectangle (area 2), repeatedly replace it with a more "square-like" rectangle of the same area: the new width is the average of the old width and height.

Let $w_1 = 2$, $h_1 = 1$, and for $n \geq 1$:
$$w_{n+1} = \frac{w_n + h_n}{2}, \qquad h_{n+1} = \frac{2}{w_{n+1}}$$

We prove that the intervals $[h_n, w_n]$ are nested and shrink to $\sqrt{2}$.

*Part I: The bounds*

(a) Verify that $w_n h_n = 2$ for all $n$ (the area is always 2).

(b) Using AM-GM, show that $w_{n+1} = \frac{w_n + 2/w_n}{2} \geq \sqrt{2}$ for any $w_n > 0$.

(c) Conclude that $w_n \geq \sqrt{2}$ for all $n \geq 2$, and therefore $h_n = 2/w_n \leq \sqrt{2}$.

(d) Explain why this means $\sqrt{2} \in [h_n, w_n]$ for all $n \geq 2$.

*Part II: The nesting*

(e) Show that $(w_n)$ is decreasing for $n \geq 2$: use $w_{n+1} = \frac{w_n + h_n}{2}$ and $h_n \leq w_n$.

(f) Show that $(h_n)$ is increasing for $n \geq 2$: use $h_n = 2/w_n$ and $(w_n)$ decreasing.

(g) Conclude that $[h_{n+1}, w_{n+1}] \subseteq [h_n, w_n]$ for all $n \geq 2$.

*Part III: The shrinking gap*

Let $e_n = w_n - h_n$ denote the gap.

(h) Show that $w_{n+1}^2 - 2 = \frac{(w_n - h_n)^2}{4}$.
*Hint:* Expand $w_{n+1}^2 = \left(\frac{w_n + h_n}{2}\right)^2$ and use $w_n h_n = 2$.

(i) Using $w_{n+1} - h_{n+1} = \frac{w_{n+1}^2 - 2}{w_{n+1}}$, show that $e_{n+1} = \frac{e_n^2}{4w_{n+1}}$.

(j) Since $w_{n+1} \geq 1$, conclude that $e_{n+1} \leq \frac{e_n^2}{4}$.

(k) Verify that $e_2 < 1$. Then show by induction that $e_n \leq \frac{1}{4^{n-2}}$ for $n \geq 2$.

(l) Using the Archimedean property, explain why for any $\varepsilon > 0$, there exists $n$ with $e_n < \varepsilon$.

*Part IV: Conclusion*

(m) Apply the Nested Interval Property to conclude that $\bigcap_{n=2}^{\infty} [h_n, w_n]$ contains at least one point $c$.

(n) Explain why the intersection contains *exactly* one point.

(o) Show that $w_n^2 - 2 = w_n \cdot e_n$ and $2 - h_n^2 = h_n \cdot e_n$.

(p) Using the bounds $w_n \leq w_2$ and $h_n \leq w_2$, show that both $w_n^2 - 2$ and $2 - h_n^2$ become arbitrarily small.

(q) Since $h_n^2 \leq c^2 \leq w_n^2$ and both approach 2, conclude that $c^2 = 2$.
*Hint:* If $c^2 \neq 2$, then $|c^2 - 2| > 0$. Derive a contradiction.

(r) Conclude: $c = \sqrt{2}$, and the Babylonian algorithm traps $\sqrt{2}$ in nested intervals.

### Exercises

*Infimum*
- Prove uniqueness of inf
- State and prove the ε-characterization of inf
- Prove: in a complete ordered field, every nonempty set bounded below has an infimum

*Working with sup and inf*
- Prove: $A \subseteq B \Rightarrow \sup A \leq \sup B$
- Prove: $\sup(cS) = c \cdot \inf S$ for $c < 0$
- Prove: $\sup(A \cup B) = \max\{\sup A, \sup B\}$
- Prove: if $\sup A < \sup B$, then some $b \in B$ is an upper bound for $A$

*Finding sup and inf*
- Find sup and inf: $[1,3]$, $[1,3)$, $(1,3)$, $\{1/n : n \in \NN\}$
- Find sup and inf: $\{(-1)^n / n : n \in \NN\}$
- Find sup and inf: $\{n/(n+1) : n \in \NN\}$
- Find sup and inf: $\{r \in \QQ : r^2 < 3\}$ (in $\RR$)

*Nested intervals*
- Give an example of nested open intervals with empty intersection
- Prove: if $\sup\{a_n\} = \inf\{b_n\}$, then $\bigcap [a_n, b_n]$ is exactly one point
- Construct nested closed intervals in $\QQ$ with empty intersection

*Equivalences*
- ★ Prove: sup-completeness is equivalent to inf-completeness

### Dependencies

**Requires**: §1.1 (ordered fields), §1.2 (motivation from $\QQ$'s incompleteness)

**Used in**: §1.4 (roots, decimals), §1.5 (lengths, areas, angles defined via sup)