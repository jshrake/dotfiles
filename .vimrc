set nocompatible " required for vundle
filetype off " required for vundle

call plug#begin('~/.vim/plugged')
" Themes
Plug 'chriskempson/base16-vim'
" Misc Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
" C++ Plugins
Plug 'rhysd/vim-clang-format'
Plug 'jeaye/color_coded'
" Dash
Plug 'rizzatti/dash.vim'

" Add plugins to &runtimepath
call plug#end()

filetype indent plugin on " required

" Enable syntax highlighting
syntax on

" Set colorscheme
set t_Co=256
colorscheme base16-eighties
set background=dark
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

let mapleader = ","
set tags=./tags;/

" Autoindent on and other indentation settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
"set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" sane searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" better buffer navigation via tab
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprevious<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>p :Files<cr>
nnoremap <C-p> :Files<cr>
nnoremap <leader>r :BTags<cr>
nnoremap <leader>b :w<cr>:Make<cr>
nnoremap <leader>n :cn<cr>
nnoremap <leader>nn :cp<cr>
nnoremap ; :
au FocusLost * :wa

" Status line fiddling
set statusline+=%#warningmsg#
set statusline+=%*
set laststatus=2
let g:airline_theme='bubblegum'

" Clang format settings
let g:clang_format#auto_format=1
let g:clang_format#auto_format_on_insert_leave=1
