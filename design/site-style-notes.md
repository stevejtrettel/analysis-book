# Website & LaTeX styling — design notes (in progress)

Running record of the styling conversation. Decisions only; visual
implementation happens in the presentation-layer pass.

## Settled: the site's inherited voice

Base style is the notes section of the author's personal site
(sjtSite), inherited as a starting point — values copied here so this
repo doesn't depend on that one:

- **Page**: warm cream `#F7F5F0`; dark mode warm near-black `#1e1d1b`
  ("warm gray, not brown"). Full token sets live in sjtSite
  `src/styles/global.css` (light + dark) and can be lifted wholesale
  when the presentation layer is built.
- **Type**: EB Garamond body at 1.175rem / 1.68 leading; IBM Plex Sans
  headings; JetBrains Mono code. Muted steel-blue accent (`#3D5A80`
  light / `#7a9abb` dark).
- **Measure**: 44rem content column (54rem wide tier).
- Goal, in the author's words: warm, professional, extremely well
  made.

## Settled: margins on wide screens

- **Right margin: within-chapter ToC**, scrollspy-highlighted.
  **Left margin: book navigation** (parts / chapters). Quarto-shaped
  layout — the craft goes into making it feel like a fine book rather
  than documentation software.
- **Sidenotes: deliberately deferred, not rejected.** The author
  personally likes them, but publishers historically don't, and the
  right margin is now committed to nav. If ever revisited, sidenotes
  would claim the right margin and the ToC would fold into the left
  rail — a layout change, not a compiler change.

## Settled: polish items (cheap, data already exists)

- Equation numbers hanging in the margin gutter, as in print.
- Crossref hover previews (peek at the cited theorem without jumping)
  — served by the label table.
- Prev/next chapter footer.

## Settled: LaTeX

- **XeLaTeX + memoir** (author has memoir experience; publisher will
  impose their own class someday anyway, so this choice is about making
  our PDF beautiful meanwhile). Preamble-only decision: lives in
  `latex/preamble/`, the emitter never knows the engine or class.
  **Built 2026-08-18**: hand-authored `latex/preamble/preamble.tex`;
  the generated main.tex carries only registry-derived declarations.
- fontspec opens a shared type identity between site and print:
  EB Garamond text, with Garamond-Math as the candidate math face.
  **Built: print math IS Garamond** (Garamond-Math via unicode-math);
  the web keeps MathJax's default face (settled separately).
- **Print headings match the site — decided on a live A/B 2026-08-18**
  (author: "i actually like matching the website!!"): IBM Plex Sans
  heads over Garamond text, gray tracked kickers and section numbers,
  chapter/section titles black. All-Garamond headings remain one
  commented line in the preamble (`\PlexHeads`).
- **Trim**: letter with wide symmetric margins now (course notes read
  on screen and print at home); 6×9 is the long-term trim, already
  implemented behind the `\BookTrim` switch.
- The aux check caught memoir's default section-only numbering depth
  on first compile — class migrations are exactly what that loop is
  for.

## Theorem-family treatment — ratified (on the mock, then the built site)

