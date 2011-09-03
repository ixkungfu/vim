" Key mappings " {{{
let mapleader = ','
let g:mapleader = ','

" Arrow keys
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Esc
inoremap <leader>, <esc>

" Search
nnoremap <silent><leader><space> :set nohls!<cr>
nnoremap <silent><leader>l :let @/=""<cr>
vnoremap * y/<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>
vnoremap # y?<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>

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

" Move Windoes
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-j> <c-w>j
map <c-h> <c-w>h

" <c-0> rest
map <c-kPlus> <c-w>+
map <c-kMinus> <c-w>-
map <s-left> <c-w><
map <s-right> <c-w>>

" Indent
noremap <tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Line Number
noremap <silent><F2> :if &nu\|se rnu\
            \|elsei &rnu\|se rnu!\
            \|el\|se nu\|endif<cr>

" "}}}
