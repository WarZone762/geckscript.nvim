" Vim syntax file
" Language: geckscript

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn iskeyword a-z,A-Z,48-57,_,192-255

syn case ignore
syn keyword geckKeyword end endif
syn keyword geckStatement set to let continue break return
syn keyword geckDefine set to let
syn keyword geckConditional if elseif else
syn keyword geckRepeat while foreach loop
syn keyword geckType short int long float ref reference string_var array_var
syn keyword geckType short int long float ref reference string_var array_var
syn case match
syn match geckIdentifier "\<[a-zA-Z0-9_]\+\>"
syn match geckBlocktype "\<[a-zA-Z0-9_]\+\>" contained
syn case ignore
syn region geckBeginLine transparent matchgroup=geckKeyword start="^begin\|scn\|scriptname" end="\n" contains=geckBlocktype
syn case match

syn region geckString start=+"+ skip=+\\"+ end=+"+
syn match geckNumber display "[+-]\=\<\d\+\>"
syn match geckNumber display "[+-]\=\<0x\(\d\|[a-fA-F]\)\+\>"
syn match geckFloat display "[+-]\=\<\d\+\.\d+\>"
syn match geckFloat display "[+-]\=\<.\d+\>"
syn match geckOperator "::\||||\|&&\|==\|<<\|>>"
syn match geckOperator ":=\|+=\|-=\|*=\|/=\|%=\|\^=\||=\|&=\|!=\|>=\|<="
syn match geckOperator "=\|$\|#\|\.\|->"
syn match geckOperator ":\|+\|-\|*\|/\|%\|\^\||\|&\|!\|<\|>"
syn match geckDelimiter "(\|)\|\[\|\]\|{\|}"


syn match geckComment ";.*" contains=@Spell

hi def link geckKeyword Keyword
hi def link geckStatement Statement
hi def link geckDefine Define
hi def link geckConditional Conditional
hi def link geckRepeat Repeat
hi def link geckType Type
hi def link geckIdentifier Identifier
hi def link geckBlocktype Constant
hi def link geckString String
hi def link geckNumber Number
hi def link geckFloat Float
hi def link geckOperator Operator
hi def link geckDelimiter Delimiter
hi def link geckComment Comment

let b:current_syntax = "geckscript"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: et ts=4 sw=4
