/**
 * Where a Taylor series stops working, and why you cannot see it.
 *
 * The function is a sum of Lorentzian bumps,
 *
 *     f(x) = SUM_k  A_k w_k^2 / ((x - c_k)^2 + w_k^2),
 *
 * which is smooth on the whole line and has no distinguishing feature
 * anywhere. Its Taylor series at 0 nevertheless has a finite radius: each
 * bump carries poles at c_k ± i w_k, and the nearest of them in the complex
 * plane sets R = min |c_k + i w_k|. The bumps are placed so the limiting
 * pole belongs to the broad central hump — so the partial sums peel away
 * from the curve on a gentle downslope where nothing whatever happens, and
 * the sharp spike further out is something the series never learns about.
 *
 * Coefficients are exact, not numerically differentiated. Writing
 * p = c + i w, partial fractions give
 *
 *     a_n = A w sin((n+1) arg p) / |p|^(n+1),
 *
 * which is stable to evaluate at every order drawn here.
 *
 * Boot state = the whole family of partial sums at once: inside the radius
 * they pile onto the curve, outside they open into two flares. The loop
 * rebuilds that family one order at a time.
 */

import { panel } from "toolkit/panel.js";
import { theme } from "toolkit/theme.js";
import { clock } from "toolkit/clock.js";

/** amplitude, centre, half-width */
const BUMPS = [
  { A: 1.0, c: 1.5, w: 1.8 }, // the broad hump — its poles set the radius
  { A: 0.65, c: 4.3, w: 0.5 }, // the spike the series never reaches
  { A: 0.5, c: -3.2, w: 0.5 },
];

const f = (x) => BUMPS.reduce((s, b) => s + (b.A * b.w * b.w) / ((x - b.c) ** 2 + b.w * b.w), 0);

const POLES = BUMPS.map((b) => ({ ...b, r: Math.hypot(b.c, b.w), th: Math.atan2(b.w, b.c) }));
const RADIUS = Math.min(...POLES.map((p) => p.r));

const NMAX = 26;
const COEF = Array.from({ length: NMAX + 1 }, (_, n) =>
  POLES.reduce((s, p) => s + (p.A * p.w * Math.sin((n + 1) * p.th)) / p.r ** (n + 1), 0)
);

/** partial sum of order N, by Horner */
function S(N, x) {
  let y = COEF[N];
  for (let n = N - 1; n >= 0; n--) y = y * x + COEF[n];
  return y;
}

const VIEW_X = [-4.4, 5.6];
const VIEW_Y = [-1.6, 2.4];
const DESIGN = [800, 320];
const SAMPLES = 560;

const HOLD = 3.0, FADE = 0.9, STEP = 0.17, SETTLE = 0.9;
const CYCLE = HOLD + FADE + NMAX * STEP + SETTLE;

const ease = (u) => u * u * (3 - 2 * u);
const clamp01 = (u) => (u < 0 ? 0 : u > 1 ? 1 : u);

/** how visible order N is at this point in the loop */
function alphas(t) {
  const full = (N) => 0.16 + 0.42 * (N / NMAX); // the wild high orders read strongest
  const a = Array.from({ length: NMAX + 1 }, (_, N) => (N >= 1 ? full(N) : 0));

  if (t < HOLD) return a;
  t -= HOLD;
  if (t < FADE) {
    const u = ease(t / FADE); // everything but the first order lifts off
    for (let N = 2; N <= NMAX; N++) a[N] *= 1 - u;
    return a;
  }
  t -= FADE;
  for (let N = 2; N <= NMAX; N++) a[N] *= ease(clamp01((t - (N - 2) * STEP) / STEP));
  return a;
}

function draw(p, t) {
  const c = theme(p.svg);
  const a = alphas(((t % CYCLE) + CYCLE) % CYCLE);
  const cut = VIEW_Y[1] + 2.5 * (VIEW_Y[1] - VIEW_Y[0]); // where a runaway leaves for good

  // a curve, broken wherever it bolts out of the frame
  const curve = (g, attrs) => {
    let run = [];
    const flush = () => {
      if (run.length > 1) p.el("polyline", { points: run.join(" "), fill: "none", ...attrs });
      run = [];
    };
    for (let i = 0; i <= SAMPLES; i++) {
      const x = VIEW_X[0] + ((VIEW_X[1] - VIEW_X[0]) * i) / SAMPLES;
      const y = g(x);
      if (!Number.isFinite(y) || Math.abs(y) > cut) flush();
      else run.push(`${p.X(x).toFixed(1)},${p.Y(y).toFixed(1)}`);
    }
    flush();
  };

  p.el("line", {
    x1: p.X(VIEW_X[0]), y1: p.Y(0), x2: p.X(VIEW_X[1]), y2: p.Y(0),
    stroke: c.axis, "stroke-width": 1,
  });

  for (let N = 1; N <= NMAX; N++)
    if (a[N] > 0.004)
      curve((x) => S(N, x), {
        stroke: c.blue, "stroke-width": 0.9, "stroke-opacity": a[N], "stroke-linejoin": "round",
      });

  curve(f, { stroke: c.ink, "stroke-width": 1.9, "stroke-linejoin": "round" });

  // the two points where the series quits. Nothing happens to f at either.
  for (const x of [-RADIUS, RADIUS])
    p.el("circle", { cx: p.X(x), cy: p.Y(f(x)), r: 3.4, fill: c.gold });
}

export default function (container) {
  let t = 0;
  const p = panel(container, {
    width: DESIGN[0], height: DESIGN[1], x: VIEW_X, y: VIEW_Y,
    draw: (p) => draw(p, t),
  });
  const clk = clock((dt, elapsed) => { t = elapsed; p.render(); });
  clk.start();
  return {
    ready: Promise.resolve(),
    pause: () => clk.stop(),
    resume: () => clk.start(),
    dispose: () => { clk.stop(); p.dispose(); },
  };
}
