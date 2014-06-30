" 
" VIM COLOR THEME: lostferret
"
" @author: Brent Heyes
"
" This theme was inspired by my time working at 
" Lost Ferret Ltd - http://www.lostferret.co.uk
"
" Support for GUI (gVIM, MacVIM, etc) and remote 
" color terminals (xterm-256color, xterm16, xterm8)
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
" GUI support (gVIM, MacVim etc)
"
hi Normal          guifg=#e4e4e4 guibg=#080808
hi Cursor          guibg=#ffffff guifg=#000000
hi Number          guifg=#ffff5f
hi DiffAdd         guifg=#ffffff guibg=#005f00 gui=none
hi DiffChange      guifg=#ffffff guibg=#d75f00 gui=none
hi DiffText        guifg=#ffffff guibg=#ff5f00 gui=none
hi DiffDelete      guifg=#ffffff guibg=#870000 gui=none
hi ErrorMsg        guifg=#ffffff guibg=#ff0000 gui=bold
hi Folded          guibg=#000000 guifg=#ffffff gui=bold
hi vimFold         guibg=#000000 guifg=#ffffff gui=bold
hi FoldColumn      guibg=#000000 guifg=#ffffff gui=bold
hi LineNr          guifg=#767676 guibg=#121212
hi NonText         guifg=#767676 guibg=#000000
hi Folded          guifg=#767676 guibg=#121212 gui=bold
hi FoldeColumn     guifg=#767676 guibg=#121212 gui=bold
hi VertSplit       guibg=#121212 guifg=#121212 gui=none
hi StatusLine      guifg=#ffffff guibg=#121212 gui=none
hi StatusLineNC    guifg=#626262 guibg=#121212 gui=none
hi ModeMsg         guifg=#ffff5f
hi MoreMsg         guifg=#ffff5f
hi Visual          guifg=#ffffff guibg=#005f87 gui=none
hi VisualNOS       guifg=#ffffff guibg=#005f5f gui=none
hi IncSearch       guifg=#d75f00 guibg=#ffffff 
hi Search          guifg=#ffffff guibg=#005f87 
hi SpecialKey      guifg=#5fd7af
hi Title           guifg=#d7875f
hi WarningMsg      guifg=#d7875f
hi Number          guifg=#d7af00
hi Comment         guifg=#767676
hi Constant        guifg=#d7875f gui=none
hi String          guifg=#ffff5f
hi Identifier      guifg=#00ffff
hi Statement       guifg=#ffffff gui=bold
hi PreProc         guifg=#5fd7ff gui=none
hi Type            guifg=#87ffaf gui=none
hi Special         guifg=#d78700
hi Underlined      guifg=#5fd7af gui=underline
hi Directory       guifg=#5fafff
hi Ignore          guifg=#444444
hi Todo            guifg=#ffffff guibg=#d7875f gui=bold
hi Function        guifg=#5fd7af
hi cppSTLType      guifg=#5fafff gui=bold

if v:version >= 700
	if has('spell')
		hi spellBad      guisp=#fcaf3e
		hi spellCap      guisp=#73d216
		hi spellRare     guisp=#ad7fa8
		hi spellLocal    guisp=#729fcf
	endif
	hi Pmenu           guibg=#000000 guifg=#9e9e9e
	hi PmenuSel        guibg=#005f87 guifg=#ffffff
	hi PmenuSbar       guibg=#3a3a3a guifg=#3a3a3a
	hi PmenuThumb      guibg=#6c6c6c guifg=#6c6c6c 
	hi WildMenu        guifg=#ffffff guibg=#005f87  gui=none
	hi TabLine         guifg=#626262 guibg=#080808  gui=none
	hi TabLineFill     guifg=#303030 guibg=#080808  gui=none
	hi TabLineSel      guifg=#ffffff gui=bold
	hi CursorLine      guibg=#000000 gui=underline
	hi CursorColumn    guibg=#262626
	hi MatchParen      guibg=#5fd7af guifg=#ffffff
	hi SignColumn      guifg=#ffffff guibg=#262626