Print and web share one skeleton so they read as the same book: run-in
header in the heading face ("**Theorem 2.4 (Picard–Lindelöf).**"),
amsthm body conventions, proofs opened "*Proof.*" and closed with a
real tombstone. The web may stand out *slightly* more (author's call):

- **Bars ratified on the mock** (since retired).
  Colored left bar, ~3px, by semantic family — never per environment.
  Results (theorem/lemma/prop/corollary) = the palette blue
  (`#317EAB` light / `#65A4D1` dark — the same blue as figure solution
  curves; the site accent `#3D5A80` read too dark as a bar).
  Examples/remarks = faint neutral. Proofs: no bar.
- **Definition bar: gold — decided** (`#B3922D` light / `#AC9E68`
  dark). Chosen over green for hue contrast against the results-blue,
  warmth against the cream page, and colorblind robustness; the author
  notes it's easy to change later, and the mock's toggle keeps green
  one click away.
- **Upright bodies everywhere — decided on the mock.** No italic
  theorem/definition bodies on the web, and print must mirror:
  the LaTeX preamble defines custom amsthm/memoir theorem styles with
  upright bodies (breaking amsthm's italic plain-style default is a
  deliberate choice, made for both outputs together).
- **No background tints, ever** — bar + padding only.
- Print carries no bars/color; the header word does the work.

## Page tools — ratified (on the mock, then the built site)

- **Three raw icons, no boxes, no menu** (settled after iterating
  through a pinned bordered cluster — rejected as floating over text
  and too big — and a popover menu — rejected as a menu). A slim
  in-flow row at the top of the page, right-aligned, that **scrolls
  away with the page**: theme toggle (moon/sun via `data-theme`,
  sjtSite mechanics), PDF file icon (tooltip "Download the book as
  PDF"), home icon → stevejtrettel.site.
- **Small**: 14px icons in `--text-tertiary`; the only hover effect
  is a subtle color shift to accent. Nothing bordered, nothing fixed,
  nothing labeled.
- **Placement ratified after a live A/B against an in-rail variant**
  (icons under the book title in the sticky left rail). Rail version
  rejected: sticky means constantly on screen — a status these tools
  haven't earned — and the rails vanish on mobile, forcing a second
  pattern. Top row is one pattern at every width and lets the tools
  scroll away.
- **Site footer** at the end of the content column: hairline rule,
  small centered line — "© 2026 Steve Trettel", name linking to the
  homepage; **no book title in the footer** (decided). Whether a
  license line joins it still open.

## Site structure

- **No part pages on the web** (decided): parts exist only as
  groupings in the left book rail; print keeps real `\part` pages.
  One page per chapter, opening with the chapter title. Tripwire: if
  a part is ever `@`-referenced in prose, the web has no target — the
  crossref linter should reject part refs until that day forces a
  decision.

## Landing page — ratified on the mock

Ratified on its mock (since retired); author's verdict: "it's perfect."
A cover, not a dashboard — centered single column, no rails: small
uppercase kicker ("Course Notes"), the book title large in
**EB Garamond** (decided — a deliberate contrast with the Plex Sans
chapter headings; the cover is allowed its own display voice), author
line in tracked Plex caps, then the **hero figure** — the pendulum
phase portrait drawn from energy level curves, blue orbits / faint
running solutions / **gold separatrix**, theme-aware — a couple of
sentences (placeholder text; the author writes the real ones), two
understated bordered actions ("Begin reading" primary, "Download
PDF"), page tools per the settled pattern.

**Revised 2026-08-18 (author's call, reversing the "page ends there"
decision)**: a contents list now follows the actions — a narrow
left-aligned block, part kickers + numbered chapters only (sections
live in each chapter's rails). With the real 16-chapter roster the
list earns its place: students see the course's shape and jump to
any chapter from the front door. The cover above the fold is
unchanged; still no footer on the cover. The list sits well below
the actions under its own centered "CONTENTS" kicker, so it reads as
a second movement rather than part of the cover. (Author's stance:
kept for student usability, with lingering ambivalence about the
cleanliness cost — fair to revisit.)

**Planned upgrade once the figure system exists**: the hero becomes a
real live figure — the same phase portrait with points flowing along
the orbits. Note how the settled figure model already fits: today's
static drawing is essentially the production state; the live version
adds motion on top of it.

## Settled during the presentation-layer build (2026-08)

- **Fonts self-hosted**: woff2 subsets committed under
  site/assets/fonts (EB Garamond, IBM Plex Sans, JetBrains Mono),
  plus the MathJax font files copied from the pinned npm package.
- **Web math**: MathJax v4 at build time — pages ship no math JS.
  Default font (New Computer Modern), judged fine by the author
  against the Garamond prose; swapping is the FONT line in
  compiler/math.js. (No Garamond math font exists for MathJax; a
  custom build from Garamond-Math is a possible future experiment.)
- **Mobile nav** (the mocks had none — a real gap): Quarto-shaped,
  judged live. Below 1280px an auto-hiding top bar (hides scrolling
  down, returns on scroll up) opens a left drawer holding the book
  nav with the current chapter expanded to its sections. The landing
  page keeps zero nav at every width.
- **Examples wear the note bar** (gray), not definition gold — the
  author's call on the built site. The registry now carries a web
  `family` per environment, independent of its amsthm print style.
- **Crossref hover previews built** (~40 lines of client JS): the
  cited element is fetched from its page and cloned into a card;
  works across chapters via the label-table anchors.

## Open

- Footnotes (non-margin): source syntax and rendering in both outputs.
- Figure captions, chapter openers, part pages — undesigned.
- How live-figure theming hooks into the site tokens (bridges to the
  figure system's parked theming pass).
