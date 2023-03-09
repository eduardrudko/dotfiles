" General
let mapleader = "'"

nnoremap <leader>l :nohl<CR><c-l>

" Navigation
"" windows
nnoremap <c-\> :vsp<CR>
nnoremap <c-_> :sp<CR>

nnoremap <c-q> :q<CR> 

"nnoremap <c-h> <c-w>h
"nnoremap <c-l> <c-w>l
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k

" editor
vnoremap <c-j> <c-d>
vnoremap <c-k> <c-u>

nnoremap <S-j> 3j
nnoremap <S-k> 3k
vnoremap <S-j> 3j
vnoremap <S-k> 3k

nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>

nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>
"turn off default
nnoremap <c-d> <c-y>
nnoremap <c-u> <c-y>
vnoremap <c-d> <c-y>
vnoremap <c-u> <c-y>

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

vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

inoremap <C-@> <c-x><c-o>
" Plugins
nmap <leader>r <Plug>(Prettier)



" Aliases
"" File type
:command Json :set ft=json 
