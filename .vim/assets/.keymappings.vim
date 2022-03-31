" General
let mapleader = "'"

nnoremap <leader>l :nohl<CR><c-L> 
" Navigation
nnoremap <c-\> :vsp<CR>
nnoremap <c-_> :sp<CR>
nnoremap <c-q> :q<CR> 
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>
" Editing
map Q gq
map Y y$
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
noremap <leader>P "+p

vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

inoremap <C-@> <c-x><c-o>
" Plugins
nmap <leader>r <Plug>(Prettier)
