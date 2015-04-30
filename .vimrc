set nocompatible

filetype off

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
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'

" C++ Plugins
Plugin 'rhysd/vim-clang-format'

" rust
Plugin 'wting/rust.vim'

" Dash
Plugin 'rizzatti/dash.vim'

" Cmake
Plugin 'jalcine/cmake.vim'

" Attempt to determine the type of a file based on name and contents
filetype indent plugin on

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
colorscheme base16-summerfruit

" todo(jshrake): move this junk to separate files
" syntastic settings
let g:syntastic_cpp_checkers=['ycm']
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_python_python_exec = 'python'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" YCM settings
let g:ycm_autoclose_preview_window_after_completion = 1

" Better make
set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\\\\|\\\|\ make\ -C\ ..
