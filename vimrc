"syntax on
syntax enable

set vb
set number
set ruler
set hlsearch 
set ignorecase

set bs=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set cindent

set ff=unix
"se nobomb
"source ~/cscope_maps.vim
"highlight Normal ctermfg=darkgrey  ctermbg=black

source ~/.vim/dhexception.vim
source ~/.vim/python.vim


augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END
