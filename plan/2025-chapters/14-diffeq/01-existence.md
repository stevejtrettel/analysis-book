## Existence and Uniqueness


**The Problem**

- ODE: $y' = f(t, y)$, initial condition $y(t_0) = y_0$
- Does a solution exist? Is it unique?
- Not obvious! $y' = y^2$, $y(0) = 1$ has solution $y = \frac{1}{1-t}$, blows up at $t = 1$

**Reduction to Integral Equation**

- $y' = f(t, y)$ with $y(t_0) = y_0$
- Integrate: $y(t) = y_0 + \int_{t_0}^t f(s, y(s))\, ds$
- Fixed point problem: $y = Ty$ where $T$ is the integral operator

**The Picard Operator**

- Define $T: C([t_0 - \delta, t_0 + \delta]) \to C([t_0 - \delta, t_0 + \delta])$
- $(Ty)(t) = y_0 + \int_{t_0}^t f(s, y(s))\, ds$
- Fixed point of $T$ = solution of ODE

**The Lipschitz Condition**

- $f$ is Lipschitz in $y$: $|f(t, y_1) - f(t, y_2)| \leq L|y_1 - y_2|$
- Key estimate: $\|Ty_1 - Ty_2\|_\infty \leq L\delta \|y_1 - y_2\|_\infty$
- For $\delta < 1/L$: $T$ is a contraction!

**Picard-Lindelöf Theorem**

- Theorem: If $f$ is continuous and Lipschitz in $y$, then the IVP has a unique local solution
- Proof: Banach fixed point theorem (Ch 11)
- The payoff of abstract completeness!

**Local vs Global**

- Theorem gives solution on $[t_0 - \delta, t_0 + \delta]$
- Can extend until solution blows up or leaves domain
- Example: $y' = y^2$ blows up in finite time
- Example: $y' = y$ extends globally

**Gronwall's Inequality**

- Lemma: If $u(t) \leq \alpha + \int_0^t \beta u(s)\, ds$ then $u(t) \leq \alpha e^{\beta t}$
- Proof: Let $U(t) = \int_0^t u(s)\, ds$, then $U' \leq \alpha + \beta U$, multiply by $e^{-\beta t}$
- The fundamental tool for controlling growth

**Continuous Dependence on Initial Conditions**

- Theorem: $|y(t; y_0) - y(t; z_0)| \leq |y_0 - z_0| e^{Lt}$
- Proof: Apply Gronwall to $u(t) = |y(t) - z(t)|$
- Message: Solutions depend continuously on initial data (short time)
- Warning: Exponential growth means small errors can amplify

**Continuous Dependence on Parameters**

- If $f = f(t, y; \mu)$ depends on parameter $\mu$
- Solution $y(t; \mu)$ depends continuously on $\mu$
- Same proof technique

**Systems of ODEs**

- $\mathbf{y}' = \mathbf{f}(t, \mathbf{y})$ where $\mathbf{y} \in \mathbb{R}^n$
- Same theory applies with $|\cdot|$ replaced by vector norm
- Higher-order equations reduce to first-order systems:
  - $y'' = g(t, y, y')$ becomes $y_1' = y_2$, $y_2' = g(t, y_1, y_2)$
