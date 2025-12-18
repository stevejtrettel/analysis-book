# Irrationality of $e$ and $\pi$

These two proofs are gems of analysis: short, elementary (requiring only integration by parts), and deeply satisfying. They showcase how carefully constructed integrals can answer fundamental questions about the nature of numbers.

---

## Irrationality of $e$

### The Key Integral

For $n \geq 0$, define:
$$I_n = \int_0^1 \frac{x^n(1-x)^n}{n!} e^x \, dx$$

### Properties of $I_n$

**Property 1: Positivity**

The integrand is positive on $(0,1)$:
- $x^n > 0$ for $x \in (0,1)$
- $(1-x)^n > 0$ for $x \in (0,1)$  
- $e^x > 0$ everywhere

Therefore $I_n > 0$ for all $n \geq 0$.

**Property 2: Upper Bound**

On $[0,1]$, the function $x(1-x)$ achieves its maximum at $x = 1/2$:
$$x(1-x) \leq \frac{1}{4}$$

Therefore $x^n(1-x)^n \leq (1/4)^n$, and since $e^x \leq e$ on $[0,1]$:
$$I_n \leq \frac{(1/4)^n}{n!} \cdot e \cdot 1 = \frac{e}{4^n \cdot n!}$$

**Property 3: Integer Relation**

This is the heart of the proof. We claim:
$$I_n = a_n e - b_n$$
where $a_n$ and $b_n$ are positive integers with $a_n \leq n!$

*Proof:* We use integration by parts repeatedly. Let $u = x^n(1-x)^n$ and $dv = e^x dx$.

First, expand $x^n(1-x)^n$ as a polynomial:
$$x^n(1-x)^n = \sum_{k=0}^{n} \binom{n}{k}(-1)^k x^{n+k} = c_0 x^n + c_1 x^{n+1} + \cdots + c_n x^{2n}$$

where each $c_k = \binom{n}{k}(-1)^k$ is an integer.

Now, the key observation: for any $m \geq 0$,
$$\int_0^1 x^m e^x \, dx = e \cdot (\text{integer}) - (\text{integer})$$

This follows from repeated integration by parts:
$$\int x^m e^x \, dx = x^m e^x - m x^{m-1} e^x + m(m-1) x^{m-2} e^x - \cdots + (-1)^m m! \, e^x$$

Evaluating from 0 to 1:
$$\int_0^1 x^m e^x \, dx = e \cdot P_m(1) - P_m(0) \cdot 1 = e \cdot (\text{integer}) - (\text{integer})$$

where $P_m(x)$ is a polynomial with integer coefficients.

Therefore:
$$n! \cdot I_n = \int_0^1 x^n(1-x)^n e^x \, dx = e \cdot A_n - B_n$$

where $A_n, B_n$ are integers.

More carefully tracking the coefficients shows $A_n \leq n!$, so dividing by $n!$:
$$I_n = a_n e - b_n$$
with $a_n = A_n/n! \leq 1$... 

Actually, let's be more precise. We have $n! \cdot I_n = A_n e - B_n$ with $A_n, B_n \in \mathbb{Z}$.

### The Contradiction

**Theorem:** $e$ is irrational.

*Proof:* Suppose $e = p/q$ where $p, q$ are positive integers.

Consider $N = q! \cdot I_q$. 

**Claim 1:** $N$ is a positive integer.

We showed $n! \cdot I_n = A_n e - B_n$ with $A_n, B_n \in \mathbb{Z}$. So:
$$q! \cdot I_q = A_q e - B_q = A_q \cdot \frac{p}{q} - B_q = \frac{p \cdot A_q - q \cdot B_q}{q}$$

Hmm, this doesn't immediately give an integer. Let's use a cleaner formulation.

### Cleaner Approach

Define:
$$I_n = \int_0^1 \frac{x^n(1-x)^n}{n!} e^x \, dx$$

