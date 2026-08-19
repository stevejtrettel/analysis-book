/**
 * Archimedes' quadrature of the parabola — the geometry and the drawing,
 * shared by the live figure and the print still (sharing by import; each
 * entry stays a straight-line program).
 *
 * A chord cuts a segment off the parabola. Inscribe the triangle whose
 * apex is the point of the arc farthest from the chord; two smaller
 * segments are left over; repeat. Each generation totals a quarter of the
 * one before, so the segment is 4/3 of the first triangle — an exact
 * infinite sum, computed twenty-two centuries before anyone could say
 * what a limit was.
 *
 * The chord is deliberately diagonal, as Archimedes drew it. A chord
 * across the axis cuts a segment that is tall and symmetric; a slanted one
 * cuts a segment whose own bounding box is landscape, and whose triangles
 * are fatter — here the cut runs from (-1, 1/4) to (3, 9/4) on y = x^2/4,
 * so the segment is exactly 16 by 9. (Archimedes' ratio is
 * affine-invariant, so which segment is drawn is composition, not content.)
 *
 * A generation's apex is interpolated out from its chord, so the triangles
 * unfold into the segment instead of merely appearing.
 */

const CUT = [-1, 3]; // where the chord meets the parabola
const BAND = 2.5; // the one composition knob: width-to-depth of the cut
                  // segment. The parabola's steepness follows from it, so
                  // changing this reshapes the figure without ever putting
                  // the view window out of step with the drawing.
const K = (CUT[1] - CUT[0]) / (BAND * Math.max(CUT[0] * CUT[0], CUT[1] * CUT[1]));
const f = (x) => K * x * x;

export const GENS = 5; // 63 triangles; generation 6 is already sub-pixel
// The arc is carried further past the low end than the high end: the high
// arm alone would set the top of the window and leave the whole upper left
// empty, which on the cover reads as a gap under the title.
const ARM = [0.55, 0.25];
const PAD = 0.18; // breathing room above and below, in data units

// The window is derived from what is actually drawn, and the panel's height
// from the window — so one scale serves both axes by construction and the
// parabola can never come out stretched.
const SPAN = [CUT[0] - ARM[0], CUT[1] + ARM[1]];
const TOP = Math.max(f(SPAN[0]), f(SPAN[1]));
export const VIEW_Y = [-PAD, TOP + PAD];
export const DESIGN = [800, Math.round((800 * (VIEW_Y[1] - VIEW_Y[0])) / (SPAN[1] - SPAN[0] + 0.9))];
const HALF_W = ((VIEW_Y[1] - VIEW_Y[0]) * DESIGN[0]) / DESIGN[1] / 2;
export const VIEW_X = [(SPAN[0] + SPAN[1]) / 2 - HALF_W, (SPAN[0] + SPAN[1]) / 2 + HALF_W];

/** generations[g] = the triangles cut at depth g, each {a, b, m} on the arc */
export const generations = (() => {
  let chords = [CUT];
  const out = [];
  for (let g = 0; g <= GENS; g++) {
    const tris = [], next = [];
    for (const [a, b] of chords) {
      const m = (a + b) / 2; // for a parabola the farthest point is the midpoint
      tris.push({ a, b, m });
      next.push([a, m], [m, b]);
    }
    out.push(tris);
    chords = next;
  }
  return out;
})();

const WIDTHS = [1.7, 1.25, 1.0, 0.84, 0.72, 0.62];

// Tone, not just line. Drawn as outlines alone this construction is one
// large triangle and a lace of slivers along the arc — the content is the
// *areas*, and area only reads as tone. Two soft tints: the first triangle
// warm, everything the exhaustion adds to it cool, so the quartering shows
// as a band darkening into the curve.
const fillOpacity = (g, print) =>
  print ? (g === 0 ? 0.05 : 0.085) : g === 0 ? 0.085 : Math.max(0.05, 0.13 - 0.016 * g);

/**
 * @param {object} p        the panel
 * @param {object} c        a resolved theme snapshot
 * @param {object[]} gens   per generation: {alpha, grow} (grow 0 = flat on
 *                          its chord, 1 = the full inscribed triangle)
 * @param {boolean} print   ink-only engraving for paper; colour on screen
 */
export function drawScene(p, c, gens, print = false) {
  const pt = ([x, y]) => `${p.X(x).toFixed(2)},${p.Y(y).toFixed(2)}`;

  // the arc, carried a little past the cut so the segment reads as a piece
  // taken out of a curve rather than a closed shape
  const arc = [];
  const [lo, hi] = SPAN;
  for (let i = 0; i <= 260; i++) arc.push(pt([lo + ((hi - lo) * i) / 260, f(lo + ((hi - lo) * i) / 260)]));
  p.el("polyline", {
    points: arc.join(" "), fill: "none",
    stroke: c.ink, "stroke-width": 1.5, "stroke-opacity": 0.85,
  });

  // the chord that cuts the segment
  p.el("line", {
    x1: p.X(CUT[0]), y1: p.Y(f(CUT[0])), x2: p.X(CUT[1]), y2: p.Y(f(CUT[1])),
    stroke: c.ink, "stroke-width": 1.5, "stroke-opacity": 0.85,
  });

  gens.forEach((state, g) => {
    if (!state || state.alpha <= 0.004) return;
    const stroke = print ? c.ink : g === 0 ? c.gold : c.blue;
    const opacity =
      state.alpha *
      (print ? Math.max(0.5, 1 - 0.09 * g) : g === 0 ? 1 : Math.max(0.45, 0.95 - 0.1 * g));
    for (const { a, b, m } of generations[g]) {
      const cy = (f(a) + f(b)) / 2; // the chord's midpoint, directly above the apex
      const ay = cy + (f(m) - cy) * state.grow;
      const corners = [pt([a, f(a)]), pt([m, ay]), pt([b, f(b)])].join(" ");
      // Fill and stroke are separate marks on purpose: a triangle's base is
      // a side of its parent, already drawn — restroking it would lay this
      // generation's colour over the one before.
      p.el("polygon", {
        points: corners, stroke: "none",
        fill: stroke, "fill-opacity": state.alpha * fillOpacity(g, print),
      });
      p.el("polyline", {
        points: corners, fill: "none",
        stroke, "stroke-width": WIDTHS[g], "stroke-opacity": opacity,
        "stroke-linejoin": "round",
      });
    }
  });
}
