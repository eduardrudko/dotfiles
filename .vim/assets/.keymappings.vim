" General
let mapleader = "'"

nnoremap <leader>l :nohl<CR><c-l>

" Navigation
"" Windows
nnoremap <c-\> :vsp<CR>
nnoremap <c-_> :sp<CR>

nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k

"" Buffers
nmap <S-t> :enew<cr>

nmap <c-q> :bp <BAR> bd #<CR>

nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>

""Editor
nnoremap <S-j> 3<c-e>
nnoremap <S-k> 3<c-y>
vnoremap <S-j> 3<c-e>
vnoremap <S-k> 3<c-y>

nnoremap <c-j> 3j
nnoremap <c-k> 3k
vnoremap <c-j> 3j
vnoremap <c-k> 3k

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
