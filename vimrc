"syntax on
syntax enable

set vb
set number
set ruler
set hlsearch 
set ignorecase

"set bs=2
"set ts=4
"set shiftwidth=4
"set expandtab

set autoindent
set cindent

set ff=unix
"se nobomb
"source ~/cscope_maps.vim

source ~/.vim/dhexception.vim


augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END
