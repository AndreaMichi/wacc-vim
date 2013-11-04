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
syn match waccType 'int\|bool\|char\|string' "Wacc Type
syn match waccExpr '[-+]\?\d\+'  "Wacc Digit
syn match waccExpr 'true\|false' "Wacc Bool
syn match waccExpr '\'\.\'' "Wacc Char
syn match waccExpr '"\.*"' "Wacc String
syn match waccExpr '\h\(\h\|\d\)*' "Wacc Ident
syn match waccExpr 'null' "Wacc PairLiter
syn match waccOperator '!\|-\|len\|ord\|toInt' "Wacc Unary Operator
syn match waccOperator '\*\|\/\|%\|+\|-\|>\|>=\|<\|<=' "Wacc Binary Operator
syn match waccOperator '==\|!=\|&&\|||'

" Keywords
syn keyword waccKeywords begin end skip read call
syn keyword waccKeywords if then else fi while do done
syn keyword waccKeywords free return exit print println if while nextgroup=waccExpr skipwhite
syn keyword waccElem newpair fst snd pair
syn keyword waccTODO contained TODO NOTE

let b:current_syntax = "wacc"

hi def link waccKeywords Keyword
hi def link waccExpr Constant
hi def link waccComment Comment
hi def link waccType Type
hi def link waccElem Type
hi def link waccOperator Operator
