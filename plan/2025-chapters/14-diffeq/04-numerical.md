## Numerical Methods


**The Problem**

- Most ODEs can't be solved explicitly
- Need numerical approximation
- But does the approximation converge to the true solution?
- Analysis gives the answer

**Picard Iteration as Computation**

- Recall: $y_{n+1}(t) = y_0 + \int_0^t f(s, y_n(s))\, ds$
- This isn't just for existence proofs — it computes!

**Example: $y' = y$, $y(0) = 1$**

- $y_0(t) = 1$
- $y_1(t) = 1 + \int_0^t 1\, ds = 1 + t$
- $y_2(t) = 1 + \int_0^t (1 + s)\, ds = 1 + t + \frac{t^2}{2}$
- $y_n(t) = \sum_{k=0}^n \frac{t^k}{k!}$
- Limit: $e^t$
- We derived the Taylor series!

**Example: $y'' = -y$, $y(0) = 0$, $y'(0) = 1$**

- System: $y_1' = y_2$, $y_2' = -y_1$, with $(y_1(0), y_2(0)) = (0, 1)$
- Iterate:
  - $(y_1^{(0)}, y_2^{(0)}) = (0, 1)$
  - $y_1^{(1)} = t$, $y_2^{(1)} = 1$
  - $y_1^{(2)} = t$, $y_2^{(2)} = 1 - \frac{t^2}{2}$
  - $y_1^{(3)} = t - \frac{t^3}{6}$, $y_2^{(3)} = 1 - \frac{t^2}{2}$
  - $y_1^{(4)} = t - \frac{t^3}{6}$, $y_2^{(4)} = 1 - \frac{t^2}{2} + \frac{t^4}{24}$
- Limits: $\sin(t)$ and $\cos(t)$
- Taylor series emerges term by term!

**Euler's Method**

- Idea: Follow the tangent line
- $y_{n+1} = y_n + h f(t_n, y_n)$
- Step from $t_n$ to $t_{n+1} = t_n + h$
- Simple, explicit, easy to implement

**Local Truncation Error**

- True solution: $y(t + h) = y(t) + hy'(t) + \frac{h^2}{2}y''(\xi)$
- Euler gives: $y(t) + hf(t, y(t)) = y(t) + hy'(t)$
- Error per step: $O(h^2)$

**Global Error**

- $N = T/h$ steps to reach time $T$
- Naive bound: $N \times O(h^2) = O(h)$
- But errors propagate and compound!
- Need Gronwall to control accumulation

**Convergence Theorem for Euler's Method**

- Theorem: If $f$ is Lipschitz with constant $L$, and $y$ has bounded second derivative, then
$$\max_{0 \leq n \leq N} |y(t_n) - y_n| \leq Ch$$
where $C$ depends on $L$, $T$, and $\|y''\|_\infty$
- Proof outline:
  - Let $e_n = y(t_n) - y_n$
  - Local error: $|e_{n+1}| \leq |e_n| + hL|e_n| + Ch^2$
  - Rearrange: $|e_{n+1}| \leq (1 + hL)|e_n| + Ch^2$
  - Iterate: $|e_n| \leq \frac{C h}{L}((1 + hL)^n - 1)$
  - Since $(1 + hL)^n \leq e^{nLh} = e^{LT}$: bound is $O(h)$
- This is Gronwall in discrete form!

**Backward Euler (Implicit Method)**

- $y_{n+1} = y_n + hf(t_{n+1}, y_{n+1})$
- Note: $y_{n+1}$ appears on both sides!
- Must solve an equation at each step

**Why Implicit?**

- Explicit Euler can be unstable for "stiff" equations
- Example: $y' = -100y$ with $h = 0.1$
  - True solution decays
  - Euler: $y_{n+1} = (1 - 100 \cdot 0.1)y_n = -9y_n$ — oscillates and grows!
- Backward Euler: $y_{n+1} = y_n - 100h \cdot y_{n+1}$
  - Solve: $y_{n+1} = \frac{y_n}{1 + 100h}$ — stable!

**Solving the Implicit Equation**

- Need to solve $y_{n+1} = y_n + hf(t_{n+1}, y_{n+1})$
- Define $T(z) = y_n + hf(t_{n+1}, z)$
- Fixed point: $y_{n+1} = T(y_{n+1})$
- For small $h$: $|T(z_1) - T(z_2)| = h|f(t_{n+1}, z_1) - f(t_{n+1}, z_2)| \leq hL|z_1 - z_2|$
- If $hL < 1$: $T$ is a contraction!
- Banach fixed point theorem solves the implicit equation!

**Higher-Order Methods** (stated)

- Runge-Kutta methods: match more Taylor coefficients
- RK2 (midpoint): $O(h^2)$ global error
- RK4 (classical): $O(h^4)$ global error
- Same convergence theory applies (more tedious to prove)
- Higher order = fewer steps for same accuracy

**The Message**

- Picard: existence proof that also computes Taylor series
- Euler: simple, explicit, $O(h)$, uses Gronwall for convergence
- Backward Euler: implicit, stable, uses contraction mapping at each step
- Analysis tools (completeness, Gronwall, contraction) make numerical methods rigorous
