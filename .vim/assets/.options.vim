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

set splitbelow
set splitright

set shiftwidth=2
set softtabstop=2
set expandtab

set belloff=all

syntax on

colorscheme badwolf
let g:airline_theme='serene' "simple, serene, minimalist, zenburn
let g:airline#extensions#tabline#enabled = 1

" YCM
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}


" Curcor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
