/**
 * The design-size panel: an SVG drawing surface with a live data→pixel map.
 *
 * A figure declares the size it was composed at (design pixels) and a data
 * coordinate window. On screen the panel re-renders through the map at
 * whatever width layout gives it — so text keeps its pixel size and stays
 * readable on phones (viewBox scaling, the lazy default, demonstrably
 * fails this). In an unconstrained container (the capture harness mounts
 * with width:max-content) it renders at exactly the design size, so stills
 * are identical regardless of capture viewport.
 *
 * The draw callback receives the panel and must draw everything from
 * scratch — it runs again on every resize and theme change. Style by
 * attribute with resolved theme() colors, never by stylesheet, so the
 * serialized SVG carries its appearance (the print pipeline depends on it).
 */

import { onThemeChange } from "toolkit/theme.js";

const NS = "http://www.w3.org/2000/svg";

export function panel(container, { width, height, x, y, draw }) {
  const svg = document.createElementNS(NS, "svg");
  svg.setAttribute("xmlns", NS); // survives serialization as a standalone document
  svg.setAttribute("width", width); // sized before append: in a max-content
  svg.setAttribute("height", height); // container the svg IS the measure
  container.appendChild(svg);

  let w = width, h = height;
  const p = {
    svg,
    get w() { return w; },
    get h() { return h; },
    /** data → pixel */
    X: (v) => ((v - x[0]) / (x[1] - x[0])) * w,
    Y: (v) => h - ((v - y[0]) / (y[1] - y[0])) * h,
    /** create an SVG element with attributes, appended to parent (default: the svg) */
    el(name, attrs = {}, parent = svg) {
      const e = document.createElementNS(NS, name);
      for (const k in attrs) e.setAttribute(k, attrs[k]);
      parent.appendChild(e);
      return e;
    },
    render,
  };

  function render() {
    w = container.clientWidth || width; // unconstrained container → design size
    h = Math.round((w * height) / width);
    svg.setAttribute("width", w);
    svg.setAttribute("height", h);
    svg.setAttribute("viewBox", `0 0 ${w} ${h}`); // 1 unit = 1 px, always
    svg.replaceChildren();
    draw(p);
  }

  render();

  let lastW = container.clientWidth;
  const ro = new ResizeObserver(() => {
    if (container.clientWidth !== lastW && container.clientWidth > 0) {
      lastW = container.clientWidth;
      render();
    }
  });
  ro.observe(container);
  const offTheme = onThemeChange(render); // draw() re-reads theme(), so a flip is a re-render

  return Object.assign(p, {
    dispose() {
      ro.disconnect();
      offTheme();
      svg.remove();
    },
  });
}
