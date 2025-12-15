--[[
tikzcd.lua - Quarto/Pandoc filter for tikz-cd commutative diagrams

Renders tikz-cd diagrams in Quarto documents:
  - PDF/LaTeX: Native tikz-cd passthrough (centered)
  - HTML: Compiles to SVG via pdflatex, embeds as <img>

Usage:
  ```{.tikzcd}
  A \arrow[r, "f"] & B
  ```

Configuration (in YAML front matter):
  tikzcd:
    scale: 1.4        # Scale factor for HTML diagrams (default: 1.4)
    cache: true       # Cache compiled SVGs (default: true)
    cache-dir: "_tikzcd-cache"
    debug: false      # Print debug messages to stderr
    macros-file: "_formatting/macros.tex"  # Macros for diagrams (default)

Custom macros in diagrams:
  If you use custom macros (e.g. \Aut, \Gal) in your diagrams, create a `macros.tex`
  file in your project directory. The filter includes it when compiling diagram SVGs.
  
  For document-wide macros, configure Quarto separately via include-in-header (PDF)
  and include-before-body (HTML).

Requirements:
  - pdflatex with tikz-cd package
  - One of: dvisvgm, pdftocairo, pdf2svg, or inkscape (for PDF→SVG)

Supports quiver (q.uiver.app) diagram styles including curved arrows.

Author: Claude + Steve Trettel
Version: 3.0
--]]

local pandoc = require 'pandoc'

--------------------------------------------------------------------------------
-- Configuration
--------------------------------------------------------------------------------

local config = {
  cache = true,
  cache_dir = "_tikzcd-cache",
  latex_engine = "pdflatex",
  debug = false,
  scale = 1.4,
  macros_file = "_formatting/macros.tex"  -- Auto-included if exists
}

-- Cached macros content (loaded once)
local macros_content = nil
local macros_loaded = false

local function log(msg)
  if config.debug then
    io.stderr:write("[tikzcd] " .. msg .. "\n")
  end
end

--------------------------------------------------------------------------------
-- File utilities
--------------------------------------------------------------------------------

local function file_exists(filepath)
  local f = io.open(filepath, "r")
  if f then
    f:close()
    return true
  end
  return false
end

local function read_file(filepath)
  local f = io.open(filepath, "r")
  if not f then return nil end
  local content = f:read("*all")
  f:close()
  return content
end

local function write_file(filepath, content)
  local f = io.open(filepath, "w")
  if not f then return false end
  f:write(content)
  f:close()
  return true
end

local function ensure_directory(dir)
  os.execute('mkdir -p "' .. dir .. '"')
end

local function load_macros()
  if macros_loaded then
    return macros_content or ""
  end
  macros_loaded = true
  
  if file_exists(config.macros_file) then
    macros_content = read_file(config.macros_file)
    log("Loaded macros from " .. config.macros_file)
  else
    macros_content = ""
    log("No " .. config.macros_file .. " found")
  end
  
  return macros_content
end

--------------------------------------------------------------------------------
-- Format detection
--------------------------------------------------------------------------------

local function is_latex_output()
  return FORMAT:match('latex') or FORMAT:match('pdf') or FORMAT:match('beamer')
end

local function is_html_output()
  return FORMAT:match('html') or FORMAT:match('revealjs') or FORMAT:match('epub')
end

--------------------------------------------------------------------------------
-- LaTeX document generation
--------------------------------------------------------------------------------

