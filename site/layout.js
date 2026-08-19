/**
 * Presentation layer: wraps the compiler's chapter fragments into pages and
 * generates the landing page — plain template literals, no template language.
 * Everything visual here descends from the two ratified mocks
 * (design/mockups/chapter.html, landing.html); the mocks retire once the
 * author accepts these pages.
 *
 * Page inventory: /            landing (a cover: no rails, no footer)
 *                 /<slug>/     one page per chapter (no part pages — decided)
 */

import { text, figureEmbed } from "../compiler/emit-html.js";

const label = (ch) => `${ch.number} · ${text(ch.title)}`;

export function chapterPage(book, ch, fragment) {
  const chapters = book.chapters;
  const i = chapters.indexOf(ch);
  const prev = chapters[i - 1];
  const next = chapters[i + 1];

  const bookNav = book.parts
    .map(
      (part) => `
      <div class="part">${esc(part.title)}</div>
      <ol>${part.chapters
        .map((c) =>
          c === ch
            ? `<li class="current"><a href="/${c.slug}/">${esc(label(c))}</a></li>`
            : `<li><a href="/${c.slug}/">${esc(label(c))}</a></li>`
        )
        .join("\n")}</ol>`
    )
    .join("\n");

  const toc = fragment.sections
    .map(
      (s) =>
        `<li data-for="${s.id}"><a href="#${s.id}">${s.number ? s.number + " " : ""}${esc(s.title)}</a></li>`
    )
    .join("\n");

  // Mobile drawer: the book nav with the current chapter expanded in place.
  const drawerNav = book.parts
    .map(
      (part) => `
      <div class="part">${esc(part.title)}</div>
      <ol>${part.chapters
        .map((c) => {
          if (c !== ch) return `<li><a href="/${c.slug}/">${esc(label(c))}</a></li>`;
          const secs = fragment.sections
            .map((s) => `<li><a href="#${s.id}">${s.number ? s.number + " " : ""}${esc(s.title)}</a></li>`)
            .join("\n");
          return `<li class="current"><a href="/${c.slug}/">${esc(label(c))}</a><ol class="drawer-sections">${secs}</ol></li>`;
        })
        .join("\n")}</ol>`
    )
    .join("\n");

  const footerNav = `
    <footer class="chapter-footer">
      <div class="prev">${prev ? `<span class="dir">Previous</span><a href="/${prev.slug}/">${esc(label(prev))}</a>` : ""}</div>
      <div class="next">${next ? `<span class="dir">Next</span><a href="/${next.slug}/">${esc(label(next))}</a>` : ""}</div>
    </footer>`;

  const body = `
<header class="mobile-bar" id="mobile-bar">
  <button class="tool-btn" id="drawer-open" aria-label="Contents">${icons.contents}</button>
  <span class="mobile-bar-title">${esc(label(ch))}</span>
</header>
<div class="drawer-scrim" id="drawer-scrim"></div>
<nav class="drawer" id="drawer" aria-label="Book contents">
  <div class="book-title">${esc(book.title)}</div>
  ${drawerNav}
</nav>

${pageTools()}

<div class="layout">
  <nav class="book-rail"><div class="sticky">
    <div class="book-title"><a href="/">${esc(book.title)}</a></div>
    ${bookNav}
  </div></nav>

  <main class="prose">
${fragment.html}
${footerNav}
    <footer class="site-footer">© 2026 <a href="https://stevejtrettel.site">Steve Trettel</a></footer>
  </main>

  <aside class="toc-rail"><div class="sticky">
    <div class="toc-label">On this page</div>
    <ol id="toc">
${toc}
    </ol>
  </div></aside>
</div>`;

  return shell({ title: `${text(ch.title)} — ${book.title}`, body });
}

export function landingPage(book, figures) {
  const first = book.chapters[0];
  const body = `
${pageTools()}

<main class="cover">
  <div class="hero-kicker">Course Notes</div>
  <h1 class="hero-title">${esc(book.title)}</h1>
  <div class="hero-author">${esc(book.author)}</div>

${
    book.figure
      ? `  <div class="hero-fig" style="--hero-ratio: ${figures.get(book.figure).width} / ${figures.get(book.figure).height}">
    ${figureEmbed(book.figure, figures.get(book.figure))}
  </div>`
      : ""
  }

  <p class="hero-blurb">${esc(book.blurb ?? "")}</p>

  <div class="hero-actions">
    <a class="action primary" href="/${first.slug}/">Begin reading</a>
    <a class="action" href="/book.pdf" title="Download the book as PDF">Download PDF</a>
  </div>

  <nav class="cover-contents" aria-label="Contents">
    <div class="contents-kicker">Contents</div>
${book.parts
  .map(
    (part) => `
    <div class="part">${esc(part.title)}</div>
    <ol>
${part.chapters
  .map((c) => `      <li><a href="/${c.slug}/"><span class="chapno">${c.number}</span>${esc(text(c.title))}</a></li>`)
  .join("\n")}
    </ol>`
  )
  .join("\n")}
  </nav>
</main>`;

  return shell({ title: book.title, body });
}

/** The settled page-tools row: three raw icons, in flow, scroll away. */
function pageTools() {
  return `
<div class="page-head">
  <button class="tool-btn" id="theme-toggle" aria-label="Toggle dark mode">${icons.moon}${icons.sun}</button>
  <a class="tool-btn" href="/book.pdf" title="Download the book as PDF" aria-label="Download the book as PDF">${icons.pdf}</a>
  <a class="tool-btn" href="https://stevejtrettel.site" title="stevejtrettel.site" aria-label="Author homepage">${icons.home}</a>
</div>`;
}

function shell({ title, body }) {
  return `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${esc(title)}</title>
<script>/* The book's canonical face is the warm light page: first visits get it
   regardless of system setting; the toggle's choice persists thereafter. */
document.documentElement.dataset.theme = localStorage.getItem("theme") ?? "light";</script>
<link rel="stylesheet" href="/assets/fonts.css">
<link rel="stylesheet" href="/assets/mathjax.css">
<link rel="stylesheet" href="/assets/book.css">
<script type="importmap">{"imports": {"toolkit/": "/figures/_toolkit/"}}</script>
<script type="module" src="/assets/page.js"></script>
<script type="module" src="/assets/embed.js"></script>
</head>
<body>
${body}
</body>
</html>
`;
}

const svg = (inner) =>
  `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">${inner}</svg>`;

const icons = {
  moon: `<svg class="icon-moon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg>`,
  sun: `<svg class="icon-sun" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>`,
  pdf: svg(`<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/>`),
  home: svg(`<path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/>`),
  contents: svg(`<line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/>`),
};


function esc(t) {
  return String(t).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}
