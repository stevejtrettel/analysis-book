# Figure system — design notes (in progress)

Running record of the figure-system design conversation. Contains only
what the author decided or what we established together; proposals not
yet ratified are marked as such. This is not yet a spec.

## Settled: what a figure is

- **A figure is named by its directive id, and the id is the lookup**
  (revised with the author at build time, 2026-08): `#fig-slope-field`
  finds its code under `figures/` with no `src` attribute. Shapes, by
  file presence (observed, never declared):
  `figures/<id>.js` — single-file live figure, **the majority case**;
  `figures/<id>/index.js` — folder figure, earned by a `print.js` or
  shared modules; `figures/<id>.png|jpg|svg|pdf` — a plain image as
  the figure ("everything compiles down to figure" — designed in,
  built when the first real image figure exists). More than one shape
  for an id is a build error. One resolver
  (compiler/figure-resolve.js) answers for every consumer.
- `index.js` is always the live figure: the site mounts it, and the
  poster is captured from its boot frame. An optional **`print.js`
  overrides the print form**; its absence means the print form is a
  single still of the boot state.
- **No per-figure `index.html`** (author: emphatically). The dev
  server generates the standalone harness: `/dev/<id>` mounts any
  figure alone on a themed page with a theme toggle. Figures import
  the toolkit via the `toolkit/` import-map alias, so promoting a
  single file to a folder is a pure rename.
- Shared machinery (drawing code, the simulation, production-state
  definitions) lives in a figure-local module that both entries import.
  Sharing by import, not by branching; each entry stays a straight-line
  program.
- Figures import from a **per-book shared toolkit**. The figure *system*
  (these contracts) is portable across books; the toolkit is rebuilt per
  book behind it.
- Most figures in this book draw **SVG via JavaScript**; heavier figures
  use **canvas** and export raster; three.js may not appear in this book
  but must not be precluded (sibling project: ~200 three.js figures).

## Settled: the artifact model

One figure yields three artifact kinds:

| Artifact | Consumer | What it shows |
|---|---|---|
| Live figure | website | boot state + time + interaction |
| Print still(s) | book (PDF) | the production state sequence |
| Poster | site (pre-boot placeholder) | the boot state, exactly |

- **The print form is, in general, an ordered sequence of stills**
  (snapshots of an animation at chosen times, a phase portrait at chosen
  parameter values). Length one is the common case and needs no
  `print.js`. The print program renders each state and emits it,
  reusing the figure's own step machinery.
- **Production states are authored explicitly in figure code** —
  parameters, seeded trajectories, fast-forwards, cameras. Never side
  metadata.
