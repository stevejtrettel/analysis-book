/**
 * Theming: named palette roles, each a light/dark pair living in book.css
 * as --fig-* custom properties. Figures read a RESOLVED snapshot at draw
 * time and write concrete color strings as SVG/canvas attributes — never
 * stylesheets — so a serialized print SVG carries its colors by
 * construction. Access is the explicit theme() snapshot plus
 * onThemeChange(redraw); no live getters, no implicit reactivity.
 *
 * The roster (grown only when a real figure needs a new role):
 *   ink    labels, strong marks          faint  background field elements
 *   axis   axes, frame hairlines         blue   solution curves, orbits
 *   gold   highlighted curves (separatrices, distinguished solutions)
 *
 * Theme pinning: token blocks in book.css match any [data-theme] element,
 * so reading theme(el) inside a pinned subtree resolves that pin — this is
 * how capture takes light-pinned stills and both poster modes.
 */

const ROLES = {
  ink: "--fig-ink",
  faint: "--fig-faint",
  axis: "--fig-axis",
  blue: "--fig-blue",
  gold: "--fig-gold",
};

/** Resolved snapshot of every role, read at el (default: the page theme). */
export function theme(el = document.documentElement) {
  const styles = getComputedStyle(el);
  const t = {};
  for (const [role, prop] of Object.entries(ROLES)) {
    const value = styles.getPropertyValue(prop).trim();
    if (!value) throw new Error(`theme role "${role}" (${prop}) resolved empty — is book.css loaded?`);
    t[role] = value;
  }
  return t;
}

/** Call fn on every site theme flip; returns an unsubscribe function. */
export function onThemeChange(fn) {
  const observer = new MutationObserver(fn);
  observer.observe(document.documentElement, { attributes: true, attributeFilter: ["data-theme"] });
  return () => observer.disconnect();
}

/** "#RRGGBB" | "rgb(...)" → [r, g, b] in 0–1, for future shader uniforms. */
export function toRGB(color) {
  const ctx = (toRGB._ctx ??= document.createElement("canvas").getContext("2d"));
  ctx.fillStyle = color;
  const hex = ctx.fillStyle; // canvas normalizes to #rrggbb
  return [1, 3, 5].map((i) => parseInt(hex.slice(i, i + 2), 16) / 255);
}
