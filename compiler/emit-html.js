/**
 * Stage 3b: AST → per-chapter HTML fragments, numbers baked in from the
 * resolver, math rendered to CHTML at build time (compiler/math.js).
 *
 * This is layer 1's web output: a fragment plus the chapter's section list
 * (for the ToC rails). Wrapping fragments into pages is the presentation
 * layer's job (site/layout.js); no page chrome or styling decisions here.
 * The markup vocabulary (.env, .disp, .secno, …) is the one ratified on
 * design/mockups/chapter.html.
 */

import { environments, proofLike, refWords } from "./registry.js";
import { renderMath } from "./math.js";
import { mathText } from "./plaintext.js";

/** figures: Map id → {entry, width, height} (resolved + captured by the build) */
let figureTable = new Map();

/** → { html, sections: [{id, number|null, title}] } */
export function emitChapterFragment(ch, figures = new Map()) {
  figureTable = figures;
  const sections = [];
  const intro = [];      // blocks before the first ## section
  const groups = [];     // one entry per ## section
  let current = intro;
  let header = "";

  for (const node of ch.tree.children) {
    if (node.type === "yaml") continue;
    if (node.type === "heading" && node.depth === 1) {
      const id = node.data?.id ? ` id="${node.data.id}"` : "";
      const kicker = ch.number ? `<div class="chapter-number">Chapter ${ch.number}</div>\n` : "";
      header = kicker + `<h1${id}>${inline(node.children)}</h1>`;
    } else if (node.type === "heading" && node.depth === 2) {
      const id = node.data?.id ?? slugify(text(node.children));
      const number = node.data?.unnumbered ? null : node.data.number;
      sections.push({ id, number, title: text(node.children) });
      const secno = number ? `<span class="secno">${number}</span>` : "";
      current = [`<h2>${secno}${inline(node.children)}</h2>`];
      groups.push({ id, blocks: current });
    } else {
      current.push(block(node));
    }
  }

  const html =
    header + "\n" +
    intro.join("\n") + "\n" +
    groups.map((g) => `<section id="${g.id}">\n${g.blocks.join("\n")}\n</section>`).join("\n");
  return { html, sections };
}

function blocks(nodes) {
  return nodes.map(block).filter(Boolean).join("\n");
}

function block(node) {
  switch (node.type) {
    case "heading": {
      // depth ≥ 3 inside a section; ratified layout has no styling below h3
      const id = node.data?.id ? ` id="${node.data.id}"` : "";
      const num = node.data?.number && !node.data?.unnumbered ? `<span class="secno">${node.data.number}</span>` : "";
      return `<h3${id}>${num}${inline(node.children)}</h3>`;
    }
    case "paragraph":
      return `<p>${inline(node.children)}</p>`;
    case "math":
      return displayMath(node);
    case "containerDirective":
      return directive(node);
    case "list": {
      const tag = node.ordered ? "ol" : "ul";
      const items = node.children.map((li) => `<li>${blocks(li.children)}</li>`).join("\n");
      return `<${tag}>\n${items}\n</${tag}>`;
    }
    case "blockquote":
      return `<blockquote>${blocks(node.children)}</blockquote>`;
    case "code":
      return `<pre><code>${esc(node.value)}</code></pre>`;
    case "thematicBreak":
      return "<hr>";
    default:
      throw new Error(`html emitter: unhandled block node "${node.type}"`);
  }
}

function displayMath(node) {
  const math = renderMath(node.value, true);
  if (!node.data?.id) return `<div class="disp">${math}</div>`;
  return (
    `<div class="disp" id="${node.data.id}">${math}` +
    `<span class="eqno">(${node.data.number})</span></div>`
  );
}

/**
 * Theorem-family and proof-like directives share the run-in skeleton:
 * the header span is spliced into the first paragraph so the body runs on
 * from it, per amsthm and the mock.
 */
