# Narrative Threads Index

This folder tracks the major mathematical "stories" that run through the textbook. Each story involves concepts, definitions, and theorems distributed across multiple chapters, building toward a complete picture.

---

## Current Narratives

| File | Story | Status | Key Chapters |
|------|-------|--------|--------------|
| `sqrt2.md` | The √2 Story | ✓ Complete through Ch 3 | Preface, 1, 2, 3, 6 |
| `pi.md` | The π Story | ✓ Complete through Ch 3 | Preface, 2, 3, 7+ |
| `exp.md` | The Exponential Story | ✓ Complete through Ch 4 | Preface, 1, 2, 4, 5, 6, 7 |

---

## Planned Narratives

| Story | Description | Key Chapters |
|-------|-------------|--------------|
| `trig.md` | Sine, cosine, and the unit circle | 2 (mention), 6, 7, 8 |
| `series.md` | Power series and analytic functions | 3, 4, 6, 7 |
| `continuity.md` | Continuous functions and their properties | 5, 6 |
| `pathological.md` | Continuous nowhere-differentiable functions | 5, 6 |
| `integration.md` | From Archimedes to Riemann to Lebesgue | 7, 8+ |
| `fourier.md` | Fourier series and convergence | Later chapters |

---

## How to Use These Files

Each narrative file contains:

1. **Chapter-by-chapter breakdown**: What is introduced/proved where
2. **Definitions**: Marked with section numbers
3. **Theorems**: Stated with proof sketches and section references
4. **Connections**: Links to other narrative threads
5. **Future plans**: What will come in later chapters

When writing a new section, consult relevant narrative files to ensure:
- Proper foreshadowing of future developments
- Correct back-references to earlier material
- Consistency in notation and terminology
- The "story" feels coherent across chapters

---

## Story Types

### Type A: Single Constant
- **Examples**: √2, π, e, φ
- **Pattern**: Definition → Existence → Computation → Properties → Applications
- **Typical arc**: Preface motivation → Ch 1 existence → Ch 2 sequences → Later properties

### Type B: Function Family  
- **Examples**: Exponentials, trig functions, power series
- **Pattern**: Definition → Basic properties → Calculus → Applications
- **Typical arc**: Ch 2 special values → Ch 5 continuity → Ch 6 derivatives → Ch 7 integrals

### Type C: Concept Development
- **Examples**: Continuity, differentiability, integrability
- **Pattern**: Intuition → Definition → Theorems → Pathologies → Generalizations
- **Typical arc**: Motivation → Precise definition → Main theorems → Counterexamples → Extensions

### Type D: Technique
- **Examples**: MCT, contraction mappings, Tannery
- **Pattern**: Theorem → Applications → Connections
- **Typical arc**: State theorem → Immediate applications → Revisit in later contexts

---

## Cross-References

### √2 ↔ π
- Both use MCT for convergence
- Both have continued fraction representations
- √2 is algebraic (periodic CF); π is transcendental (chaotic CF)
- Comparison table runs through Ch 2

### √2 ↔ exp
- Both defined via limits of sequences
- Both use MCT
- √2 algebraic; $e$ transcendental
- Different convergence rates (quadratic vs geometric)

### π ↔ exp  
- Both transcendental
- Both have irrationality proofs via integrals
- $e$ has patterned CF; π does not
- Euler's identity connects them: $e^{i\pi} + 1 = 0$

### All three: The Completeness Theme
- √2: exists because ℝ is complete (sup exists)
- π: exists because nested intervals have unique intersection
- $e$: exists because monotone bounded sequences converge
- **Message**: Completeness manifests in many equivalent forms

---

## Maintenance Notes

- Update narrative files when section outlines change
- Add "Planned" entries for future chapters
- Mark theorems with their proof status: (stated), (proved), (exercise)
- Track forward references: "See Chapter X" with specific section if known
- Note dependencies: "Requires Theorem Y from Section Z"
