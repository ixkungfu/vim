if exists("did_load_filetypes")
    finish
endif
let did_load_filetypes = 1

augroup filetypedetect

    autocmd BufReadPost * 
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" |
        \ endif

    " Vim
    au BufNewFile,BufRead *.vim setf vim

    " JavaScript, ECMAScript
    au BufNewFile,BufRead *.{js,javascript,es,jsx} setf javascript

    " Markdown
    au BufNewFile,BufRead *.{md,mkd} setf mkd

augroup END
