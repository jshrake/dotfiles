set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" Attempt to determine the type of a file based on name and contents
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Display line numbers
set number

" Indentation settings for using 2 spaces for a tab
set shiftwidth=2
set softtabstop=2
set expandtab

" Command window height to 2 lines
set cmdheight=2

" Use case insensitive matching
set ignorecase
set smartcase

" Autoindent on
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert
set backspace=indent,eol,start

" Brace auto-complete
" inoremap { {<CR><BS>}<Esc>ko

" Hit enter in the file browser to open the selected
" " file with :vsplit to the right of the browser.
let g:netrw_browse_split = 2
let g:netrw_altv = 1

"Change directory to the current buffer when opening files.
set autochdir
