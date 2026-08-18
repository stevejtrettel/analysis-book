## $\bigstar$ Completing Spaces


**Theme:** We can BUILD complete spaces. This finally delivers on the promise from Chapter 1.

**The construction**

- Start with $\mathbb{Q}$, a metric space that isn't complete
- Consider all Cauchy sequences in $\mathbb{Q}$
- Define equivalence: $(a_n) \sim (b_n)$ if $|a_n - b_n| \to 0$
- Let $\tilde{\mathbb{Q}}$ = equivalence classes of Cauchy sequences

**Making it a metric space**

- For classes $[a_n]$, $[b_n]$: define $d([a_n], [b_n]) = \lim |a_n - b_n|$
- Check: limit exists (Cauchy sequences of rationals have rational limits... no wait, that's the problem)
- Fix: $|a_n - b_n|$ is Cauchy in $\mathbb{R}$... but we're constructing $\mathbb{R}$!
- Actual fix: $|a_n - b_n|$ is Cauchy in $\mathbb{Q}$ when both are Cauchy, and Cauchy sequences of rationals that would converge to the same real have $|a_n - b_n| \to 0$. The limit exists as an equivalence class.
- (This is subtle — details in guided exercises)

**Making it a field**

- Addition: $[a_n] + [b_n] = [a_n + b_n]$
- Multiplication: $[a_n] \cdot [b_n] = [a_n \cdot b_n]$
- Check: well-defined, satisfies field axioms

**Embedding $\mathbb{Q}$**

- Map $q \mapsto [(q, q, q, \ldots)]$ (constant sequence)
- This embeds $\mathbb{Q}$ in $\tilde{\mathbb{Q}}$
- The image is dense

**Completeness**

- Theorem: $\tilde{\mathbb{Q}}$ is complete
- Proof: A Cauchy sequence of equivalence classes can be represented by a "diagonal" Cauchy sequence in $\mathbb{Q}$
- (Details technical but not deep)

**This IS $\mathbb{R}$**

- $\tilde{\mathbb{Q}}$ is a complete ordered field containing $\mathbb{Q}$ densely
- By uniqueness of complete ordered field: $\tilde{\mathbb{Q}} \cong \mathbb{R}$
- We have BUILT the real numbers from the rationals!

**Other completions exist!**

- The completion depends on the metric
- The $p$-adic metric on $\mathbb{Q}$: $|x|_p = p^{-n}$ where $n$ is the largest power of $p$ dividing $x$
- "Close" means difference is divisible by high power of $p$
- Completion: $p$-adic numbers $\mathbb{Q}_p$
- Completely different from $\mathbb{R}$! (Totally disconnected, every triangle is isoceles, etc.)
- The metric determines the world

**Same construction elsewhere**

- $C[a,b]$ with $L^1$ norm is not complete
- Its completion is $L^1[a,b]$ (Lebesgue integrable functions)
- Connects to Chapter 10

*[Note: This entire section could be guided exercises for advanced students]*