endif

"
" 8 and 16 color support
"
if &t_Co <= 16

	hi Normal         ctermfg=7 ctermbg=0 
	hi Cursor         ctermbg=7 ctermfg=0 
	hi Number         ctermfg=3 
	hi DiffAdd        ctermfg=0 ctermbg=2 cterm=none
	hi DiffChange     ctermfg=0 ctermbg=3 cterm=none 
	hi DiffText       ctermfg=7 ctermbg=1 cterm=none 
	hi DiffDelete     ctermfg=7 ctermbg=1 cterm=none 
	hi ErrorMsg       ctermfg=7 ctermbg=1 cterm=bold 
	hi Folded         ctermbg=0 ctermfg=7 cterm=bold 
	hi vimFold        ctermbg=0 ctermfg=7 cterm=bold 
	hi FoldColumn     ctermbg=0 ctermfg=7 cterm=bold 
	hi LineNr         ctermfg=7 ctermbg=0 
	hi NonText        ctermfg=7 ctermbg=0 
	hi Folded         ctermfg=7 ctermbg=0 cterm=bold 
	hi FoldeColumn    ctermfg=7 ctermbg=0 cterm=bold 
	hi VertSplit      ctermbg=0 ctermfg=0 cterm=none 
	hi StatusLine     ctermfg=7 ctermbg=0 cterm=none 
	hi StatusLineNC   ctermfg=7 ctermbg=0 cterm=none 
	hi ModeMsg        ctermfg=3 
	hi MoreMsg        ctermfg=3 
	hi Visual         ctermfg=7 ctermbg=6 cterm=none 
	hi VisualNOS      ctermfg=7 ctermbg=6 cterm=none 
	hi IncSearch      ctermfg=3 ctermbg=7  
	hi Search         ctermfg=7 ctermbg=6
	hi SpecialKey     ctermfg=6 
	hi Title          ctermfg=1 
	hi WarningMsg     ctermfg=1
	hi Number         ctermfg=3
	hi Comment        ctermfg=7 
	hi Constant       ctermfg=3 cterm=none 
	hi String         ctermfg=3 
	hi Identifier     ctermfg=6 
	hi Statement      ctermfg=7 cterm=bold 
	hi PreProc        ctermfg=6 cterm=none 
	hi Type           ctermfg=2 cterm=none 
	hi Special        ctermfg=3
	hi Underlined     ctermfg=2 cterm=underline 
	hi Directory      ctermfg=6 
	hi Ignore         ctermfg=7 
	hi Todo           ctermfg=7 ctermbg=3 cterm=bold 
	hi Function       ctermfg=6
	hi cppSTLType     ctermfg=6 cterm=bold 

	if v:version >= 700
		if has('spell')
			hi spellBad       ctermfg=7 ctermbg=3 cterm=bold
			hi spellCap       ctermfg=7 ctermbg=2 cterm=bold
			hi spellRare      ctermfg=7 ctermbg=5 cterm=bold
			hi spellLocal     ctermfg=7 ctermbg=6 cterm=bold
		endif
		hi Pmenu          ctermbg=0 ctermfg=7
		hi PmenuSel       ctermbg=6 ctermfg=7 
		hi PmenuSbar      ctermbg=7 ctermfg=7 
		hi PmenuThumb     ctermbg=7 ctermfg=7
		hi WildMenu       ctermfg=7 ctermbg=6  cterm=none 
		hi TabLine        ctermfg=0 ctermbg=7  cterm=none 
		hi TabLineFill    ctermfg=7 ctermbg=7  cterm=none 
		hi TabLineSel     ctermfg=6 cterm=bold 
		hi CursorLine     ctermbg=0 cterm=underline 
		hi CursorColumn   ctermbg=0
		hi MatchParen     ctermbg=6 ctermfg=7 
		hi SignColumn     ctermfg=7 ctermbg=0
	endif

