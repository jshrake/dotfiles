call plug#begin('~/.vim/plugged')
" Themes
Plug 'chriskempson/base16-vim'
Plug 'junegunn/seoul256.vim'
" Misc Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --racer-completer --clang-completer --gocode-complete' }
Plug 'vimwiki/vimwiki'
Plug 'rking/ag.vim'
Plug 'jceb/vim-orgmode'
" C++ Plugins
Plug 'rhysd/vim-clang-format'
Plug 'lyuts/vim-rtags'
" Go Plugins
Plug 'fatih/vim-go'
" Dash
Plug 'rizzatti/dash.vim'
" Rust
Plug 'rust-lang/rust.vim'
" Julia
Plug 'JuliaLang/julia-vim'
" Clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" GLSL
Plug 'tikhomirov/vim-glsl'
" TOML
Plug 'cespare/vim-toml'

" Add plugins to &runtimepath
call plug#end()

filetype indent plugin on " required

" Enable syntax highlighting
syntax enable
set t_Co=256
let g:seoul256_background = 233
colorscheme seoul256
set background=dark

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

" per-project vimrc files
set exrc
set secure

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
nnoremap <leader>b :w<cr>:make<cr>
nnoremap <leader>n :cn<cr>
nnoremap <leader>nn :cp<cr>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap ; :
au FocusLost * :wa

" Clang format settings
let g:clang_format#auto_format=1

set wildignore+=*.swp,*.sw?,*.un~
let g:ycm_autoclose_preview_window_after_completion = 1

" wiki settings
let wiki = {}
let wiki.path = '~/src/til'
let wiki.index = 'README'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]

" Rustfmt
let g:rustfmt_autosave = 1
