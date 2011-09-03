" Key mappings " {{{
let mapleader = ','
let g:mapleader = ','

" Arrow keys
nnoremap j gj
nnoremap k gk

" Esc
inoremap <leader>, <esc>

" Command Mode like terminal command
cmap <c-a> <home>
cmap <c-e> <end>
cnoremap <c-p> <up>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-b> <left>
cnoremap <c-d> <del>

" Tabs
nnoremap <leader>lt :tabs<cr>
nnoremap <leader>n :silent tabprev<cr>
nnoremap <leader>m :silent tabnext<cr>
nnoremap <leader>tf :silent tabfirst<cr>
nnoremap <leader>tl :silent tablast<cr>

" Search
nnoremap <silent><leader><space> :set nohls!<cr>
nnoremap <silent><leader>l :let @/=""<cr>

" "}}}
