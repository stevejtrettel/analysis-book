## $\bigstar$ The Daniell Extension



**The Plan**

- Two stages: first close under monotone limits, then close under subtraction
- Must verify the extension still satisfies integral properties
- Must verify MCT survives the second extension

**Dini's Theorem**

- Lemma: If $f_n \in C[a,b]$ and $f_n \searrow 0$ pointwise, then $I(f_n) \to 0$
- Key technical tool bridging pointwise convergence to integral convergence
- Proof uses compactness of $[a,b]$

**Upper Functions**

- Definition: $f \in L^\uparrow$ if $f_n \in C[a,b]$ with $f_n \nearrow f$ pointwise
- Examples: continuous functions, $\chi_{(a,b]}$
- Define $I^+(f) = \lim I(f_n)$

**Well-Definedness of $I^+$**

- Must show: different approximating sequences give same answer
- Key Lemma: If $f_n \nearrow f$ and $g \in C[a,b]$ with $g \leq f$, then $I(g) \leq \lim I(f_n)$
- Proof uses Dini's theorem on the gap $h_n = g - (f_n \wedge g) \searrow 0$
- Corollary: $I^+$ well-defined

**Properties of $I^+$**

- Extension: agrees with $I$ on $C[a,b]$
- Monotonicity: $f \leq g \Rightarrow I^+(f) \leq I^+(g)$
- Additive: $I^+(f + g) = I^+(f) + I^+(g)$
- Positive homogeneity: $c \geq 0 \Rightarrow I^+(cf) = c \, I^+(f)$
- MCT for $L^\uparrow$: $f_n \in L^\uparrow$, $f_n \nearrow f$, $\sup I^+(f_n) < \infty \Rightarrow f \in L^\uparrow$ and $I^+(f_n) \to I^+(f)$

**The Linearity Problem**

- $L^\uparrow$ is a cone, not a vector space
- Closed under addition and positive scalars
- Not closed under subtraction: if $f_n \nearrow f$, then $-f_n \searrow -f$ (wrong direction)
- We need subtraction for basic analysis

**Integrable Functions**

- Definition: $f \in L^1$ if $f = g - h$ for some $g, h \in L^\uparrow$ with $I^+(g), I^+(h) < \infty$
- Define $I(f) = I^+(g) - I^+(h)$
- Must verify well-defined: if $g_1 - h_1 = g_2 - h_2$, then $I^+(g_1) - I^+(h_1) = I^+(g_2) - I^+(h_2)$
- Proof: $g_1 + h_2 = g_2 + h_1$, both in $L^\uparrow$, apply additivity

**Properties of $I$ on $L^1$**

- $L^1$ is a vector space
- $I$ is linear
- Extension, monotonicity, interval additivity inherited

**MCT Survives**

- Key Lemma: If $f \in L^1$ and $f \geq 0$, then $f \in L^\uparrow$
- Theorem (MCT for $L^1$): $f_n \in L^1$, $f_n \nearrow f$, $\sup I(f_n) < \infty \Rightarrow f \in L^1$ and $I(f_n) \to I(f)$
- Proof: WLOG $f_n \geq 0$ (subtract $f_1$), apply key lemma, use MCT for $L^\uparrow$

**What We've Built**

- An integral on $L^1 \supset C[a,b]$
- Satisfies original properties plus linearity plus MCT
- Next: harvest the consequences