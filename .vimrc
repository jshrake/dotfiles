call plug#begin('~/.vim/plugged')
" Themes
Plug 'chriskempson/base16-vim'
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
" wiki
Plug 'vimwiki/vimwiki'
" Misc Plugins
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-rooter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --racer-completer --clang-completer --gocode-complete' }
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'airblade/vim-gitgutter'
" rails
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
" css
Plug 'hail2u/vim-css3-syntax'
" Dash
Plug 'rizzatti/dash.vim'
" C++
Plug 'rhysd/vim-clang-format'
Plug 'lyuts/vim-rtags'
" Go
Plug 'fatih/vim-go'
" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" Julia
Plug 'JuliaLang/julia-vim'
" Clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" racket
Plug 'wlangstroth/vim-racket'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jpalardy/vim-slime'
Plug 'vim-scripts/paredit.vim'
" GLSL
Plug 'tikhomirov/vim-glsl'
" TOML
Plug 'cespare/vim-toml'
" Processing
Plug 'sophacles/vim-processing'
" Julia
Plug 'JuliaLang/julia-vim'
" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
" Typescript
Plug 'leafgarland/typescript-vim'
" Swift
Plug 'keith/swift.vim'

" Add plugins to &runtimepath
call plug#end()

filetype indent plugin on " required

" Enable syntax highlighting
syntax enable

" highlight fixes weird color issue w/ dracula in iterm2
" From https://github.com/dracula/vim/issues/65#issuecomment-377496609
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

let mapleader = ","
set tags=./tags;/

" Autoindent on and other indentation settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

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
set norelativenumber
set nonumber
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
set number
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
nnoremap <leader>b :w<cr>:Make build<cr>
nnoremap <leader>n :cn<cr>
nnoremap <leader>nn :cp<cr>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <leader>/ :TagbarToggle<CR>
nmap <silent> <leader>d <Plug>DashSearch

au FocusLost * :wa
autocmd BufWritePre * StripWhitespace


set wildignore+=*/.git/*,*.swp,*.sw?,*.un~

" Clang format settings
let g:clang_format#auto_format=1

let g:ycm_python_binary_path = 'python3'
let g:ycm_rust_src_path = '/Users/justin/code/rust-src/rust-1.29.0/src'
let g:rust_src_path = '/Users/justin/code/rust-src/rust-1.29.0/src'

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ctrlp_custom_ignore = 'build\|DS_Store\|git'

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  let g:ctrlp_user_command = 'rg %s --files --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Rust
let g:rustfmt_autosave = 1
let g:racer_cmd="racer"
set omnifunc=syntaxcomplete#Complete

" slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

" sexp
let g:sexp_enable_insert_mode_mappings = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_racket_racket_checker = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
let g:airline_theme='dracula'

" guifont
set guifont=Source\ Code\ Pro:h12
set clipboard=unnamed

let g:vimwiki_list = [
                        \{'path': '~/Dropbox/vimwiki/'},
                \]

au BufRead,BufNewFile *.md.html set filetype=markdown
