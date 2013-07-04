set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'vim-scripts/a.vim'

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

" Set colorscheme
colorscheme Tomorrow-Night

" syntastic settings
let g:syntastic_cpp_checkers=['ycm']
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'

" YCM settings
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker = 0
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
