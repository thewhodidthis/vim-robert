" promote terminal based color palette in the same vain as
" https://jeffkreeftmeijer.com/vim-16-color/
let colors_name="robert"

" restore defaults
if exists("syntax_on")
  syntax reset
endif

" start from scratch, define own groups below
hi clear

" decor
hi def Bold       ctermfg=NONE ctermbg=NONE cterm=bold
hi def Clear      ctermfg=NONE ctermbg=NONE cterm=NONE
hi def Reverse    ctermfg=NONE ctermbg=NONE cterm=reverse
hi def Standout   ctermfg=NONE ctermbg=NONE cterm=standout
hi def Underline  ctermfg=NONE ctermbg=NONE cterm=underline

" color
hi def Black      ctermfg=0    ctermbg=NONE cterm=NONE
hi def Blue       ctermfg=4    ctermbg=NONE cterm=NONE
hi def Cyan       ctermfg=6    ctermbg=NONE cterm=NONE
hi def Gray       ctermfg=7    ctermbg=NONE cterm=NONE
hi def Green      ctermfg=2    ctermbg=NONE cterm=NONE
hi def Magenta    ctermfg=5    ctermbg=NONE cterm=NONE
hi def Red        ctermfg=1    ctermbg=NONE cterm=NONE
hi def White      ctermfg=15   ctermbg=NONE cterm=NONE
hi def Yellow     ctermfg=3    ctermbg=NONE cterm=NONE

" color flip
hi def Green0     ctermfg=2    ctermbg=NONE cterm=reverse
hi def Magenta0   ctermfg=5    ctermbg=NONE cterm=reverse
hi def Red0       ctermfg=1    ctermbg=NONE cterm=reverse

" combo
hi def Bark       ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi def Fail       ctermfg=1    ctermbg=NONE cterm=bold
hi def Mute       ctermfg=7    ctermbg=NONE cterm=bold
hi def Pass       ctermfg=2    ctermbg=NONE cterm=bold
hi def Warn       ctermfg=3    ctermbg=NONE cterm=bold

" odd one out
hi FoldColumn     ctermfg=7    ctermbg=NONE cterm=underline

" the bang required to override default highlight groups
hi! link Boolean          Red
hi! link Character        Blue
hi! link ColorColumn      Black
hi! link Comment          Gray
hi! link Conceal          Black
hi! link Conditional      Blue
hi! link Constant         Bold
hi! link Cursor           Clear
hi! link CursorColumn     Reverse
hi! link CursorLine       Bold
hi! link CursorLineNr     Bold
hi! link Debug            Fail
hi! link Define           Fail
hi! link Delimiter        Bold
hi! link DiffAdd          Pass
hi! link DiffChange       Warn
hi! link DiffDelete       Fail
hi! link DiffText         Black
hi! link Directory        Bold
hi! link EndOfBuffer      White
hi! link Error            Red0
hi! link ErrorMsg         Red0
hi! link Exception        Fail
hi! link Float            Blue
hi! link Folded           Mute
hi! link Function         Bold
hi! link Identifier       Red
hi! link Ignore           Blue
hi! link Include          Blue
hi! link IncSearch        Reverse
hi! link Keyword          Magenta
hi! link Label            Blue
hi! link LineNr           Gray
hi! link Macro            Underline
hi! link MatchParen       Reverse
hi! link ModeMsg          Bold
hi! link MoreMsg          Underline
hi! link Noise            Gray
hi! link NonText          White
hi! link Normal           Clear
hi! link Number           Blue
hi! link Operator         Black
hi! link Pmenu            Bold
hi! link PmenuSbar        Black
hi! link PmenuSel         Underline
hi! link PmenuThumb       Black
hi! link PreCondit        Blue
hi! link PreProc          Black
hi! link Question         Standout
hi! link QuickFixLine     Magenta0
hi! link Repeat           Blue
hi! link Search           Magenta0
hi! link SignColumn       Black
hi! link Special          Black
hi! link SpecialChar      Bold
hi! link SpecialComment   Black
hi! link SpecialKey       Fail
hi! link SpellBad         Fail
hi! link SpellCap         Blue
hi! link SpellLocal       Underline
hi! link SpellRare        Bark
hi! link Statement        Blue
hi! link StatusLine       Bold
hi! link StatusLineNC     Mute
hi! link StatusLineTerm   Blue
hi! link StatusLineTermNC Bark
hi! link StorageClass     Underline
hi! link String           Blue
hi! link Structure        Red
hi! link TabLine          Bold
hi! link TabLineFill      Reverse
hi! link TabLineSel       Underline
hi! link Tag              Bold
hi! link Title            Bold
hi! link Todo             Green0
hi! link ToolbarButton    Reverse
hi! link ToolbarLine      Reverse
hi! link Type             Red
hi! link Typedef          Underline
hi! link Underlined       Underline
hi! link VertSplit        Mute
hi! link Visual           Reverse
hi! link VisualNOS        Bark
hi! link WarningMsg       Standout
hi! link WildMenu         Underline
