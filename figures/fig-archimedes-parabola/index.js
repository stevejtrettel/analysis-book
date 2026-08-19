/**
 * Live form: the exhaustion running. Boot (t = 0) is the finished
 * triangulation, so the poster is the rich image; the loop then peels the
 * generations away and unfolds them back into the segment one at a time.
 */

import { panel } from "toolkit/panel.js";
import { theme } from "toolkit/theme.js";
import { clock } from "toolkit/clock.js";
import { GENS, VIEW_X, VIEW_Y, DESIGN, drawScene } from "./scene.js";

const HOLD = 2.8, PEEL = 1.0, STEP = 0.9, SETTLE = 0.9;
const CYCLE = HOLD + PEEL + GENS * STEP + SETTLE;

const ease = (u) => u * u * (3 - 2 * u);
const clamp01 = (u) => (u < 0 ? 0 : u > 1 ? 1 : u);

const done = () => Array.from({ length: GENS + 1 }, () => ({ alpha: 1, grow: 1 }));

function stateAt(t) {
  if (t < HOLD) return done(); // also t = 0: the poster frame

  t -= HOLD;
  if (t < PEEL) {
    // the fine generations lift off; the first triangle stays as the anchor
    const u = ease(t / PEEL);
    return done().map((s, g) => (g === 0 ? s : { alpha: 1 - u, grow: 1 }));
  }

  t -= PEEL;
  const gens = done().map((s, g) => (g === 0 ? s : { alpha: 0, grow: 0 }));
  for (let g = 1; g <= GENS; g++) {
    const u = clamp01((t - (g - 1) * STEP) / STEP);
    gens[g] = { alpha: ease(clamp01(u / 0.35)), grow: ease(u) };
  }
  return gens;
}

export default function (container) {
  let t = 0;
  const p = panel(container, {
    width: DESIGN[0], height: DESIGN[1], x: VIEW_X, y: VIEW_Y,
    draw: (p) => drawScene(p, theme(p.svg), stateAt(((t % CYCLE) + CYCLE) % CYCLE)),
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
