 
syntax on           " syntax highlighting
set wildmenu        " autocompletion for commandmenu
set number          " line number
set tabstop=4       " four spaces tab
set expandtab       " convert tabs to spaces
set shiftwidth=4    " indents of four spaces
set softtabstop=4   " backspace will remove tabs instead of space
set wrap            " wrap lines
set mouse=a         " enable use of the mouse
set showmatch       " highlight matching brackets
set t_Co=16         " terminal color
set background=light
set incsearch       " search as characters are entered
set ignorecase      " case insensitive search
set smartcase       " case sensitive when uppercase
set laststatus=2    " Always display the status line
set noswapfile      " swap files won't be created
set nobackup        " no backup
set autoindent
set smartindent
set undodir=~/.vim/undodir
set undofile



" disble automatic comments on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" line numbers color
highlight LineNr ctermfg=magenta

" remove all whitespace and newlines at end of file on save
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" statusline
hi User1 ctermfg=black ctermbg=green
hi User2 ctermfg=black ctermbg=blue
hi User3 ctermfg=black ctermbg=yellow
hi User4 ctermfg=black ctermbg=magenta
hi User5 ctermfg=black ctermbg=red
hi User6 ctermfg=none ctermbg=black

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·Line ',
    \ '' : 'V·Block ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \}

set statusline=
set statusline+=%4*\ %4*%{toupper(g:currentmode[mode()])}
set statusline+=%6*\ %f
set statusline+=\ %6*\ %{&modified?'[+]':''}
set statusline+=\ %=%6*\ %Y
set statusline+=\ %5*\ %v:%l\/%L
set statusline+=\ "


" auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O





call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

call plug#end() 


