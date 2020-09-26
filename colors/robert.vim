" start from scratch
highlight clear

" restore defaults
if exists("syntax_on")
  syntax reset
endif

" gordon?
let g:colors_name = "robert"

" decor
let s:bald      = "ctermfg=NONE ctermbg=NONE cterm=NONE"
let s:bold      = "ctermfg=NONE ctermbg=NONE cterm=bold"
let s:reverse   = "ctermfg=NONE ctermbg=NONE cterm=reverse"
let s:standout  = "ctermfg=NONE ctermbg=NONE cterm=standout"
let s:underline = "ctermfg=NONE ctermbg=NONE cterm=underline"

" color
let s:black   = "ctermfg=0  ctermbg=NONE cterm=NONE"
let s:blue    = "ctermfg=4  ctermbg=NONE cterm=NONE"
let s:cyan    = "ctermfg=6  ctermbg=NONE cterm=NONE"
let s:gray    = "ctermfg=7  ctermbg=NONE cterm=NONE"
let s:green   = "ctermfg=2  ctermbg=NONE cterm=NONE"
let s:magenta = "ctermfg=5  ctermbg=NONE cterm=NONE"
let s:red     = "ctermfg=1  ctermbg=NONE cterm=NONE"
let s:white   = "ctermfg=15 ctermbg=NONE cterm=NONE"
let s:yellow  = "ctermfg=3  ctermbg=NONE cterm=NONE"

" color flip
let s:_green   = "ctermfg=2 ctermbg=NONE cterm=reverse"
let s:_magenta = "ctermfg=5 ctermbg=NONE cterm=reverse"
let s:_red     = "ctermfg=1 ctermbg=NONE cterm=reverse"
let s:_yellow  = "ctermfg=3 ctermbg=0    cterm=reverse"

" combo
let s:bark = "ctermfg=0 ctermbg=NONE cterm=bold,underline"
let s:fail = "ctermfg=1 ctermbg=NONE cterm=bold"
let s:mute = "ctermfg=7 ctermbg=NONE cterm=bold"
let s:pass = "ctermfg=2 ctermbg=NONE cterm=bold"
let s:warn = "ctermfg=3 ctermbg=NONE cterm=bold"
let s:wolf = "ctermfg=7 ctermbg=NONE cterm=underline" " odd one out

" use hash prefix to skip quoting of keys past vim 8.1
let s:robert = {
  \"Boolean"          : s:red,
  \"Character"        : s:blue,
  \"ColorColumn"      : s:black,
  \"Comment"          : s:gray,
  \"Conceal"          : s:black,
  \"Conditional"      : s:blue,
  \"Constant"         : s:bold,
  \"Cursor"           : s:bald,
  \"CursorColumn"     : s:reverse,
  \"CursorIM"         : s:bald,
  \"CursorLine"       : s:bold,
  \"CursorLineNr"     : s:bold,
  \"Debug"            : s:fail,
  \"Define"           : s:fail,
  \"Delimiter"        : s:bold,
  \"DiffAdd"          : s:pass,
  \"DiffChange"       : s:warn,
  \"DiffDelete"       : s:fail,
  \"DiffText"         : s:black,
  \"Directory"        : s:bold,
  \"EndOfBuffer"      : s:white,
  \"Error"            : s:_red,
  \"ErrorMsg"         : s:_red,
  \"Exception"        : s:fail,
  \"Float"            : s:blue,
  \"FoldColumn"       : s:wolf,
  \"Folded"           : s:mute,
  \"Function"         : s:bold,
  \"Identifier"       : s:red,
  \"Ignore"           : s:blue,
  \"Include"          : s:blue,
  \"IncSearch"        : s:reverse,
  \"Keyword"          : s:magenta,
  \"Label"            : s:magenta,
  \"LineNr"           : s:gray,
  \"Menu"             : s:underline,
  \"Macro"            : s:underline,
  \"MatchParen"       : s:reverse,
  \"ModeMsg"          : s:bold,
  \"MoreMsg"          : s:underline,
  \"Noise"            : s:gray,
  \"NonText"          : s:white,
  \"Normal"           : s:bald,
  \"Number"           : s:blue,
  \"Operator"         : s:cyan,
  \"Pmenu"            : s:bold,
  \"PmenuSbar"        : s:black,
  \"PmenuSel"         : s:underline,
  \"PmenuThumb"       : s:black,
  \"PreCondit"        : s:blue,
  \"PreProc"          : s:black,
  \"Question"         : s:standout,
  \"QuickFixLine"     : s:_magenta,
  \"Repeat"           : s:blue,
  \"Scrollbar"        : s:black,
  \"Search"           : s:_yellow,
  \"SignColumn"       : s:black,
  \"Special"          : s:cyan,
  \"SpecialChar"      : s:bold,
  \"SpecialComment"   : s:black,
  \"SpecialKey"       : s:green,
  \"SpellBad"         : s:fail,
  \"SpellCap"         : s:blue,
  \"SpellLocal"       : s:underline,
  \"SpellRare"        : s:bark,
  \"Statement"        : s:magenta,
  \"StatusLine"       : s:bold,
  \"StatusLineNC"     : s:mute,
  \"StatusLineTerm"   : s:blue,
  \"StatusLineTermNC" : s:bark,
  \"StorageClass"     : s:underline,
  \"String"           : s:blue,
  \"Structure"        : s:red,
  \"TabLine"          : s:bold,
  \"TabLineFill"      : s:reverse,
  \"TabLineSel"       : s:underline,
  \"Tag"              : s:bold,
  \"Terminal"         : s:bald,
  \"Title"            : s:bold,
  \"Todo"             : s:_green,
  \"Tooltip"          : s:bald,
  \"ToolbarButton"    : s:reverse,
  \"ToolbarLine"      : s:reverse,
  \"Type"             : s:red,
  \"Typedef"          : s:underline,
  \"Underlined"       : s:underline,
  \"VertSplit"        : s:mute,
  \"Visual"           : s:reverse,
  \"VisualNOS"        : s:bark,
  \"WarningMsg"       : s:standout,
  \"WildMenu"         : s:underline,
\}

" colorize
for [group, value] in items(s:robert)
  execute "highlight" group value
endfor

" syntax specific overrides
highlight link htmlSpecialTagName Normal
highlight link htmlEndTag htmlTag
highlight link javaScript Normal
highlight link javaScriptException Identifier
highlight link javaScriptLabel Normal
highlight link markdownItalic Normal
highlight link cssHacks cssAttrRegion
