" Vim syntax file
" Language: Sutakku

" Usage Instructions
" Put this file in .vim/syntax/sutakku.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.su set filetype=sutakku

if exists("b:current_syntax")
   finish
endif

setlocal commentstring=//%s

syntax match Number "\<[0-9][0-9_]*\>"
syntax match Comment "//.*" contains=Todo
syntax keyword Todo TODO XXX FIXME NOTE
syntax keyword Keyword type var rule run trace
syntax match Operator "<-\|->"
syntax keyword Type Integer

let b:current_syntax = "sutakku"
