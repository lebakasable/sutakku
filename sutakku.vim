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

syntax match Comment "//.*" contains=Todo
syntax keyword Todo TODO XXX FIXME NOTE
syntax keyword Keyword type var rule run trace
syntax match Operator "<-\|->"

let b:current_syntax = "sutakku"