## $\bigstar$ Baire Category


**Theme:** A genuinely new theorem that we couldn't even state before. Completeness implies "largeness."

**Nowhere dense sets**

- Definition: $A$ is nowhere dense if its closure has empty interior
- Equivalently: $A$ contains no ball
- Examples: $\mathbb{Z}$ in $\mathbb{R}$; any finite set; the Cantor set

**Meager and comeager sets**

- Meager (first category): countable union of nowhere dense sets
- Comeager (residual): complement of a meager set
- Comeager = countable intersection of open dense sets

**Baire Category Theorem**

- Theorem: A complete metric space is not meager
- Equivalently: The intersection of countably many open dense sets is dense
- Proof: Given open dense sets $U_1, U_2, \ldots$ and a ball $B_0$, construct nested balls $B_1 \supset B_2 \supset \cdots$ with $B_n \subset U_n$, radii $\to 0$. Completeness gives point in all $U_n$.

**The notion of "generic"**

- A property is generic if it holds on a comeager set
- In complete spaces: generic properties are "most" points
- Not the same as "full measure" — different notion of large

**Application: $\mathbb{R}$ is uncountable (new proof!)**

- If $\mathbb{R} = \{x_1, x_2, x_3, \ldots\}$, then $\mathbb{R} = \bigcup_n \{x_n\}$
- Each singleton is closed with empty interior (nowhere dense)
- So $\mathbb{R}$ would be meager
- But $\mathbb{R}$ is complete, so Baire says it's not meager
- Contradiction!
- Compare to Ch 1: different proof, same conclusion

**Application: No function is continuous exactly at $\mathbb{Q}$**

- For any $f: \mathbb{R} \to \mathbb{R}$, let $C_f$ = set of continuity points
- Fact: $C_f$ is always a $G_\delta$ set (countable intersection of open sets)
- Claim: $\mathbb{Q}$ is NOT $G_\delta$
- Proof: If $\mathbb{Q} = \bigcap_n U_n$ with $U_n$ open, each $U_n$ contains $\mathbb{Q}$ hence is dense. By Baire, $\bigcap U_n$ is dense. But $\mathbb{Q}$ is countable, hence not dense in any interval... wait, $\mathbb{Q}$ IS dense. Try again.
- Better proof: $\mathbb{Q}$ is meager (countable union of singletons). If $\mathbb{Q}$ were $G_\delta$, then $\mathbb{R} \setminus \mathbb{Q}$ would be $F_\sigma$, i.e., countable union of closed sets. The irrationals would be meager. Then $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ would be meager. Contradiction!
- Therefore no function has $\mathbb{Q}$ as its continuity set

**But: there IS a function continuous exactly at the irrationals**

- Thomae's ruler function: $f(p/q) = 1/q$ (in lowest terms), $f(\text{irrational}) = 0$
- Continuous at every irrational, discontinuous at every rational
- The asymmetry is explained by Baire!

**Foreshadow: Nowhere differentiable is generic**

- In Ch 12 we'll prove: the set of continuous functions differentiable at even one point is meager in $C[a,b]$
- "Most" continuous functions are nowhere differentiable
- Weierstrass's monster isn't pathological — it's typical!

*[Note: Guided exercises — prove $C_f$ is $G_\delta$; show other sets are/aren't $G_\delta$; explore Thomae function properties]*
