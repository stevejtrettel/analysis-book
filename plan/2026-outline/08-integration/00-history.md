**The method of exhaustion**
- What is the area under a curve? The length of a curved line? These questions are ancient
- Archimedes (~250 BCE): computed the area of a parabolic segment by trapping it between inscribed and circumscribed figures
- Result: area under y = x² on [0,1] equals 1/3 — two thousand years before Riemann sums
- Key idea: squeeze the unknown between known bounds, show the gap shrinks to zero
- He also studied arc length of convex curves, but needed an axiom he couldn't prove (we will prove it in §8.3)

**Cavalieri's indivisibles**
- Cavalieri (1630s): imagined regions as made of infinitely many parallel line segments
- Compare two regions by comparing their cross-sections at every height
- Cavalieri's principle: two solids with equal cross-sectional areas at every height have equal volume
- Philosophically suspect — what is an "infinitely thin" slice? — but computationally powerful
- We will make this rigorous in §8.3

**Fermat's integration of powers**
- Fermat (1630s): computed ∫₀¹ xⁿ = 1/(n+1) without calculus
- Insight: use geometric partitions (points at ..., r³, r², r, 1) instead of uniform ones
- Upper sums become geometric series; as r → 1, the sum approaches 1/(n+1)
- Forty years before Newton and Leibniz

**The message**
- Integration was a computational subject for two millennia before the Fundamental Theorem
- Archimedes, Cavalieri, and Fermat computed areas, volumes, and arc lengths by direct methods
- The common thread: trapping quantities between bounds and showing the gap vanishes

**Our approach**
- We formalize what they were doing: axiomatize the integral, see what the axioms force
- For continuous functions, the axioms determine the value uniquely
- Then we verify a construction (Darboux) that satisfies the axioms
- Direct computation is possible (§8.4) but laborious — a better method comes in Chapter 9
