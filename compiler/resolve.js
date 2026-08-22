/**
 * Stage 2: the book pass — the ONLY code that counts anything.
 *
 * Walks every chapter in book order, stamps {kind, number} onto each
 * numberable node, and builds the global label table. Emitters either defer
 * to LaTeX's own counters (print) or consume these numbers (web); neither
 * ever counts. The aux check (tools/aux-check) later verifies LaTeX agreed
 * with every number assigned here.
 *
 * Numbering rules mirrored against LaTeX (see design/crossref.md):
 *   chapter N (book order) · section N.M · subsection N.M.K
 *   theorem family: one shared counter per chapter → N.M
 *   equations: labeled display math only, per chapter → N.M
 *   figures: per chapter → N.M
 */

import { environments, proofLike } from "./registry.js";

export function resolveBook(chapters) {
  const labels = new Map(); // id → {kind, number, chapter, anchor, file}
  const errors = [];

  const define = (id, kind, number, ch, node) => {
    if (!id) return;
    if (labels.has(id)) {
      errors.push(`duplicate id "${id}" in ${ch.file} (first defined in ${labels.get(id).file})`);
      return;
    }
    labels.set(id, {
      kind,
      number,
      title: node.type === "heading" ? headingText(node) : null,
      chapter: ch.number,
      anchor: `/${ch.slug}/#${id}`,
      file: ch.file,
    });
    node.data = { ...node.data, id, kind, number };
  };

  // Front matter is unnumbered and consumes no chapter number; the numbered
  // chapters count 1..N straight through it.
  let counted = 0;
  chapters.forEach((ch) => {
    ch.number = ch.unnumbered ? null : `${++counted}`;
    const c = { section: 0, subsection: 0, theorem: 0, equation: 0, figure: 0 };
    let sawChapterHeading = false;

    walk(ch.tree, (node) => {
      if (node.type === "heading") {
        if (node.data?.unnumbered) return;
        // Nothing in an unnumbered chapter carries a number; the heading is
        // marked so both emitters star it and refs fall back to the title.
        if (ch.unnumbered) node.data = { ...node.data, unnumbered: true };
        const n = (numbered) => (ch.unnumbered ? null : numbered);
        if (node.depth === 1) {
          if (sawChapterHeading) errors.push(`${ch.file}: more than one "#" chapter heading`);
          sawChapterHeading = true;
          ch.title = node.children;
          define(node.data?.id, "chapter", ch.number, ch, node);
          node.data = { ...node.data, kind: "chapter", number: ch.number };
        } else if (node.depth === 2) {
          c.section += 1;
          c.subsection = 0;
          const number = n(`${ch.number}.${c.section}`);
          define(node.data?.id, "section", number, ch, node);
          node.data = { ...node.data, kind: "section", number };
        } else if (node.depth === 3) {
          c.subsection += 1;
          const number = n(`${ch.number}.${c.section}.${c.subsection}`);
          define(node.data?.id, "subsection", number, ch, node);
          node.data = { ...node.data, kind: "subsection", number };
        }
      } else if (node.type === "containerDirective") {
        if (ch.unnumbered && (environments[node.name] || node.name === "figure")) {
          errors.push(`${ch.file}: :::${node.name} is numbered, and front matter has no numbers`);
        } else if (environments[node.name]) {
          c.theorem += 1;
          const number = `${ch.number}.${c.theorem}`;
          define(node.attributes?.id, node.name, number, ch, node);
          node.data = { ...node.data, kind: node.name, number };
        } else if (node.name === "figure") {
          if (!node.attributes?.id)
            errors.push(`${ch.file}: figure directive needs an id (#fig-…) — the id names its code under figures/`);
          c.figure += 1;
          const number = `${ch.number}.${c.figure}`;
          define(node.attributes?.id, "figure", number, ch, node);
          node.data = { ...node.data, kind: "figure", number };
        } else if (!proofLike[node.name]) {
          errors.push(`${ch.file}: unknown directive :::${node.name}`);
        }
      } else if (node.type === "math") {
        lintMath(node, ch, errors);
        if (node.data?.id && ch.unnumbered) {
          errors.push(`${ch.file}: labeled display math is numbered, and front matter has no numbers`);
        } else if (node.data?.id) {
          c.equation += 1;
          const number = `${ch.number}.${c.equation}`;
          define(node.data.id, "equation", number, ch, node);
        }
      }
    });

    if (!sawChapterHeading) errors.push(`${ch.file}: missing "#" chapter heading`);
    for (const id of ch.tree.data?.orphanEquationLabels ?? [])
      errors.push(`${ch.file}: equation label {#${id}} not attached to any display math`);
  });

  // Second pass: every reference must resolve.
  for (const ch of chapters) {
    walk(ch.tree, (node) => {
      if (node.type !== "ref") return;
      const hit = labels.get(node.target);
      if (!hit) {
        errors.push(`${ch.file}: reference @${node.target} matches no id${suggest(node.target, labels)}`);
      } else {
        node.resolved = hit;
      }
    });
  }

  return { labels, errors };
}

/** Counter-touching math that would silently desync print and web numbering. */
function lintMath(node, ch, errors) {
  const banned = node.value.match(/\\(tag|notag|nonumber)\b|\\begin\{(align|gather|equation)[*]?\}/);
  if (banned)
    errors.push(
      `${ch.file}: "${banned[0]}" inside $$ is not allowed (v1: use aligned inside one labeled equation)`
    );
}

function suggest(target, labels) {
  const near = [...labels.keys()].filter(
    (id) => id.includes(target.slice(4)) || target.includes(id.slice(4))
  );
  return near.length ? ` (did you mean ${near.map((s) => `@${s}`).join(", ")}?)` : "";
}

/** A heading's plain text — what a reference into unnumbered front matter
 *  shows in place of a number (\nameref in print, the title on the web). */
function headingText(node) {
  let out = "";
  walk(node, (n) => {
    if (n.type === "text" || n.type === "inlineCode") out += n.value;
    else if (n.type === "inlineMath") out += `$${n.value}$`;
  });
  return out;
}

/** Depth-first walk in document order. */
export function walk(node, fn) {
  fn(node);
  for (const child of node.children ?? []) walk(child, fn);
}