"
" 256 color support
"
else

	hi Normal         ctermfg=254 ctermbg=232 
	hi Cursor         ctermbg=231 ctermfg=0 
	hi Number         ctermfg=227 
	hi DiffAdd        ctermfg=231 ctermbg=22 cterm=none
	hi DiffChange     ctermfg=231 ctermbg=130 cterm=none 
	hi DiffText       ctermfg=231 ctermbg=202 cterm=none 
	hi DiffDelete     ctermfg=231 ctermbg=88 cterm=none 
	hi ErrorMsg       ctermfg=231 ctermbg=196 cterm=bold 
	hi Folded         ctermbg=0 ctermfg=231 cterm=bold 
	hi vimFold        ctermbg=0 ctermfg=231 cterm=bold 
	hi FoldColumn     ctermbg=0 ctermfg=231 cterm=bold 
	hi LineNr         ctermfg=243 ctermbg=233 
	hi NonText        ctermfg=243 ctermbg=0 
	hi Folded         ctermfg=243 ctermbg=233 cterm=bold 
	hi FoldeColumn    ctermfg=243 ctermbg=233 cterm=bold 
	hi VertSplit      ctermbg=233 ctermfg=233 cterm=none 
	hi StatusLine     ctermfg=231 ctermbg=233 cterm=none 
	hi StatusLineNC   ctermfg=241 ctermbg=233 cterm=none 
	hi ModeMsg        ctermfg=227 
	hi MoreMsg        ctermfg=227 
	hi Visual         ctermfg=231 ctermbg=24 cterm=none 
	hi VisualNOS      ctermfg=231 ctermbg=23 cterm=none 
	hi IncSearch      ctermfg=166 ctermbg=231  
	hi Search         ctermfg=231 ctermbg=24  
	hi SpecialKey     ctermfg=79 
	hi Title          ctermfg=173 
	hi WarningMsg     ctermfg=173 
	hi Number         ctermfg=178 
	hi Comment        ctermfg=243 
	hi Constant       ctermfg=173 cterm=none 
	hi String         ctermfg=227 
	hi Identifier     ctermfg=14 
	hi Statement      ctermfg=231 cterm=bold 
	hi PreProc        ctermfg=81 cterm=none 
	hi Type           ctermfg=121 cterm=none 
	hi Special        ctermfg=172 
	hi Underlined     ctermfg=79 cterm=underline 
	hi Directory      ctermfg=75 
	hi Ignore         ctermfg=238 
	hi Todo           ctermfg=231 ctermbg=173 cterm=bold 
	hi Function       ctermfg=79 
	hi cppSTLType     ctermfg=75 cterm=bold 

	if v:version >= 700
		if has('spell')
			hi spellBad       ctermfg=231 ctermbg=215 cterm=bold
			hi spellCap       ctermfg=231 ctermbg=112 cterm=bold
			hi spellRare      ctermfg=231 ctermbg=139 cterm=bold
			hi spellLocal     ctermfg=231 ctermbg=74 cterm=bold
		endif
		hi Pmenu          ctermbg=0 ctermfg=247 
		hi PmenuSel       ctermbg=24 ctermfg=231 
		hi PmenuSbar      ctermbg=237 ctermfg=237 
		hi PmenuThumb     ctermbg=242 ctermfg=242  
		hi WildMenu       ctermfg=231 ctermbg=24 cterm=none 
		hi TabLine        ctermfg=241 ctermbg=232 cterm=none 
		hi TabLineFill    ctermfg=236 ctermbg=232 cterm=none 
		hi TabLineSel     ctermfg=231 cterm=bold 
		hi CursorLine     ctermbg=0 cterm=underline 
		hi CursorColumn   ctermbg=235 
		hi MatchParen     ctermbg=79 ctermfg=231 
		hi SignColumn     ctermfg=231 ctermbg=235 
	endif

endif

"
" Global links
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
hi! link SyntasticError       SpellBad
hi! link SyntasticWarning     SpellCap
