" General
let mapleader = "'"

" Misc
nnoremap <leader>l :nohl<CR><c-l>

" Navigation
"" Windows
nnoremap <c-\> <c-w>v
nnoremap <c-_> <c-w>s

nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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

noremap 0 ^
noremap ^ 0

vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

nnoremap <leader>j J
vnoremap <leader>j J

" Relative path to file: %
" Absolute path to file: %:p
" Filename only: %:t
" Directory name only: %:p:h
map <leader>n :let @*=fnamemodify(expand("%"), ":~:.") . ":" . line(".")<CR>

"" Foldings
nnoremap <leader>zc zM
vnoremap <leader>zc zM
nnoremap <leader>zo zR
vnoremap <leader>zo zR


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
" format json
nmap <leader>r :%!jq .<CR>

"Plugins
""Switch
nnoremap <leader>s :Switch<CR>
nnoremap <leader>S :SwitchReverse<CR>

" Aliases
"" File type
:command Json :set ft=json 
:command Ruby :set ft=ruby
