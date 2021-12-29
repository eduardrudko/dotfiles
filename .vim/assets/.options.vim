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

set t_Co=256
syntax on

" let g:gruvbox_contrast_dark = 'hard'
" autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme minimalist
colorscheme badwolf
let g:airline_theme='zenburn' "simple, serene, minimalist
let g:airline#extensions#tabline#enabled = 1
