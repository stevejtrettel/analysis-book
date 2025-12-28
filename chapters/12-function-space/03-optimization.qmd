## $\bigstar$ Optimization


**The Problem**

- In calculus: find $x$ minimizing $f(x)$
- Here: find function $y$ minimizing a functional $F[y]$

**Functionals**

- Definition: $F: C^1[a,b] \to \mathbb{R}$
- Example: $F[y] = \int_a^b L(x, y(x), y'(x))\, dx$
- This is "analysis level 2" optimization

**The First Variation**

- Analogue of derivative: perturb $y \to y + \epsilon \eta$
- First variation: $\delta F[y; \eta] = \frac{d}{d\epsilon}\Big|_{\epsilon=0} F[y + \epsilon\eta]$
- At an extremum: $\delta F[y; \eta] = 0$ for all admissible $\eta$

**The Euler-Lagrange Equation**

- For $F[y] = \int_a^b L(x, y, y')\, dx$ with fixed endpoints $y(a) = A$, $y(b) = B$:
- **Theorem**: If $y$ is an extremum, then
$$\frac{\partial L}{\partial y} - \frac{d}{dx}\frac{\partial L}{\partial y'} = 0$$
- Derivation via integration by parts
- E-L is a second-order ODE; solutions form 2-parameter family
- Boundary conditions select from this family

**Applications**

- **Shortest path**: $L = \sqrt{1 + (y')^2}$ gives $y'' = 0$ — straight lines
- **Brachistochrone**: fastest descent gives cycloid
- **Catenary**: hanging chain minimizes potential energy
- **Geodesics**: shortest paths on surfaces

**Constrained Optimization**

- Analogue of Lagrange multipliers
- Problem: optimize $F[y]$ subject to $G[y] = c$
- Method: optimize $F[y] - \lambda G[y]$
- **Isoperimetric problem**: maximize area subject to fixed perimeter
- Setup here; proof via Fourier in Ch 13

**Existence and Uniqueness**

- Unlike calculus: existence of minimizers is subtle
- $F$ may be bounded below but not achieve minimum
- Convexity of $L$ in $y'$ helps guarantee existence
- Beyond our scope, but important to note

**Guided Exercises**

- Second variation and sufficient conditions
- Multiple dependent variables
- Higher derivatives in $L$