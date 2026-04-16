## §7.2 The Mean Value Theorem

### Narrative

- The derivative is defined locally, but the MVT connects it to global behavior
- The chain: Fermat (local extrema) → Rolle → MVT → Cauchy MVT
- Payoff: $f'$ controls $f$ — constant, increasing/decreasing, Lipschitz, L'Hôpital
- Darboux's theorem (guided exercise) reveals that derivatives are an unusual class of functions: they always satisfy the IVP, even when discontinuous

### Content

*(Opening — unnumbered)*
- The derivative tells us about $f$ at a single point; can it control $f$ on an entire interval?
- The Mean Value Theorem says yes: somewhere on the interval, the instantaneous rate of change equals the average rate of change
- Historical note: Rolle (1691) proved his theorem for polynomials; the general MVT is attributed to Cauchy (1823) and Bonnet; Darboux (1875) discovered the surprising intermediate value property of derivatives

### A First Step
- Theorem (Fermat): If $f$ has a local extremum at $c$ and $f$ is differentiable at $c$, then $f'(c) = 0$ (prove in text: one-sided difference quotients have opposite signs, both must equal $f'(c)$)
- Remark: converse is false — $f(x) = x^3$ has $f'(0) = 0$ but no extremum at $0$
- ✎ Inline: Why does the proof require a *local* extremum, not just $f'(c) = 0$?
- Theorem (Rolle): $f$ continuous on $[a,b]$, differentiable on $(a,b)$, $f(a) = f(b)$ $\Longrightarrow$ $\exists c \in (a,b)$ with $f'(c) = 0$ (prove in text: if $f$ constant, any $c$ works; otherwise EVT gives max or min in interior, then apply Fermat)
- ✎ Inline: Where does the proof use each hypothesis — continuity on $[a,b]$, differentiability on $(a,b)$, $f(a) = f(b)$?

