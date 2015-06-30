set nocompatible " required for vundle
filetype off " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle 
Plugin 'gmarik/vundle'
" Themes
Plugin 'chriskempson/base16-vim'
" Misc Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
" C++ Plugins
Plugin 'rhysd/vim-clang-format'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
" Dash
Plugin 'rizzatti/dash.vim'
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

" todo(jshrake): move this junk to separate files
" syntastic settings
let g:syntastic_cpp_checkers=['ycm']
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" YCM settings
let g:ycm_autoclose_preview_window_after_completion = 1

" Better make
"set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\\\\|\\\|\ make\ -C\ ..
"set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\\\\|\\\|\ make\ -C\ ..
":let &makeprg='[[ -d build ]] && ninja -C build || ninja -C ../build'
:let &makeprg='ninja -C ../build'