-- Quiver package styles for curved arrows and special arrowheads
local QUIVER_STYLES = [[
% Quiver curved arrow support
\tikzset{curve/.style={settings={#1},to path={(\tikztostart)
    .. controls ($(\tikztostart)!\pv{pos}!(\tikztotarget)!\pv{height}!270:(\tikztotarget)$)
    and ($(\tikztostart)!1-\pv{pos}!(\tikztotarget)!\pv{height}!270:(\tikztotarget)$)
    .. (\tikztotarget)\tikztonodes}},
    settings/.code={\tikzset{quiver/.cd,#1}
        \def\pv##1{\pgfkeysvalueof{/tikz/quiver/##1}}},
    quiver/.cd,pos/.initial=0.35,height/.initial=0}
\tikzset{tail reversed/.code={\pgfsetarrowsstart{tikzcd to}}}
\tikzset{2tail/.code={\pgfsetarrowsstart{Implies[reversed]}}}
\tikzset{2tail reversed/.code={\pgfsetarrowsstart{Implies}}}
\tikzset{no body/.style={/tikz/dash pattern=on 0 off 1mm}}
]]

local function make_standalone_latex(tikzcd_code)
  local macros = load_macros()
  
  return string.format([[
\documentclass[tikz,margin=2pt]{standalone}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{tikz-cd}
\usetikzlibrary{calc}
\usetikzlibrary{decorations.pathmorphing}
%s
%s
\begin{document}
\begin{tikzcd}
%s
\end{tikzcd}
\end{document}
]], QUIVER_STYLES, macros, tikzcd_code)
end

--------------------------------------------------------------------------------
-- SVG compilation
--------------------------------------------------------------------------------

local function try_svg_converter(pdf_path, svg_path)
  -- Try converters in order of preference
  local converters = {
    -- dvisvgm: best quality, converts fonts to paths
    string.format('dvisvgm --pdf --no-fonts --exact-bbox -o "%s" "%s" 2>/dev/null', svg_path, pdf_path),
    -- pdftocairo: commonly available via poppler-utils
    string.format('pdftocairo -svg "%s" "%s" 2>/dev/null', pdf_path, svg_path),
    -- pdf2svg: simple and reliable
    string.format('pdf2svg "%s" "%s" 2>/dev/null', pdf_path, svg_path),
    -- inkscape: widely available fallback
    string.format('inkscape --export-type=svg --export-filename="%s" "%s" 2>/dev/null', svg_path, pdf_path),
  }
  
  for _, cmd in ipairs(converters) do
    local result = os.execute(cmd)
    if (result == 0 or result == true) and file_exists(svg_path) then
      return true
    end
  end
  
  return false
end

local function compile_tikzcd_to_svg(tikzcd_code)
  -- Generate cache key from content hash (includes macros so changes invalidate cache)
  local macros = load_macros()
  local hash = pandoc.utils.sha1(tikzcd_code .. macros):sub(1, 12)
  
  ensure_directory(config.cache_dir)
  
  local base = config.cache_dir .. "/tikzcd-" .. hash
  local tex_path = base .. ".tex"
  local pdf_path = base .. ".pdf"
  local svg_path = base .. ".svg"
  
  -- Return cached SVG if available
  if config.cache and file_exists(svg_path) then
    log("Cache hit: " .. hash)
    return svg_path
  end
  
  log("Compiling: " .. hash)
  
  -- Write LaTeX source
  local latex_source = make_standalone_latex(tikzcd_code)
  if not write_file(tex_path, latex_source) then
    io.stderr:write("[tikzcd] Failed to write " .. tex_path .. "\n")
    return nil
  end
  
  -- Compile LaTeX to PDF
  local latex_cmd = string.format(
    'cd "%s" && %s -interaction=nonstopmode -halt-on-error "%s" >/dev/null 2>&1',
    config.cache_dir,
    config.latex_engine,
    "tikzcd-" .. hash .. ".tex"
  )
  
  local latex_ok = os.execute(latex_cmd)
  if latex_ok ~= 0 and latex_ok ~= true then
    io.stderr:write("[tikzcd] LaTeX compilation failed. Check " .. tex_path .. "\n")
    return nil
  end
  
  -- Convert PDF to SVG
  if not try_svg_converter(pdf_path, svg_path) then
    io.stderr:write("[tikzcd] SVG conversion failed. Install dvisvgm, pdftocairo, pdf2svg, or inkscape.\n")
    return nil
  end
  
  -- Clean up intermediate files
  os.remove(pdf_path)
  os.remove(base .. ".aux")
  os.remove(base .. ".log")
  
  log("Created: " .. svg_path)
  return svg_path
end

--------------------------------------------------------------------------------
-- Code block processing
--------------------------------------------------------------------------------

function CodeBlock(el)
  if not el.classes:includes('tikzcd') then
    return nil
  end
  
  local tikzcd_code = el.text
  
  -- LaTeX/PDF output: native tikz-cd passthrough
  if is_latex_output() then
    log("LaTeX output mode")
    local latex = "\\begin{center}\n\\begin{tikzcd}\n" 
                  .. tikzcd_code 
                  .. "\n\\end{tikzcd}\n\\end{center}"
    return pandoc.RawBlock('latex', latex)
  end
  
  -- HTML output: compile to SVG and embed as image
  if is_html_output() then
    log("HTML output mode")
    
    local svg_path = compile_tikzcd_to_svg(tikzcd_code)
    
    if not svg_path then
      return pandoc.Div(
        pandoc.Para(pandoc.Strong("tikz-cd compilation failed")),
        {class = "tikzcd-error"}
      )
    end
    
    -- Read SVG to extract dimensions for scaling
    local svg_content = read_file(svg_path)
    local width = svg_content and svg_content:match('width="([%d%.]+)')
    
    local style = ""
    if width and config.scale ~= 1 then
      style = string.format(' style="width: %.1fpx;"', tonumber(width) * config.scale)
    end
    
    local html = string.format(
      '<div class="tikzcd-diagram"><img src="%s" alt="Commutative diagram"%s></div>',
      svg_path, style
    )
    
    return pandoc.RawBlock('html', html)
  end
  
  -- Unknown format: try HTML approach
  log("Unknown format: " .. FORMAT)
  return nil
end

--------------------------------------------------------------------------------
-- Metadata processing
--------------------------------------------------------------------------------

function Meta(meta)
  if meta.tikzcd then
    local tc = meta.tikzcd
    
    if tc.cache ~= nil then
      config.cache = pandoc.utils.stringify(tc.cache) == "true"
    end
    if tc['cache-dir'] then
      config.cache_dir = pandoc.utils.stringify(tc['cache-dir'])
    end
    if tc['latex-engine'] then
      config.latex_engine = pandoc.utils.stringify(tc['latex-engine'])
    end
    if tc.debug then
      config.debug = pandoc.utils.stringify(tc.debug) == "true"
    end
    if tc.scale then
      config.scale = tonumber(pandoc.utils.stringify(tc.scale)) or 1.4
    end
    if tc['macros-file'] then
      config.macros_file = pandoc.utils.stringify(tc['macros-file'])
    end
  end
  
  return meta
end

--------------------------------------------------------------------------------
-- Header injection
--------------------------------------------------------------------------------

local function add_to_header(meta, content)
  local includes = meta['header-includes']
  if not includes then
    includes = pandoc.MetaList({})
  elseif includes.t ~= 'MetaList' then
    includes = pandoc.MetaList({includes})
  end
  table.insert(includes, pandoc.MetaBlocks({content}))
  meta['header-includes'] = includes
  return meta
end

function add_latex_header(meta)
  if not is_latex_output() then
    return meta
  end
  
  local preamble = [[
\usepackage{tikz-cd}
\usetikzlibrary{calc}
\usetikzlibrary{decorations.pathmorphing}
]] .. QUIVER_STYLES
  
  return add_to_header(meta, pandoc.RawBlock('latex', preamble))
end

function add_html_header(meta)
  if not is_html_output() then
    return meta
  end
  
  local css = [[
<style>
.tikzcd-diagram {
  display: block;
  text-align: center;
  margin: 1.5em 0;
}
.tikzcd-diagram img {
  max-width: 100%;
  height: auto;
}
.tikzcd-error {
  color: red;
  border: 1px solid red;
  padding: 1em;
  margin: 1em 0;
}
</style>
]]
  
  return add_to_header(meta, pandoc.RawBlock('html', css))
end

--------------------------------------------------------------------------------
-- Filter pipeline
--------------------------------------------------------------------------------

return {
  { Meta = Meta },            -- 1. Read configuration
  { Meta = add_latex_header }, -- 2. Inject LaTeX preamble
  { Meta = add_html_header },  -- 3. Inject HTML styles
  { CodeBlock = CodeBlock }    -- 4. Process diagram blocks
}