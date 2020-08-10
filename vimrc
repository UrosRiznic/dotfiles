syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80


call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.vim'



call plug#end() 

colorscheme nord 
