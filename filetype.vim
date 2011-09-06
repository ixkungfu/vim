if exists("did_load_filetypes")
    finish
endif
let did_load_filetypes = 1

augroup filetypedetect

    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" |
        \ endif

    " SH
    au BufNewFile,BufRead *.sh setf sh

    " Vim
    au BufNewFile,BufRead *.vim setf vim

    " JavaScript, ECMAScript
    au BufNewFile,BufRead *.{js,javascript,es,jsx} setf javascript

    " Markdown
    au BufNewFile,BufRead *.{md,mkd} setf mkd

    " Taskwarrior data files
    au BufNewFile,BufRead {pending,completed,undo}.data setf taskdata

    " Taskwarrior configuration file
    au BufNewFile,BufRead .taskrc setf taskrc

    " Taskwarrior handling of 'task 42 edit'
    au BufNewFile,BufRead *.task setf taskedit

augroup END
