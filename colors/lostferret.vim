" 
" VIM COLOR THEME: lostferret
"
" @author: Brent Heyes
"
" This theme was inspired by my time working at 
" Lost Ferret Ltd - http://www.lostferret.co.uk
"
" Support for both GUI (gVIM, MacVIM, etc) and
" remote color terminals (xterm-256color)
"

"
" Initialise color theme
"

hi clear

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
      syntax reset
    endif
endif
let g:colors_name="lostferret"

"
" Setup colors
"

hi Normal         ctermfg=254 guifg=#e4e4e4 ctermbg=232 guibg=#080808

hi Cursor         ctermbg=231 guibg=#ffffff ctermfg=0 guifg=#000000
hi CursorLine     ctermbg=0 guibg=#000000
hi CursorColumn   ctermbg=235 guibg=#262626

hi DiffAdd        ctermfg=231 guifg=#ffffff ctermbg=22 guibg=#005f00 cterm=none gui=none
hi DiffChange     ctermfg=231 guifg=#ffffff ctermbg=130 guibg=#d75f00 cterm=none gui=none
hi DiffText       ctermfg=231 guifg=#ffffff ctermbg=202 guibg=#ff5f00 cterm=none gui=none
hi DiffDelete     ctermfg=231 guifg=#ffffff ctermbg=88 guibg=#870000 cterm=none gui=none
hi ErrorMsg       ctermfg=231 guifg=#ffffff ctermbg=196 guibg=#ff0000 cterm=bold gui=bold

hi Number         ctermfg=227 guifg=#ffff5f

hi Folded         ctermbg=0 guibg=#000000 ctermfg=231 guifg=#ffffff cterm=bold gui=bold
hi vimFold        ctermbg=0 guibg=#000000 ctermfg=231 guifg=#ffffff cterm=bold gui=bold
hi FoldColumn     ctermbg=0 guibg=#000000 ctermfg=231 guifg=#ffffff cterm=bold gui=bold

hi LineNr         ctermfg=243 guifg=#767676 ctermbg=233 guibg=#121212
hi NonText        ctermfg=243 guifg=#767676 ctermbg=0 guibg=#000000
hi Folded         ctermfg=243 guifg=#767676 ctermbg=233 guibg=#121212 cterm=bold gui=bold
hi FoldeColumn    ctermfg=243 guifg=#767676 ctermbg=233 guibg=#121212 cterm=bold gui=bold
hi VertSplit      ctermbg=233 guibg=#121212 ctermfg=233 guifg=#121212 cterm=none gui=none
hi StatusLine     ctermfg=231 guifg=#ffffff ctermbg=233 guibg=#121212 cterm=none gui=none
hi StatusLineNC   ctermfg=241 guifg=#626262 ctermbg=233 guibg=#121212 cterm=none gui=none

hi ModeMsg        ctermfg=227 guifg=#ffff5f
hi MoreMsg        ctermfg=227 guifg=#ffff5f
hi Visual         ctermfg=231 guifg=#ffffff ctermbg=24 guibg=#005f87 cterm=none gui=none
hi VisualNOS      ctermfg=231 guifg=#ffffff ctermbg=23 guibg=#005f5f cterm=none gui=none
hi IncSearch      ctermfg=166 guifg=#d75f00 ctermbg=231 guibg=#ffffff 
hi Search         ctermfg=231 guifg=#ffffff ctermbg=24 guibg=#005f87 
hi SpecialKey     ctermfg=79 guifg=#5fd7af

hi Title          ctermfg=173 guifg=#d7875f
hi WarningMsg     ctermfg=173 guifg=#d7875f
hi Number         ctermfg=178 guifg=#d7af00

hi MatchParen     ctermbg=79 guibg=#5fd7af ctermfg=231 guifg=#ffffff
hi Comment        ctermfg=243 guifg=#767676
hi Constant       ctermfg=173 guifg=#d7875f cterm=none gui=none
hi String         ctermfg=227 guifg=#ffff5f
hi Identifier     ctermfg=14 guifg=#00ffff
hi Statement      ctermfg=231 guifg=#ffffff cterm=bold gui=bold
hi PreProc        ctermfg=81 guifg=#5fd7ff cterm=none gui=none
hi Type           ctermfg=121 guifg=#87ffaf cterm=none gui=none
hi Special        ctermfg=172 guifg=#d78700
hi Underlined     ctermfg=79 guifg=#5fd7af cterm=underline gui=underline
hi Directory      ctermfg=75 guifg=#5fafff
hi Ignore         ctermfg=238 guifg=#444444
hi Todo           ctermfg=231 guifg=#ffffff ctermbg=173 guibg=#d7875f cterm=bold gui=bold
hi Function       ctermfg=79 guifg=#5fd7af

hi WildMenu       ctermfg=231 guifg=#ffffff ctermbg=24 guibg=#005f87 cterm=none gui=none

hi Pmenu          ctermbg=0 guibg=#000000 ctermfg=247 guifg=#9e9e9e
hi PmenuSel       ctermbg=24 guibg=#005f87 ctermfg=231 guifg=#ffffff
hi PmenuSbar      ctermbg=237 guibg=#3a3a3a ctermfg=237 guifg=#3a3a3a
hi PmenuThumb     ctermbg=242 guibg=#6c6c6c ctermfg=242 guifg=#6c6c6c 

hi cppSTLType     ctermfg=75 guifg=#5fafff cterm=bold gui=bold

hi SignColumn     ctermfg=231 guifg=#ffffff ctermbg=235 guibg=#262626

hi TabLine        ctermfg=241 guifg=#626262 ctermbg=232 guibg=#080808 cterm=none gui=none
hi TabLineFill    ctermfg=236 guifg=#303030 ctermbg=232 guibg=#080808 cterm=none gui=none
hi TabLineSel     ctermfg=231 guifg=#ffffff cterm=bold gui=bold

hi spellBad       guisp=#fcaf3e
hi spellCap       guisp=#73d216
hi spellRare      guisp=#ad7fa8
hi spellLocal     guisp=#729fcf

"
" Setup links
" 

hi link cppSTL                Function
hi link Error                 Todo
hi link Character             Number
hi link rubySymbol            Number
hi link htmlTag               htmlEndTag
hi link htmlTagName           htmlTag
hi link htmlLink              Underlined
hi link pythonFunction        Identifier
hi link Question              Type
hi link CursorIM              Cursor
hi link VisualNOS             Visual
hi link xmlTag                Identifier
hi link xmlTagName            Identifier
hi link shDeref               Identifier
hi link shVariable            Function
hi link rubySharpBang         Special
hi link perlSharpBang         Special
hi link schemeFunc            Statement
hi link shSpecialVariables    Constant
hi link bashSpecialVariables  Constant
hi link SyntasticError        SpellBad
hi link SyntasticWarning      SpellCap