**Lemma:** $n! \cdot I_n$ can be written as $A_n e - B_n$ where $A_n, B_n \in \mathbb{Z}_{>0}$.

**Lemma:** For any $N \geq q$, we have $N! \cdot I_N = (\text{integer}) \cdot e - (\text{integer})$.

If $e = p/q$, then:
$$q! \cdot I_q = A_q \cdot \frac{p}{q} - B_q$$

For this to be an integer, we need $q | A_q$. But actually, let's use $n \geq q$ and note:
$$q \cdot n! \cdot I_n = p \cdot A_n - q \cdot B_n \in \mathbb{Z}$$

Still fiddly. Here's the cleanest standard approach:

---

### Standard Clean Proof

**Theorem:** $e$ is irrational.

*Proof:* Suppose $e = p/q$ with $p, q \in \mathbb{Z}_{>0}$.

Consider the quantity:
$$S_n = n! \left( e - \sum_{k=0}^{n} \frac{1}{k!} \right)$$

We compute:
$$S_n = n! \cdot e - n! \sum_{k=0}^{n} \frac{1}{k!} = n! \cdot e - \sum_{k=0}^{n} \frac{n!}{k!}$$

Now $\frac{n!}{k!}$ is an integer for $k \leq n$, so:
$$S_n = n! \cdot e - (\text{integer})$$

If $e = p/q$ and $n \geq q$, then $n! \cdot e = n! \cdot \frac{p}{q} = \frac{n!}{q} \cdot p$ is an integer (since $q | n!$).

Therefore $S_n$ is an integer for $n \geq q$.

**Upper bound:** Using $e = \sum_{k=0}^{\infty} \frac{1}{k!}$:
$$S_n = n! \sum_{k=n+1}^{\infty} \frac{1}{k!} = \sum_{k=n+1}^{\infty} \frac{n!}{k!}$$
$$= \frac{1}{n+1} + \frac{1}{(n+1)(n+2)} + \frac{1}{(n+1)(n+2)(n+3)} + \cdots$$
$$< \frac{1}{n+1} + \frac{1}{(n+1)^2} + \frac{1}{(n+1)^3} + \cdots = \frac{1}{n+1} \cdot \frac{1}{1 - \frac{1}{n+1}} = \frac{1}{n}$$

