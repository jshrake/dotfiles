set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle 
Bundle 'gmarik/vundle'

" Misc Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-dispatch'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'

" C++ Bundles
Bundle 'Mizuchi/STL-Syntax'

" Python
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'tell-k/vim-autopep8'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'thoughtbot/vim-rspec'

" tmux
Bundle 'kikijump/tslime.vim'

" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'guns/vim-sexp'
Bundle 'tpope/vim-sexp-mappings-for-regular-people'

" Dash
Bundle 'rizzatti/dash.vim'

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
colorscheme Tomorrow-Night-Bright

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

" Clang-format.py
map <C-K> :pyf /Library/Caches/Homebrew/llvm35--clang--git/tools/clang-format/clang-format.py<CR>
imap <C-K> <ESC>:pyf /Library/Caches/Homebrew/llvm35--clang--git/tools/clang-format/clang-format.py<CR>i

" Better make
set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\\\\|\\\|\ make\ -C\ ..

" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesActivate
  au BufEnter * RainbowParenthesesLoadRound
  au BufEnter * RainbowParenthesesLoadSquare
  au BufEnter * RainbowParenthesesLoadBraces
augroup END
