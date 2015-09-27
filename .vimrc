set nocompatible " required for vundle
filetype off " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle 
Plugin 'gmarik/Vundle.vim'
" Themes
Plugin 'chriskempson/base16-vim'
" Misc Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/taglist.vim'
" C++ Plugins
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jeaye/color_coded'
" Clojure Plugins
Plugin 'vim-scripts/VimClojure'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-cljfmt'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
" Dash
Plugin 'rizzatti/dash.vim'
" Elm
Plugin 'lambdatoast/elm.vim'

"All of your Plugins must be added before the following line
call vundle#end()         " required
filetype indent plugin on " required

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Display line numbers
set number

" Command window height to 2 lines
set cmdheight=2

" Use case insensitive matching
set ignorecase
set smartcase

" Autoindent on and other indentation settings
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

" Allow backspacing over autoindent, line breaks and start of insert
set backspace=indent,eol,start

"Change directory to the current buffer when opening files.
set autochdir

" Set colorscheme
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-monokai

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Better make
:let &makeprg='[[ -d build ]] &&cmake --build build || cmake --build ../build'

let mapleader = ","
set tags=./tags,tags;$HOME
nnoremap <leader>. :CtrlPTag<cr>
