" General
let mapleader = "'"
map <c-c> <ESC> 

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
" Editing
map Q gq
map Y y$

vnoremap <S-TAB> <gv
vnoremap <TAB> >gv
" Plugins
nmap <leader>r <Plug>(Prettier)
