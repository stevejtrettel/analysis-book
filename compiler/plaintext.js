/**
 * Math source → the plain text that stands in for it where markup cannot go:
 * PDF bookmarks (\texorpdfstring), the browser tab title, the nav rails.
 *
 * Only the symbols that plausibly appear in a heading are mapped; anything
 * else falls back to the source with its TeX punctuation stripped, which is
 * legible for the simple cases and never crashes.
 */

const SYMBOLS = {
  alpha: "α", beta: "β", gamma: "γ", delta: "δ", epsilon: "ε", varepsilon: "ε",
  zeta: "ζ", eta: "η", theta: "θ", vartheta: "ϑ", iota: "ι", kappa: "κ",
  lambda: "λ", mu: "μ", nu: "ν", xi: "ξ", pi: "π", varpi: "ϖ", rho: "ρ",
  varrho: "ϱ", sigma: "σ", varsigma: "ς", tau: "τ", upsilon: "υ", phi: "φ",
  varphi: "ϕ", chi: "χ", psi: "ψ", omega: "ω",
  Gamma: "Γ", Delta: "Δ", Theta: "Θ", Lambda: "Λ", Xi: "Ξ", Pi: "Π",
  Sigma: "Σ", Upsilon: "Υ", Phi: "Φ", Psi: "Ψ", Omega: "Ω",
  infty: "∞", times: "×", cdot: "·", pm: "±", to: "→", mapsto: "↦",
  leq: "≤", geq: "≥", neq: "≠", in: "∈", subset: "⊂", cup: "∪", cap: "∩",
  sqrt: "√", sum: "Σ", prod: "Π", int: "∫", partial: "∂",
  RR: "ℝ", QQ: "ℚ", ZZ: "ℤ", NN: "ℕ", CC: "ℂ",
};

export function mathText(source) {
  return source
    .replace(/\\([A-Za-z]+)/g, (m, name) => SYMBOLS[name] ?? name)
    .replace(/[{}$^_\\]/g, "")
    .trim();
}
