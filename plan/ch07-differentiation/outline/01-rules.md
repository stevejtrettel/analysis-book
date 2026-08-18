## §7.1 Differentiation Rules

### Narrative

- The derivative asks: how well does a linear function approximate $f$ near a point?
- This section builds the basic toolkit: definition, relationship to continuity, algebraic rules, chain rule, inverse function derivative
- By the end we can differentiate anything built from elementary operations — specific functions ($\exp$, $\sin$, $\cos$) require §7.3–7.4

### Content

*(Opening — unnumbered)*
- Brief motivation: Fermat's optimization idea, Newton/Leibniz tangent slopes, now we have limits to make it precise

### The Derivative
- Definition: $f$ differentiable at $a$ if $f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$ exists
- Equivalent form: $\lim_{x \to a} \frac{f(x) - f(a)}{x - a}$
- Notation: $f'(a)$, $\frac{df}{dx}\big|_{x=a}$, $Df(a)$
- The tangent line: $y = f(a) + f'(a)(x - a)$
- Definition: $f$ differentiable on an interval $I$ if differentiable at every point of $I$; $f'$ is then a function on $I$
- Definition: if $f'$ is itself differentiable, $f'' = (f')'$ is the *second derivative*; iterate to get $f^{(n)}$. Notation: $f^{(0)} = f$
- One-sided derivatives: $f'_+(a)$, $f'_-(a)$; differentiable iff both exist and agree
- Examples: $f(x) = c$ (compute: $f'(a) = 0$), $f(x) = x$ ($f'(a) = 1$), $f(x) = x^2$ ($f'(a) = 2a$, compute from definition), $f(x) = 1/x$ ($f'(a) = -1/a^2$)
- ✎ Inline: Compute $f'(a)$ for $f(x) = x^3$ directly from the definition

### Differentiability Implies Continuity
- Theorem: $f$ differentiable at $a$ $\Longrightarrow$ $f$ continuous at $a$ (prove in text: write $f(x) - f(a) = \frac{f(x)-f(a)}{x-a} \cdot (x-a) \to f'(a) \cdot 0 = 0$)
- Warning: converse false — $|x|$ at $0$ (continuous, corner, one-sided derivatives $-1$ and $+1$ differ)
- ✎ Inline: Compute $f'_+(0)$ and $f'_-(0)$ for $f(x) = |x|$
- Remark: The gap is vast; Takagi's function (§7.3) is continuous everywhere, differentiable nowhere

### The Algebraic Rules
- Theorem (Linearity): $(f + g)' = f' + g'$, $(cf)' = cf'$ (prove in text: direct from limit laws)
- Theorem (Product Rule): $(fg)' = f'g + fg'$ (prove in text: add-subtract trick $f(a)g(x)$; uses differentiability $\Rightarrow$ continuity for $f$)
- Theorem (Quotient Rule): $(f/g)' = (f'g - fg')/g^2$ when $g(a) \neq 0$
- ✎ Inline: Derive quotient rule from product rule and the derivative of $1/g$
- Theorem (Power Rule): $(x^n)' = nx^{n-1}$ for $n \in \NN$ (prove in text: induction via product rule, or factor $x^n - a^n$); extends to $n \in \ZZ$ via quotient rule
- Corollary: polynomials differentiable on $\RR$; rational functions differentiable on their domain

### The Chain Rule
- Theorem: $(f \circ g)'(a) = f'(g(a)) \cdot g'(a)$ (prove in text)
- Leibniz notation: $\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$
- Note the subtlety: the naive proof divides by $g(x) - g(a)$, which may be zero; the correct proof defines $\varphi(t) = \frac{f(t) - f(g(a))}{t - g(a)}$ for $t \neq g(a)$, $\varphi(g(a)) = f'(g(a))$; then $\varphi$ is continuous at $g(a)$ and $f(g(x)) - f(g(a)) = \varphi(g(x)) \cdot (g(x) - g(a))$ for all $x$
- ✎ Inline: Carry out the division by $x - a$ and take limits to finish the proof

### The Inverse Function Derivative
- Setup: $f$ continuous, strictly monotone on interval $I$; $f^{-1}$ exists and is continuous by §6.4
- Theorem: If $f'(a) \neq 0$, then $(f^{-1})'(f(a)) = 1/f'(a)$ (prove in text: with $y = f(x)$, $b = f(a)$, write $\frac{f^{-1}(y) - f^{-1}(b)}{y - b} = \frac{1}{(f(x)-f(a))/(x-a)}$; continuity of $f^{-1}$ gives $x \to a$ as $y \to b$)
- Leibniz notation: $\frac{dx}{dy} = \frac{1}{dy/dx}$
- Example: $(\sqrt{x})' = 1/(2\sqrt{x})$; $(x^{1/n})' = \frac{1}{n}x^{1/n - 1}$
- Corollary: power rule extends to rational exponents: $(x^{p/q})' = \frac{p}{q} x^{p/q - 1}$
- ✎ Inline: Derive $(\sqrt[3]{x})'$ from the inverse function theorem

### Guided Exercise

### The Linear Approximation Perspective (Carathéodory)

(a) Show $f$ differentiable at $a$ iff there exists $\varphi$ continuous at $a$ with $f(x) - f(a) = \varphi(x)(x - a)$; then $f'(a) = \varphi(a)$.

(b) Reprove the chain rule cleanly using (a): compose the factorizations for $f$ and $g$.

(c) Reprove the product rule using (a).

### Exercises

*Direct computation*
- $f'(a)$ from the definition for $f(x) = x^4$, $f(x) = 1/(x+1)$, $f(x) = \sqrt{2x+1}$

*Differentiability and continuity*
- Show $f(x) = x^2 \sin(1/x)$ (with $f(0) = 0$) is differentiable at $0$ with $f'(0) = 0$, but $f'$ is not continuous at $0$. (Students may use known properties of $\sin$ and $\cos$ from calculus; rigorous treatment in §7.3.)
- Show $f(x) = x|x|$ is differentiable everywhere; find $f'$
- Give an example of $f$ differentiable on $\RR$ with $f'$ discontinuous at a point

*Algebraic rules*
- General Leibniz rule: $(fg)^{(n)} = \sum_{k=0}^{n} \binom{n}{k} f^{(k)} g^{(n-k)}$
- Prove power rule by induction using product rule
- Product rule for three functions: $(fgh)' = ?$
- Prove: $f$ differentiable at $a$ and $f(a) \neq 0$ $\Longrightarrow$ $1/f$ differentiable at $a$

*Chain rule and inverse*
- If $f(f(x)) = x$ for all $x$ and $f$ differentiable, what can you say about $f'(x)$?
- Extend the power rule to rational exponents via inverse function derivative

*Harder*
- ★ Show: $f(x) = x + 2x^2 \sin(1/x)$ (with $f(0) = 0$) has $f'(0) = 1 > 0$, yet $f$ is not increasing on any interval containing $0$. (May use known properties of $\sin$, $\cos$.)
- ★ If $f$ differentiable on $(a,b)$ and $f'$ bounded, show $f$ is Lipschitz (preview of §7.2)

### Dependencies

**Requires**: §2.2–2.3 (limits, limit laws), §6.1 (continuity, function limits), §6.2 (algebra of continuous functions), §6.4 (monotone inverses)

**Used in**: All subsequent sections of this chapter
