if exists("did_load_filetypes")
    finish
endif
let did_load_filetypes = 1

augroup filetypedetect

    " C
    au BufNewFile,BufRead *.c setf c
    au filetype c setlocal omnifunc=ccomplete#Complete

    " HTML
    au BufNewFile,BufRead *.html setf html

    " Markdown
    au BufNewFile,BufRead *.{md,mkd,mark,markdown} setf mkd
    au filetype html,mkd setlocal omnifunc=htmlcomplete#CompleteTags

    " Makefile
    au BufNewFile,BufRead {Makefile,makefile} setf make | set noexpandtab

    " PHP
    au BufNewFile,BufRead *.php setf php
    au filetype php call s:Dict('php')
    au filetype php setlocal omnifunc=phpcomplete#CompletePHP

    " SH
    au BufNewFile,BufRead *.sh setf sh
    au BufNewFile,BufRead .zshrc setf zsh

    " JavaScript, ECMAScript
    au BufNewFile,BufRead *.{js,javascript,es,jsx} setf javascript
    au filetype javascript call s:Dict('javascript')
    au filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS

    " Taskwarrior configuration file
    au BufNewFile,BufRead .taskrc setf taskrc

    " Taskwarrior data files
    au BufNewFile,BufRead {pending,completed,undo}.data setf taskdata

    " Taskwarrior handling of 'task 42 edit'
    au BufNewFile,BufRead *.task setf taskedit

    " Nginx
    au BufNewFile,BufRead *.nginx setl ft=nginx

    " Vim
    au BufNewFile,BufRead *.vim,{*}vimrc,{*}gvimrc setf vim 
    au BufWritePost .vimrc source $MYVIMRC
    au BufWritePost .gvimrc source ~/.gvimrc

    " Enable omni completion.
    au filetype css setlocal omnifunc=csscomplete#CompleteCSS
    au filetype python setlocal omnifunc=pythoncomplete#Complete
    "au filetype ruby setlocal omnifunc=rubycomplete#Complete
    "au filetype sql setlocal omnifunc=sqlcomplete#Complete
    au filetype xml setlocal omnifunc=xmlcomplete#CompleteTags

augroup END

fun! s:Dict(ft)
    let &dictionary = substitute(g:KF#MYVIM . '/dict/@.dict', '@', a:ft, '')
endfun