- **Boot defaults to the production state.** For this book's typical
  figures equality is free or a small silent fast-forward. **Boot may
  instead be "just initialize"** — first-class, not an exception — when
  watching emergence is the pedagogy, or (future books only, e.g. hard
  PDE sims where production lives ~30s into the run) when production
  is expensive to reach. **Nothing in this book is in that class:
  every figure here is essentially instant** (author's requirement).
- **The poster is chained to boot, always** (invisible swap when the
  live figure mounts). Cold boot → honestly cold poster, rich stills.

## Settled: capture

- Headless browser mounts the figure exactly as the site would, then
  **observes the DOM**: an `<svg>` is serialized (vector → PDF for
  print, rasterized for posters); a `<canvas>` is read as pixels at
  print width and high DPR. Format discovered, never declared.
- **"Ready" is the figure's own signal**: `index.js` signals when the
  boot frame is drawn (poster taken then); `print.js` emits each still
  when its state is on screen, however long reaching it takes. The
  system never guesses at settle times.
- **Drawing-surface rule**: the captured drawing is a single svg or
  canvas element; control chrome lives outside it and never prints.
- **Performance budget (author's requirement)**: system overhead per
  figure capture ≤ ~50ms; a quarter second is the alarm threshold.
  Consequence: one persistent browser per build with pooled pages —
  never a browser launch per figure (that alone is ~400ms). For this
  book that means **cold capture of the entire book is seconds**, and
  per-figure recapture while writing is imperceptible. A figure's own
  heavy computation (future books' hard PDE sims) is the only
  sanctioned excess: it pays exactly its physics, only when that
  figure changed. The fidelity check (req. 3) can move to a full-build
  audit if it ever crowds the incremental loop.
  **Status at build (2026-08, honest accounting)**: browser launch is
  amortized (one per build, only when captures miss) and misses run in
  parallel workers, but per-figure system cost is ~400–700ms cold —
  page setup, two poster screenshots, and Chromium's SVG→PDF print
  each cost real time, and a fresh page per figure is *required* (a
  reused page's module cache would hide dependencies from the
  staleness trace). The 250ms alarm logs on every capture today. Cache
  hits are ~2ms, so the writing loop is unaffected; cold full-book
  capture at this book's scale is well under the "seconds" bar.
  Optimization is open work if the alarm ever matters in practice.

## Settled: book-side decisions

- **Sequence layout**: the LaTeX emitter arranges N stills as
  equal-width row(s) in one `figure` environment with one shared
  caption; anything fancier is composed inside the figure. Author notes
  a known future need for richer grid layouts — extend the emitter
  when a real figure demands it.
- **No panel cross-references.** Prose references whole figures only;
  captions point at panels in words ("center panel"). Deliberate
  limitation: keeps the label table media-symmetric, since the web has
  no panels — only the live figure.

## Requirements (from the robustness pass)

House rule: for each invariant — enforce structurally, verify with a
closed loop, or accept knowingly with a named mitigation. Never rely on
discipline; never fail quietly.

1. **Staleness**: the capture cache key is the **transitive module
   graph** (figure files + everything they import + vendored libs) plus
   the harness version — recorded by tracing what the figure actually
   loads during capture. A toolkit change invalidates exactly the
   figures that use it.
2. **Determinism**: the capture environment stubs `Math.random` to fail
   the build by name and freezes the clock; the toolkit's seeded RNG is
   the only randomness that exists at capture time.
3. **Serialization fidelity — demoted to optional audit** (was a
   requirement; deflation-tested 2026-08: the failure it guards —
   styling lost in serialization — is structurally unlikely now that
   colors resolve to concrete attribute values at draw time, and
   cross-renderer pixel-diffing is a threshold-tuning tar pit). Build
   it only if a styling bug actually appears in a real still.
4. **Loud failure protocol**: a figure that throws, hangs, never
   signals ready, or emits zero stills is a named per-figure build
   error; failures never leave a stale cache entry standing; a final
   check verifies every `:::figure` directive resolved to current
   artifacts.
5. **Accepted limitation**: consistency between `index.js` and
   `print.js` is semantic and not machine-checkable (divergence is
   legitimate). Mitigations: the shared state module shrinks the drift
   surface; any build that changes stills surfaces a visual before/after
   diff for human review.

## Settled: language, randomness, print entry, math labels

- **JavaScript + JSDoc** for figures and toolkit — no compile step in
  the runtime layer. (Decided.)
- **`print.js` exports an emit callback**:
  `export default async (container, emit) => {...}` — render a state,
  `await emit(label?)` captures it, resolve = done. (Decided; **built
  2026-08-18**, exercised by the cover: hero-pendulum's print form is
  the clean curves without movers — the author's call that frozen
  dots mean nothing on paper. Stills are an ordered sequence
  (`still-1.pdf`, …); the LaTeX row layout for length > 1 remains a
  named not-built error until a chapter figure needs it.)
- **Seeded RNG is in the founding toolkit** — the author expects
  randomness (e.g. clouds of initial conditions); the capture
  harness's Math.random stub stands regardless. (Decided.)
- **MathJax for figure labels — forced, and ratified.** Print stills
  are SVG, so TeX labels must become vector paths inside them; MathJax
  renders TeX→SVG paths headlessly, KaTeX outputs only HTML/CSS
  (foreignObject doesn't survive SVG→PDF or serialization). One
  renderer and one macros.tex for prose and figures. (Decided.)
- **`ratio` attribute dropped** (poster's intrinsic dimensions carry
  it); **toolkit lives at `figures/_toolkit/`**; **teardown state loss
  accepted knowingly**.

## Theming — decided

- **Named palette roles, each a light/dark pair** (author's decision).
  A color outside the system must supply both modes — defining a
  color *is* defining its pair.
- **Mechanism decided** (shaped by a sanctioned look at sjtSite's
  demo-kit — inspiration, not copy): values live as CSS custom
  properties defined per theme block; JS reads *resolved* concrete
  strings at draw time and writes them as SVG/canvas attributes — so
  serialized print SVG carries its colors by construction. Access is
  an **explicit `theme()` snapshot** plus `onThemeChange(redraw)` —
  no live property getters, no implicit reactivity (decided). Theme
  pinning per element serves capture (print pinned light, posters
  both). `toRGB()` for future shader uniforms. Corollary rule:
  figures style by attribute, never by stylesheet.
- **Palette roster — seeded at toolkit build (2026-08)** from the
  colors the author ratified on the mocks, as `--fig-*` light/dark
  pairs in book.css: `ink` (labels, strong marks), `faint` (background
  field elements), `axis` (frame hairlines), `blue` (solution curves,
  orbits), `gold` (highlighted curves — separatrices, distinguished
  solutions). Grows only when a real figure needs a role it lacks.

## Settled: deployment

- **Captured artifacts are a local cache, not committed**
  (regeneration is seconds; the print review surface is the visual
  diff report of req. 5, not git).
- **No remote build.** `dist/` — the site with the PDF inside it — is
  built locally by the one build command and deployed as pure static
  files (`netlify deploy --prod --dir=dist` or any static host).
  A remote build would need headless Chromium AND TeX Live on someone
  else's build image, maintained for years. Tripwire: if
  edit-from-anywhere or collaborators become real, wrap the same
  build command in CI that day.

## Settled: runtime dependencies

- **Vendored-only** (decided; author's initial CDN instinct
  reconsidered against the ten-year rule, the polyfill.io
  supply-chain takeover, browser cache partitioning having killed
  cross-site CDN caching, and self-contained dist/dev/capture).
  Anything a figure imports at runtime lives in this repo, pinned,
  served via import map (`"three": "/vendor/three-<ver>.js"`); npm
  exists for build tooling only. Updates are deliberate, rare,
  one-line acts — a book vendors one renderer version for roughly its
  whole life, and each book vendors its own. Git cost: ~1MB of text
  per deliberate bump; the prize is the exact rendering engine
  archived with the book forever.

## Open — author has not decided

- Nothing. The design sheet is clean; the palette roster is
  deliberately deferred to the toolkit build (see Theming), and the
  remaining "Untouched" items below are implementation-time details,
  not design questions.

## Adopted from odes/ (deliberate post-design review, 2026-08)

Reviewed structurally after our design was settled; every item passed
the deflation test (bare mechanism + what concretely fails without
it). Sized honestly:

- **Real steal — design-size panels with non-scaling type.** A panel
  declares the size it was composed at; on screen it re-renders
  through a live data→pixel map at whatever size layout gives it, so
  labels keep their pixel size (readable on phones — `viewBox`
  scaling, the lazy default, demonstrably fails this); print always
  renders at the design size, so stills are identical regardless of
  capture viewport.
- **Half a steal — layered SVG+canvas sharing one coordinate map.**
  Makes vector-chrome-over-raster-field figures ordinary instead of a
  rewrite when the first heavy figure arrives.
- **Footnotes (debugged-path notes, not architecture):** hybrid
  exports may use sidecar PNGs rather than inlined base64; TeX-label
  potholes (per-expression self-contained glyph defs, await
  typesetting before capture, only vendored TeX packages work
  offline); frame clocks report elapsed-while-running so paused
  figures resume without jumping.
- **Explicitly not adopted:** the three-axes styling doctrine
  (deflates to ordinary variable reuse; styling stays the author's
  judgment — toolkit marks ship quiet defaults, and when curves are
  distinguished only by color, add dash redundancy for grayscale/CVD),
  iframe embedding + height protocol, `window.figureExport` global
  wiring, Quarto/Lua couplings, fixed-white theme.

## Untouched (implementation-time details)

- Embedding mechanics: lazy mount/teardown scroll thresholds, WebGL
  context budget numbers.
- Shader-source loading (fetch vs tagged template literals vs a tiny
  runtime-layer compile step) — decide when the first shader figure
  exists.