function directive(node) {
  if (proofLike[node.name]) {
    const inner = runIn(`<span class="env-head">${proofLike[node.name].header}.</span>`, node.children);
    return `<div class="env env-proof">\n${tombstone(inner)}\n</div>`;
  }

  if (node.name === "figure") {
    const id = node.attributes.id;
    const fig = figureTable.get(id);
    if (!fig) throw new Error(`figure "${id}" has no captured artifacts — build order bug`);
    return (
      `<figure id="${id}">\n${figureEmbed(id, fig)}\n` +
      `<figcaption><span class="figno">Figure ${node.data.number}</span> ` +
      `${inline(node.children[0]?.children ?? [])}</figcaption>\n</figure>`
    );
  }

  const env = environments[node.name];
  const word = env.word[0].toUpperCase() + env.word.slice(1);
  const title = node.attributes?.title;
  const head =
    `<span class="env-head">${word}&nbsp;${node.data.number}` +
    (title ? `<span class="env-title"> (${esc(title)})</span>` : "") +
    `.</span>`;
  const cls = `env env-${env.family}`;
  const id = node.attributes?.id ? ` id="${node.attributes.id}"` : "";
  return `<div class="${cls}"${id}>\n${runIn(head, node.children)}\n</div>`;
}

function runIn(head, children) {
  const [first, ...rest] = children;
  if (first?.type === "paragraph")
    return [`<p>${head} ${inline(first.children)}</p>`, ...rest.map(block)].join("\n");
  return [`<p>${head}</p>`, ...children.map(block)].join("\n");
}

function tombstone(html) {
  return html.endsWith("</p>")
    ? html.slice(0, -4) + ` <span class="tombstone">∎</span></p>`
    : html + `\n<p><span class="tombstone">∎</span></p>`;
}

function inline(nodes) {
  return nodes.map(inlineOne).join("");
}

function inlineOne(node) {
  switch (node.type) {
    case "text":
      return esc(node.value);
    case "inlineMath":
      return renderMath(node.value, false);
    case "emphasis":
      return `<em>${inline(node.children)}</em>`;
    case "strong":
      return `<strong>${inline(node.children)}</strong>`;
    case "inlineCode":
      return `<code>${esc(node.value)}</code>`;
    case "ref":
      return ref(node);
    case "link":
      return `<a href="${node.url}">${inline(node.children)}</a>`;
    case "break":
      return "<br>";
    default:
      throw new Error(`html emitter: unhandled inline node "${node.type}"`);
  }
}

function ref(node) {
  const r = node.resolved;
  if (!r) return `<span class="broken-ref">@${node.target}</span>`;
  const attrs = `class="xref" href="${r.anchor}" data-ref="${node.target}" data-kind="${r.kind}"`;
  if (r.kind === "equation") return `<a ${attrs}>(${r.number})</a>`;
  // Front matter has no number to cite, so it is cited by name.
  if (r.number === null) return `<a ${attrs}>${esc(r.title ?? node.target)}</a>`;
  const word = refWords[r.kind];
  const shown = node.capitalized ? word[0].toUpperCase() + word.slice(1) : word;
  return `<a ${attrs}>${shown}&nbsp;${r.number}</a>`;
}

/**
 * The island embed: poster now, live figure on approach (site/assets/embed.js
 * mounts data-entry when the figure nears the viewport, swapping invisibly
 * once its boot frame is ready). Shared with the landing hero via layout.js.
 */
export function figureEmbed(id, fig) {
  return (
    `<div class="fig-embed" data-entry="${fig.entry}">` +
    `<img class="fig-poster" src="/assets/figures/${id}-light.png" ` +
    `data-light="/assets/figures/${id}-light.png" data-dark="/assets/figures/${id}-dark.png" ` +
    `width="${fig.width}" height="${fig.height}" alt=""></div>`
  );
}

export function text(nodes) {
  return nodes
    .map((n) => {
      if (n.type === "text") return n.value;
      if (n.type === "inlineMath" || n.type === "math") return mathText(n.value);
      return n.children ? text(n.children) : n.value ?? "";
    })
    .join("");
}

function slugify(s) {
  return s.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");
}

function esc(t) {
  return t.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}
