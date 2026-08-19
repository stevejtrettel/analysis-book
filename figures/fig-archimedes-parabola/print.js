/**
 * Print form: one still of the finished triangulation, drawn as an
 * engraving — every generation in ink, distinguished by stroke weight
 * alone. Colour that separates a "current" generation from the rest means
 * nothing on paper, where the whole exhaustion is present at once.
 */

import { panel } from "toolkit/panel.js";
import { theme } from "toolkit/theme.js";
import { GENS, VIEW_X, VIEW_Y, DESIGN, drawScene } from "./scene.js";

const finished = Array.from({ length: GENS + 1 }, () => ({ alpha: 1, grow: 1 }));

export default async (container, emit) => {
  panel(container, {
    width: DESIGN[0], height: DESIGN[1], x: VIEW_X, y: VIEW_Y,
    draw: (p) => drawScene(p, theme(p.svg), finished, true),
  });
  await emit();
};
