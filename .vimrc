set nocompatible " required for vundle
filetype off " required for vundle

call plug#begin('~/.vim/plugged')
" Themes
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
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
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
" C++ Plugins
Plug 'rhysd/vim-clang-format'
Plug 'jeaye/color_coded'
" Go Plugins
Plug 'fatih/vim-go'
" Dash
Plug 'rizzatti/dash.vim'
" Syntax
Plug 'cespare/vim-toml'

" Add plugins to &runtimepath
call plug#end()

filetype indent plugin on " required

" Enable syntax highlighting
syntax on

" Set colorscheme
set t_Co=256
set background=dark
colo seoul256
highlight clear SignColumn

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
set cursorline
set ttyfast
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
nnoremap <Tab> :cnext<cr>
nnoremap <S-Tab> :cprevious<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>p :Files<cr>
nnoremap <C-p> :Files<cr>
nnoremap <leader>r :Tags<cr>
nnoremap <leader>f :Ag 
nnoremap <leader>b :w<cr>:Make<cr>
nnoremap <leader>n :cn<cr>
nnoremap <leader>nn :cp<cr>
noremap <leader>g :GitGutterSignsToggle<cr>
nmap <leader>, :TagbarToggle<CR>
nnoremap ; :
au FocusLost * :wa

" Status line fiddling
set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
" tagbar
let g:airline#extensions#tagbar#enabled = 1
let g:tagbar_autofocus=1
let g:tagbar_left=1
let g:tagbar_vertical=30
let g:tagbar_autoclose=1

" Clang format settings
let g:clang_format#auto_format=1

set wildignore+=*.swp,*.sw?,*.un~
