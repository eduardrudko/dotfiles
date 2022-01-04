set nocompatible

filetype on
filetype indent plugin on
filetype plugin on

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

set splitbelow
set splitright

set shiftwidth=2
set softtabstop=2
set expandtab

set omnifunc=syntaxcomplete#Complete

syntax on

colorscheme badwolf
let g:airline_theme='serene' "simple, serene, minimalist, zenburn
let g:airline#extensions#tabline#enabled = 1

set runtimepath^=~/.vim/bundle/ctrlp.vim
