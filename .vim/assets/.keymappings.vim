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
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'

" EastMontion
map <leader> <Plug>(easymotion-prefix)
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
