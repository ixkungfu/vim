" Plugins " {{{

" NERDTree
nnoremap <silent><F10> :NERDTreeToggle<cr>

" NERDCommter
nnoremap <a-/> <plug>NERDCommenterToggle<cr>

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" CTags
nnoremap <leader>rt :!ctags --extra=+f -R *<cr><cr>

" }}}
