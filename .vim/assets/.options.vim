set nocompatible

filetype on
filetype indent plugin on
filetype plugin on

set autoread
set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set number
set scrolloff=4
set list
set listchars=space:.

set relativenumber

set splitbelow
set splitright

set shiftwidth=2
set softtabstop=2
set expandtab

set belloff=all

set ttimeout
set ttimeoutlen=1
set ttyfast

syntax on

" Folding
set foldmethod=syntax
set foldlevel=99
set foldcolumn=2

let javaScript_fold=1         " JavaScript
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
let yaml_syntax_folding=1     " YAML

" Color scheme
colorscheme jellybeans

" Reset colors of special group hightlights like spaces
highlight SpecialKey ctermbg=NONE

" Terminal background
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif

" Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Plugins
"" Airline
"let g:airline_theme='serene' "simple, serene, minimalist, zenburn
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

"" Quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"" highlightedyank
let g:highlightedyank_highlight_in_visual = 0