### The Mean Value Theorem
- Theorem (MVT): $f$ continuous on $[a,b]$, differentiable on $(a,b)$ $\Longrightarrow$ $\exists c \in (a,b)$ with $f'(c) = \frac{f(b) - f(a)}{b - a}$ (prove in text: apply Rolle to $g(x) = f(x) - \frac{f(b)-f(a)}{b-a}(x - a)$)
- Geometric interpretation: some tangent line is parallel to the secant through $(a, f(a))$ and $(b, f(b))$
- ✎ Inline: Verify the MVT for $f(x) = x^3$ on $[0, 2]$: find $c$ explicitly
- Theorem (Cauchy's MVT): $f, g$ continuous on $[a,b]$, differentiable on $(a,b)$ $\Longrightarrow$ $\exists c \in (a,b)$ with $(f(b) - f(a))g'(c) = (g(b) - g(a))f'(c)$ (prove in text: apply Rolle to $h(x) = (f(b)-f(a))g(x) - (g(b)-g(a))f(x)$)
- Remark: reduces to MVT when $g(x) = x$
- Remark: the motivation for this generalization is L'Hôpital's rule below

### Consequences of the MVT
- Theorem: $f$ differentiable on $(a,b)$ with $f' = 0$ $\Longrightarrow$ $f$ constant (prove in text: for any $x, y$, MVT gives $f(x) - f(y) = f'(c)(x-y) = 0$)
- Corollary: if $f' = g'$ on an interval, then $f = g + C$ for some constant $C$
- Theorem: $f' > 0$ on $(a,b)$ $\Longrightarrow$ $f$ strictly increasing (prove in text via MVT)
- Theorem: $f' \geq 0$ $\Longleftrightarrow$ $f$ increasing; $f' \leq 0$ $\Longleftrightarrow$ $f$ decreasing
- Remark: local information (sign of $f'$) determines global behavior (monotonicity) — this is what makes the derivative useful
- Definition: $f$ is *Lipschitz* with constant $K$ if $|f(x) - f(y)| \leq K|x - y|$ for all $x, y$
- Theorem: If $|f'(x)| \leq K$ on an interval, then $f$ is Lipschitz with constant $K$ (prove in text via MVT)
- Corollary: Lipschitz $\Longrightarrow$ uniformly continuous (callback to §6.5)
- Remark: if $|f'| < 1$ on an interval, then $f$ is a contraction (callback to §4.3; used in §7.5)
- ✎ Inline: Show $\sin$ is Lipschitz with constant 1 (students may use $|\cos x| \leq 1$ from calculus; rigorous treatment in §7.3)

### L'Hôpital's Rule
- Theorem (0/0 form): If $f(a) = g(a) = 0$, $g'(x) \neq 0$ near $a$, and $\lim_{x \to a} f'(x)/g'(x) = L$, then $\lim_{x \to a} f(x)/g(x) = L$ (prove in text via Cauchy MVT)
- Warning: the hypothesis is that $\lim f'/g'$ exists; L'Hôpital does not apply otherwise
- Warning: L'Hôpital can cycle — applying it to $x/\sqrt{x^2+1}$ gives $1/\sqrt{1 + 1/x^2} \cdot \ldots$ which is no simpler

### Guided Exercise

### Darboux's Theorem and Discontinuous Derivatives

Derivatives are a peculiar class of functions: they always satisfy the intermediate value property, even when they are discontinuous. This is Darboux's theorem (1875).

(a) Let $f$ be differentiable on $[a,b]$ with $f'(a) < k < f'(b)$. Define $g(x) = f(x) - kx$. Show $g'(a) < 0 < g'(b)$.

(b) Show $g$ attains its minimum on $[a,b]$ (which theorem?), and that the minimum cannot occur at $a$ or $b$ (use the signs of $g'(a)$ and $g'(b)$).

(c) Conclude: $g'(c) = 0$ for some $c \in (a,b)$, hence $f'(c) = k$. This is Darboux's theorem.

(d) Corollary: derivatives cannot have jump discontinuities. Explain why.

(e) Now exhibit a discontinuous derivative that satisfies the IVP. Let $f(x) = x^2 \sin(1/x)$ for $x \neq 0$, $f(0) = 0$. Compute $f'(x)$ for $x \neq 0$ (using standard rules; students may use known properties of $\sin$ and $\cos$) and $f'(0)$ from the definition.

(f) Show $f'$ is discontinuous at $0$: the $\cos(1/x)$ term oscillates. Yet by Darboux, $f'$ must satisfy the IVP.

(g) Reflection: what kinds of discontinuities *can* a derivative have?

### Exercises

*Applying the MVT*
- Find $c$ explicitly for $f(x) = \sqrt{x}$ on $[1, 4]$
- Prove: $|\sin x - \sin y| \leq |x - y|$ for all $x, y$ (students may use $|\cos| \leq 1$ from calculus)
- Prove: if $f'(x) \neq 0$ for all $x \in (a,b)$, then $f$ is injective on $(a,b)$

*Derivative tests*
- First derivative test: if $f'$ changes from positive to negative at $c$, then $f$ has a local maximum at $c$ (and vice versa)
- Second derivative test: if $f'(c) = 0$ and $f''(c) > 0$, then $f$ has a local minimum at $c$; if $f''(c) < 0$, local maximum
- Give an example where $f'(c) = 0$ and $f''(c) = 0$ and $c$ is a local minimum; another where it is neither

*Convexity*
- Definition: $f$ is *convex* on an interval if $f(\lambda x + (1-\lambda)y) \leq \lambda f(x) + (1-\lambda)f(y)$ for all $x, y$ and $\lambda \in [0,1]$
- Prove: if $f$ twice differentiable, then $f$ convex $\Longleftrightarrow$ $f'' \geq 0$
- Prove: $f$ convex $\Longrightarrow$ $f(y) \geq f(x) + f'(x)(y - x)$ (tangent lines lie below graph)
- Prove: $f$ convex on open interval $\Longrightarrow$ $f$ continuous
- Prove Jensen's inequality: if $f$ convex and $\lambda_1 + \cdots + \lambda_n = 1$ with $\lambda_i \geq 0$, then $f(\lambda_1 x_1 + \cdots + \lambda_n x_n) \leq \lambda_1 f(x_1) + \cdots + \lambda_n f(x_n)$
- (Deferred to Chapter 9) Derive AM-GM from Jensen applied to $f(x) = -\ln x$

*L'Hôpital extensions*
- Prove L'Hôpital for the $\infty/\infty$ form
- Prove L'Hôpital as $x \to \infty$
- Evaluate specific limits using L'Hôpital

*Harder*
- Construct $f$ with $f'$ discontinuous but bounded
- ★ Prove: if $f$ is differentiable on $[a,b]$ and $f'$ is monotone, then $f'$ is continuous (hint: Darboux + monotone means no oscillatory discontinuities)

### Dependencies

**Requires**: §6.4 (EVT — for Rolle/MVT), §6.5 (uniform continuity — for Lipschitz connection), §7.1 (differentiability, chain rule)

**Used in**: §7.3 (Taylor's theorem uses MVT repeatedly), §7.4 (identifying exp), §7.5 (Newton's method uses Lipschitz/contraction)
