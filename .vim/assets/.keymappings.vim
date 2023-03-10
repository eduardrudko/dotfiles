" General
let mapleader = "'"

nnoremap <leader>l :nohl<CR><c-l>

" Navigation
"" Wwindows
nnoremap <c-\> :vsp<CR>
nnoremap <c-_> :sp<CR>

nnoremap <c-q> :q<CR> 

"nnoremap <c-h> <c-w>h
"nnoremap <c-l> <c-w>l
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k

" editor
nnoremap <S-j> <c-d>
nnoremap <S-k> <c-u>
vnoremap <S-j> <c-d>
vnoremap <S-k> <c-u>

nnoremap <c-j> 3j
nnoremap <c-k> 3k
vnoremap <c-j> 3j
vnoremap <c-k> 3k

nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>

"turn off default
nnoremap <c-d> <c-y>
nnoremap <c-u> <c-y>
vnoremap <c-d> <c-y>
vnoremap <c-u> <c-y>

vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

" Editing
map Q gq
map Y y$

noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
noremap <leader>P "+p

" dot for v
vnoremap . :norm.<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

inoremap <C-@> <c-x><c-o>
" Plugins
nmap <leader>r <Plug>(Prettier)

" Aliases
"" File type
:command Json :set ft=json 