**Lower bound:** $S_n > 0$ (it's a sum of positive terms).

So for $n \geq q$:
$$0 < S_n < \frac{1}{n} < 1$$

But $S_n$ is supposed to be an integer. No integer lies strictly between 0 and 1.

**Contradiction.** Therefore $e$ is irrational. $\blacksquare$

---

### Integral Version (Alternative)

Here's the integral proof, done carefully:

**Lemma:** For $n \geq 0$, let 
$$I_n = \int_0^1 x^n(1-x)^n e^x \, dx$$
Then $I_n = n! \, e \cdot a_n - n! \cdot b_n$ for some $a_n, b_n \in \mathbb{Q}$ with $n! \cdot a_n, n! \cdot b_n \in \mathbb{Z}$.

Actually, more precisely: there exist integers $A_n, B_n$ such that 
$$I_n = A_n e - B_n$$
and $0 < I_n < \frac{e}{4^n}$.

**Theorem:** $e$ is irrational.

*Proof:* Suppose $e = p/q$. Then:
$$I_n = A_n \cdot \frac{p}{q} - B_n = \frac{p A_n - q B_n}{q}$$

Multiplying by $q$:
$$q \cdot I_n = p A_n - q B_n \in \mathbb{Z}$$

But $0 < q \cdot I_n < \frac{qe}{4^n} < 1$ for large $n$.

Contradiction. $\blacksquare$

---

## Irrationality of $\pi$

This beautiful proof is due to Ivan Niven (1947).

### The Key Integral

For $n \geq 1$, define:
$$J_n = \int_0^\pi f(x) \sin x \, dx$$

where $f(x) = \frac{x^n(\pi - x)^n}{n!}$.

### Properties of $J_n$

**Property 1: Positivity**

On $(0, \pi)$:
- $x^n > 0$
- $(\pi - x)^n > 0$
- $\sin x > 0$

Therefore $J_n > 0$.

**Property 2: Upper Bound**

On $[0, \pi]$, we have $x(\pi - x) \leq \pi^2/4$ (maximum at $x = \pi/2$).

Therefore:
$$J_n < \frac{(\pi^2/4)^n}{n!} \cdot \pi = \frac{\pi^{2n+1}}{4^n \cdot n!}$$

For large $n$, this is less than 1 (since $n!$ grows faster than any exponential).

**Property 3: Integer Relation (if $\pi$ is rational)**

This is the key. Suppose $\pi = a/b$ where $a, b \in \mathbb{Z}_{>0}$.

**Claim:** $b^{2n} \cdot J_n$ is a positive integer.

*Proof of Claim:*

First, expand $f(x) = \frac{x^n(\pi-x)^n}{n!}$. Since $\pi = a/b$:
$$f(x) = \frac{x^n(a/b - x)^n}{n!} = \frac{1}{b^n \cdot n!} x^n(a - bx)^n$$

The function $x^n(a-bx)^n$ is a polynomial in $x$ with integer coefficients.

**Key Lemma:** For any polynomial $g(x)$ with integer coefficients, we have:
$$\int_0^\pi g(x) \sin x \, dx = g(\pi) + g(0) - g''(\pi) - g''(0) + g^{(4)}(\pi) + g^{(4)}(0) - \cdots$$

This follows from repeated integration by parts:
$$\int g(x) \sin x \, dx = -g(x) \cos x + g'(x) \sin x + g''(x) \cos x - g'''(x) \sin x - \cdots$$

Evaluating at 0 and $\pi$ (where $\sin = 0$ and $\cos = \pm 1$), we get the formula above.

Now, let's examine $f(x) = \frac{x^n(\pi-x)^n}{n!}$ and its derivatives at $x = 0$ and $x = \pi$.

**At $x = 0$:** The factor $x^n$ means $f(x)$, $f'(x)$, ..., $f^{(n-1)}(x)$ all vanish at $x = 0$.

**At $x = \pi$:** The factor $(\pi-x)^n$ means $f(x)$, $f'(x)$, ..., $f^{(n-1)}(x)$ all vanish at $x = \pi$.

For derivatives of order $\geq n$: 
$$f^{(k)}(0) = \frac{(\text{integer polynomial in } \pi)}{n!}$$

If $\pi = a/b$, then $b^n \cdot f^{(k)}(0)$ involves $b^n \cdot (\text{polynomial in } a/b) / n!$.

More carefully: $f(x) = \frac{1}{n!} x^n (\pi - x)^n$, so:
$$n! \cdot f(x) = x^n(\pi - x)^n = \sum_{j=0}^{n} \binom{n}{j} (-1)^j \pi^{n-j} x^{n+j}$$

The $k$-th derivative at 0 is nonzero only for $k = n, n+1, \ldots, 2n$, and equals:
$$[n! \cdot f(x)]^{(k)}\big|_{x=0} = \binom{n}{k-n} (-1)^{k-n} \pi^{2n-k} \cdot k!$$

So:
$$f^{(k)}(0) = \frac{k!}{n!} \binom{n}{k-n} (-1)^{k-n} \pi^{2n-k}$$

If $\pi = a/b$, then:
$$b^{2n} f^{(k)}(0) = \frac{k!}{n!} \binom{n}{k-n} (-1)^{k-n} b^{2n} \cdot \frac{a^{2n-k}}{b^{2n-k}} = \frac{k!}{n!} \binom{n}{k-n} (-1)^{k-n} b^k a^{2n-k}$$

This is an integer (since $k \geq n$ means $\frac{k!}{n!}$ is an integer, and $\binom{n}{k-n}$ is an integer).

Similarly, by symmetry ($f(\pi - x) = f(x)$), the derivatives at $\pi$ give integers when multiplied by $b^{2n}$.

Therefore:
$$b^{2n} J_n = \sum (\text{integers from derivatives at } 0 \text{ and } \pi) \in \mathbb{Z}$$

### The Contradiction

**Theorem:** $\pi$ is irrational.

*Proof:* Suppose $\pi = a/b$ with $a, b \in \mathbb{Z}_{>0}$.

From the properties above:
1. $b^{2n} J_n$ is a positive integer (Property 3 + Property 1)
2. $b^{2n} J_n < \frac{b^{2n} \pi^{2n+1}}{4^n \cdot n!} = \frac{(b^2)^n \cdot \pi^{2n} \cdot \pi}{4^n \cdot n!} = \frac{(b^2 \pi^2 / 4)^n \cdot \pi}{n!}$

Since $n!$ grows faster than any exponential, for sufficiently large $n$:
$$b^{2n} J_n < 1$$

So $b^{2n} J_n$ is a positive integer less than 1. Contradiction.

Therefore $\pi$ is irrational. $\blacksquare$

---

## Summary

| Number | Key Integral | Integer Relation | Bound |
|--------|-------------|------------------|-------|
| $e$ | $\displaystyle n!\left(e - \sum_{k=0}^n \frac{1}{k!}\right)$ | Integer for $n \geq q$ if $e = p/q$ | $< 1/n$ |
| $\pi$ | $\displaystyle \int_0^\pi \frac{x^n(\pi-x)^n}{n!} \sin x \, dx$ | $b^{2n} J_n \in \mathbb{Z}$ if $\pi = a/b$ | $< 1$ for large $n$ |

Both proofs follow the same template:
1. Assume the number is rational: $p/q$ or $a/b$
2. Construct a quantity that must be a positive integer
3. Show this quantity is less than 1 for large $n$
4. Contradiction

---

## Exercises

1. Verify the bound $S_n < 1/n$ in the irrationality proof for $e$.

2. Compute $J_1$ and $J_2$ explicitly and verify they are positive.

3. Show that the same proof works for $\pi^2$: use $\int_0^\pi \frac{x^n(\pi-x)^n}{n!} \sin x \, dx$ and suppose $\pi^2 = a/b$. (This is actually the same proof!)

4. ★ Prove that $e^2$ is irrational by adapting the integral method.

5. ★ Prove that $e^r$ is irrational for any nonzero rational $r$. (Hint: if $e^{p/q} = a/b$, then $e^p = (a/b)^q$, so $e$ would satisfy a polynomial equation with rational coefficients. Use a more elaborate integral.)

6. ★★ (Project: Transcendence of $e$) Suppose $c_0 + c_1 e + c_2 e^2 + \cdots + c_m e^m = 0$ for integers $c_i$ not all zero. Adapt the integral approach to derive a contradiction. (Hint: consider $\sum_{k=0}^m c_k \int_0^\infty f(x) e^{-kx} dx$ for a suitable polynomial $f$.)

---

## Historical Notes

- **$e$ irrational:** First proved by Euler (1737), though the clean proof above came later
- **$\pi$ irrational:** Lambert (1768) gave the first proof using continued fractions; Niven's 1-page integral proof (1947) is the one presented here
- **$e$ transcendental:** Hermite (1873), using elaborate integral constructions
- **$\pi$ transcendental:** Lindemann (1882), adapting Hermite's methods

The transcendence of $\pi$ implies the impossibility of squaring the circle with compass and straightedge—settling a problem open since ancient Greece!

---

## Suggested Placement

**In the main text (after power series/integration):**
- Irrationality of $e$ (uses series for $e$ and factorial estimates)
- Irrationality of $\pi$ (uses integration by parts)

**As an appendix or project:**
- Transcendence of $e$
- Transcendence of $\pi$ (significantly harder)

Both irrationality proofs are short enough (1-2 pages each) to include in full. The transcendence proofs are better as guided projects for ambitious students.
