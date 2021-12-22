if &compatible
  set nocompatible
endif

if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set laststatus=2
set number
set scrolloff=4

set shiftwidth=4
set softtabstop=4
set expandtab

let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
