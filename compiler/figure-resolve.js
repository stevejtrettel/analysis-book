/**
 * The figure resolver: one id → what kind of figure exists and where.
 * Every consumer (emitters, capture, dev harness) reads this answer and
 * never touches the filesystem layout itself.
 *
 * Shapes (file presence is the signal — observed, never declared):
 *   figures/<id>.js           single-file live figure (the common case)
 *   figures/<id>/index.js     folder figure; optional print.js beside it
 *                             means the print form is a sequence of stills
 *   figures/<id>.png|jpg|svg|pdf   a plain image as the figure (designed in;
 *                             built when the first real image figure exists)
 *
 * More than one shape for an id is a build error; none is null (callers
 * decide how loud to be).
 */

import { existsSync } from "node:fs";
import path from "node:path";

const IMAGE_EXTS = [".png", ".jpg", ".jpeg", ".svg", ".pdf"];

export function resolveFigure(root, id) {
  const figDir = path.join(root, "figures");
  const found = [];

  if (existsSync(path.join(figDir, `${id}.js`)))
    found.push({ kind: "module", entry: `/figures/${id}.js`, print: null });

  if (existsSync(path.join(figDir, id, "index.js")))
    found.push({
      kind: "module",
      entry: `/figures/${id}/index.js`,
      print: existsSync(path.join(figDir, id, "print.js")) ? `/figures/${id}/print.js` : null,
    });

  for (const ext of IMAGE_EXTS)
    if (existsSync(path.join(figDir, `${id}${ext}`)))
      found.push({ kind: "image", file: path.join(figDir, `${id}${ext}`) });

  if (found.length > 1)
    throw new Error(`figure "${id}" exists in more than one shape under figures/ — keep exactly one`);
  if (found.length === 0) return null;

  const fig = found[0];
  if (fig.kind === "image")
    throw new Error(`figure "${id}": image figures are designed but not built yet — arrives with the first real one`);
  return fig;
}
