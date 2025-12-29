### Guided Exercise: The Volume of the n-Ball

*Recall from §8.3:*
- $V_n(R) = C_n R^n$ where $C_n = V_n(1)$
- $C_n = \omega_n \cdot C_{n-1}$ where $\omega_n = \int_{-1}^{1} (1-u^2)^{(n-1)/2} \, du$
- $C_1 = 2$, $C_2 = \pi$, $C_3 = \frac{4\pi}{3}$

Now we compute $\omega_n$ and find explicit formulas.

(a) Compute $\omega_3 = \int_{-1}^{1} (1-u^2) \, du$ directly. Verify $C_3 = \omega_3 \cdot C_2 = \frac{4\pi}{3}$.

(b) For $\omega_4 = \int_{-1}^{1} (1-u^2)^{3/2} \, du$, substitute $u = \sin\theta$. Show this becomes $\int_{-\pi/2}^{\pi/2} \cos^4\theta \, d\theta$.

(c) Use the reduction formula (or double-angle identities) to compute $\int_{-\pi/2}^{\pi/2} \cos^4\theta \, d\theta$. Conclude $\omega_4 = \frac{3\pi}{8}$.

(d) Compute $C_4 = \omega_4 \cdot C_3 = \frac{3\pi}{8} \cdot \frac{4\pi}{3} = \frac{\pi^2}{2}$.

(e) Show that in general, $\omega_n = \int_{-\pi/2}^{\pi/2} \cos^n\theta \, d\theta$ via the substitution $u = \sin\theta$.

(f) Using the reduction formula $\int_{-\pi/2}^{\pi/2} \cos^n\theta \, d\theta = \frac{n-1}{n} \int_{-\pi/2}^{\pi/2} \cos^{n-2}\theta \, d\theta$, show:
$$\omega_n = \frac{n-1}{n} \omega_{n-2}$$

(g) Derive from the recurrence:
- $\omega_1 = 2$, $\omega_2 = \frac{\pi}{2}$
- $\omega_{2k} = \frac{\pi}{2} \cdot \frac{1 \cdot 3 \cdot 5 \cdots (2k-1)}{2 \cdot 4 \cdot 6 \cdots (2k)}$
- $\omega_{2k+1} = 2 \cdot \frac{2 \cdot 4 \cdot 6 \cdots (2k)}{1 \cdot 3 \cdot 5 \cdots (2k+1)}$

(h) Compute $C_5$ and $C_6$.

(i) Show that $C_n$ can be written as:
$$C_{2k} = \frac{\pi^k}{k!}, \qquad C_{2k+1} = \frac{2^{k+1} \pi^k}{1 \cdot 3 \cdot 5 \cdots (2k+1)}$$

(j) Verify: $C_n \to 0$ as $n \to \infty$. The volume of the unit ball vanishes in high dimensions!

### Dependencies

**Requires**: §8.3 (setup of recurrence), §10.? (reduction formulas for $\int \cos^n\theta$, trig substitution)