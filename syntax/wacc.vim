" Vim syntax file
" Language: WACC
" Maintainer: Andrea Michi
" Latest Revision: 1 November 2013


if exists("b:current_syntax")
    finish
endif

" Regions
syn region waccExpr start=/\v"/ skip=/\v\\./ end=/\v"/ "Wacc String

" Matches
syn match waccComment '#.*$' contains=waccTODO "Wacc Comment
syn match waccIdent '\h\(\h\|\d\)*' "Wacc Ident
syn match waccExpr '[-+]\?\d\+'  "Wacc Digit
syn match waccExpr 'true\|false' "Wacc Bool
syn match waccExpr '\'\.\'' "Wacc Char
syn match waccExpr '"\.*"' "Wacc String
syn match waccExpr 'null' "Wacc PairLiter
syn match waccOperator '!\|-\|len\|ord\|toInt' "Wacc Operator
syn match waccOperator '\*\|\/\|%\|+\|-\|>\|>=\|<\|<=\|=' "Wacc Operator
syn match waccOperator '==\|!=\|&&\|||'

" Keywords
syn keyword waccKeywords begin end skip read call
syn keyword waccKeywords free return exit print println  nextgroup=waccExpr skipwhite
syn keyword waccTODO contained TODO NOTE
syn keyword waccConditional if then else fi while do done
syn keyword waccElem int bool char string newpair fst snd pair

let b:current_syntax = "wacc"

hi def link waccKeywords Keyword
hi def link waccConditional Conditional
hi def link waccOperator Operator
hi def link waccElem Type
hi def link waccExpr Constant
hi def link waccIdent Identifier
hi def link waccComment Comment
hi def link waccTODO TODO
