set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle 
Bundle 'gmarik/vundle'

" Misc Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/a.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Townk/vim-autoclose'

" C++ Bundles
Bundle 'vim-scripts/Cpp11-Syntax-Support'
Bundle 'octol/vim-cpp-enhanced-highlight'

" Erlang Bundles
Bundle 'jimenezrick/vimerl'

" Golang Bundles
Bundle 'jnwhiteh/vim-golang'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'moll/vim-node'

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
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_python_python_exe = 'python3'

" YCM settings
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Clang-format.py
map <C-K> :pyf ~/dev/llvm/tools/clang/tools/clang-format/clang-format.py<CR>
imap <C-K> <ESC>:pyf ~/dev/llvm/tools/clang/tools/clang-format/clang-format.py<CR>i

" gofmt on autosave
autocmd FileType go autocmd BufWritePre <buffer> Fmt
