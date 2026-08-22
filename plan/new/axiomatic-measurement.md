# Axiomatic Length and Area — Decided Design

Status: **decided 2026-08-18** (companion to `axiomatic-functions.md`;
under the axiomatic-method theme of `thesis.md`). Steve's ruling: we
axiomatize. **Placement update (second session, Ch 1 split confirmed —
see `part1-chapters.md`; allocation adjudicated in the story
discussion): this design now straddles the new Ch 1/Ch 2 boundary.**
Pre-axiom (Ch 1): the axioms with their pedigrees, polygon area as
known + the homework series **scoped to rational data**, the trapping
inequality (pure (A2)+(A3)/(L2)–(L4) order work), the rational
computations (96-gon bounds), and the diagnosis — sup/inf are *named*
in Ch 1, distilled from the trapping practice, so the chapter can
close on the unified diagnosis: every gap is a bounded set with no
least upper bound. Post-axiom (Ch 2): the definitions denote (length
and inner/outer area exist — "the circle has a circumference" is a
theorem), trapping restated in sup form (sup-length = minimal
admissible), the forcing theorem, and the confirmation obligations —
which double as the chapter's sup-manipulation training ground.
Homework part (b) (real-sided rectangles via density + sup) migrates
to Ch 2, where it rehearses the aˣ argument pattern. Ch 2 closes NO
sandwiches: parabola closes in Ch 3, circle in Ch 4 — existence and
evaluation deliberately split. "§1.5" below reads as this Ch 1/Ch 2
pair. Architecture:

> In the main text, polygon area is treated as **known** (school
> geometry), with the remark that it can in fact be derived from the
> axioms — and a homework series doing so. The axioms' job in the main
> text is to take that known information and dictate how area **must
> behave for more extensive shapes.**

Length is handled in parallel, with Archimedes' postulates as the axioms.
Current §1.5 (April) for reference: length = sup of inscribed polygonal
lengths; area = A_inner (sup, inscribed polygons) and A_outer (inf,
circumscribed) with "has area" ⟺ inner = outer; polygon area presupposed.
The axioms reframe these definitions as *forced*, not chosen.

## Area

**Axioms** (an area assignment, on a class of bounded regions containing
the polygons):

- (A1) *Congruence*: congruent regions have equal area. [Euclid CN4]
- (A2) *Additivity*: R dissected into R₁, R₂ (disjoint interiors) ⟹
  A(R) = A(R₁) + A(R₂). [CN2]
- (A3) *Monotonicity*: R ⊆ S ⟹ A(R) ≤ A(S). [CN5]
- (A4) *Normalization*: the unit square has area 1.

The Euclid Common Notions correspondence is presented (prelude-level):
the wishlist is quotable from the oldest axiom list in mathematics.

**Main text spine:**

1. Polygon area: known; remark that (A1)–(A4) alone force it (→ homework
   series below).
2. *Trapping theorem*: polygons P ⊆ R ⊆ Q force A(P) ≤ A(R) ≤ A(Q) for
   any admissible A; hence A_inner(R) ≤ A(R) ≤ A_outer(R).
3. *Forcing theorem*: if A_inner(R) = A_outer(R), every admissible A
   assigns that common value. Definition: R **has area** when the axioms
   leave no freedom. (Same sentence Ch 8 will say about integrability —
   the deliberate reprise.)
4. *Existence/confirmation*: area := the common value satisfies the
   axioms on the inner-equals-outer class. Obligations, graded:
   (A3) one line (inscribed polygons nest); (A4) grid approximations
   (existing exercise); (A1) congruences carry polygons to polygons
   (leans on known polygon-area invariance — consistent with the
   known-data architecture); (A2) superadditivity of inner +
   subadditivity of outer + squeeze — honest half-page of sup work,
   good practice. Closure of dissection pieces: scope Ch 1 dissections
   to **polygonal cuts** (general cuts are measure theory; the draft's
   existing remark already points there).

**Homework series (axioms ⟹ polygon area):**

(a) grid dissection + (A1)(A2)(A4) force rational rectangles;
(b) real rectangles by (A3) + density + sup — *the aˣ argument pattern*;
(c) right triangles as half-rectangles (A1)(A2);
(d) general triangles by dissection;
(e) polygons by triangulation — with the remark that triangulation-
consistency is free in the forcing direction (any admissible A computes
the same value along every triangulation; the classical dissection
headache afflicts only constructions).

## Length

**Axioms** — nearly verbatim **Archimedes, *On the Sphere and Cylinder***:

- (L1) *Normalization*: a segment's length is d(endpoints).
- (L2) *Additivity*: splitting a curve at a point, lengths add.
- (L3) *Straight is shortest*: any curve from p to q has length
  ≥ d(p, q). [Archimedes Postulate 1]
- (L4) *Convex enclosure*: of two convex arcs with common endpoints on
  the same side of their chord, the enclosed is shorter.
  [Archimedes Postulate 2 — the axiom the Aug §4.5 already names]

**Main text spine:**

1. (L2)+(L3) ⟹ inscribed polygonal length ≤ L for any admissible L ⟹
   **the sup definition is the minimal admissible length** (Darboux
   parallel, stated).
