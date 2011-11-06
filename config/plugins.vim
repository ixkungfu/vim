" Plugins " {{{

" NERDTree
nnoremap <silent><F8> :NERDTreeToggle<cr>

" NERDCommter
if has("gui_macvim")
    let macvim_skip_hig_shift_movement = 1
    map <D-/> ,c<space>
endif

" Ack
let g:ackprg = "ack-grep -H --nocolor --nogroup --column"

" CTags
nnoremap <leader>rt :!ctags --extra=+f -R *<cr><cr>

" Taglist
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
let Tlist_Ctags_Cmd = $HOME . "/develop/unix/bin/ctags"

" Tarbar
let g:tagbar_ctags_bin = $HOME . "/develop/unix/bin/ctags"
nnoremap <silent><F6> :TagbarToggle<cr>

" }}}