2. (L4) ⟹ upper trap by circumscribed convex paths ⟹ *forcing theorem*
   for convex arcs where the sandwich closes.
3. §4.5 (Aug version) is then exactly: the sandwich closes for circular
   arcs (ratio trick), so π is the number no admissible length can
   avoid. Archimedes' Postulate stops being ad hoc; it is axiom (L4).
4. *Confirmation for the sup definition*: (L1) chord + triangle
   inequality (existing inline exercise); (L3) chord is an inscribed
   polygon, one line; (L2) sup splits over concatenation (junction-point
   refinement + sup-additivity — classic workout).

**Named debts (deferral made explicit, per thesis):**

- (L4) for the sup definition — that the sup-length itself satisfies
  convex monotonicity — is **deferred by design** and paid in the
  Part II Integration chapter (Ch 10 of the seven-chapter Part II;
  the tent lemma via the arc-length integral + Ch 9 convexity — see
  `purpose-ch10.md`). This formalizes the promise the Aug §4.5 makes.
  **Correction (2026-08-21, fourth session):** the earlier claim here
  ("not provable with Ch 1 tools") was overstated. The instance
  Ch 4's computations actually use — polygonal path vs enclosing
  polygonal path — IS elementary (close up with the chord; nested
  convex polygons by half-plane cuts + iterated triangle inequality);
  fiddly but Part-I-legal. The full curved-comparison form is what
  waits for Part II. Division of labor, precisely: **the polygons pin
  the number; the axiom pins the concept** — Ch 4's bounds on the sup
  are unconditional polygon-vs-polygon arithmetic; the axiom's load
  is conceptual (it is why the sup deserves to be called "length,"
  via the forcing over all admissible assignments). ⚠ TRAP: never
  print "the postulate is unprovable without calculus" — the honest
  sentence: *Archimedes chose an axiom rather than a proof, and so,
  for eight chapters, do we.*
- P(θ) existence — see the decided trig treatment below.

## Trigonometry in §1.5 — decided 2026-08-18

**Ruling (Steve): defer with a named IOU — Ch 1 is already long — plus
homework showing the payment is already possible.**

- Main text defines cos/sin **at constructible angles only** (hexagon
  vertices by algebra; arc-bisection by perpendicular-bisector +
  root-existence). This is all anything before Ch 9 uses: §4.5's
  doubling is repeated bisection from the hexagon; the chord-arc GE
  proves identities about given points. Checked 2026-08-18.
- The general function θ ↦ (cos θ, sin θ) is stated as the *wish*, with
  the debt named on the page and paid by §9.4's arcsin construction.
  Historical framing: what Ch 1 has is what Ptolemy had — a table.
  Tables came first; the function is the reckoning.
- **★ Homework series (payment is already possible)**: with (L4) in
  hand, P(θ) is constructible by Ch 1 tools — parametrize the upper
  semicircle by x; λ(x) = arc from (1,0) is strictly monotone
  (chord-positivity); an L-shaped circumscribed path gives the modulus
  arc(P,Q) ≤ |Δx| + |Δy| (no jumps; near the poles use
  |√a − √b| ≤ √|a−b|); a sup argument (x* = inf{x : λ(x) ≥ θ}) lands
  on θ. Dividend worth extracting in the same series: chord ≤ arc gives
  |sin θ − sin φ| ≤ |θ − φ| (the Lipschitz estimate Ch 6/Ch 9 want).
- This fixes the current §1.5 line "existence: completeness!" (line
  61–62 of the April outline), which asserts what it cannot yet prove.

**House pattern, now used twice** (polygon area; P(θ)): *the main text
defers; a homework series proves the tools already suffice.* The
deferral is narrative choice, not necessity — and the homework is the
proof of that.

## Downstream consequences

- §2.6 (parabola) and §4.5 (π): reframed as forcing-sandwich closures —
  first uses of the forcing theorems.
- Ch 8: the deliberate reprise — the same axiomatization performed for
  area-under-a-graph, now with the machinery to settle the existence
  question in general (integrability ⟺ forced value; Jordan ↔ Darboux
  parallel stated).
- Ch 10 (book, off the semester path): which regions/functions escape
  forcing — the door to measure.

## Still open

- ~~Whether §1.5 states the forcing theorems~~ — largely resolved by
  the boundary rule (trapping in Ch 1, forcing in Ch 2's measurement
  closure); remaining detail is only how much forcing-language Ch 2
  states vs defers to the workshop's §4.5 first use.
- Whether the (L4) debt is named on the page in Ch 1 like the P(θ) debt
  now is (the trig ruling suggests yes, but it's undecided).
- Whether Part I carries a ★ homework proving the polygonal cutting
  lemma (nested convex polygons have monotone perimeters) — the house
  pattern's third use ("payment already possible"). OPEN; the current
  design keeps the axiom load-bearing until Ch 10 either way.
- Exact scoping language for polygonal-cut dissections in (A2).
- Whether the trig subsection needs a perpendicularity/dot-product
  addition to §1.5 (flagged in `axiomatic-functions.md`).
