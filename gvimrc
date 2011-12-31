set lazyredraw
set guicursor+=a:blinkon0
set langmenu=zh_CN.utf-8
set mousemodel=popup

map <silent> <F11> :if &guioptions =~# 'T' <Bar>
    \ set guioptions-=T <Bar>
    \ set guioptions-=m <Bar>
    \ else <Bar>
    \ set guioptions+=T <Bar>
    \ set guioptions+=m <Bar>
    \ endif<cr>

if g:KF#OS == 1
    set guioptions=cMg
elseif g:KF#OS == 2
    set transparency=8
    set guifont=Monaco:h14

elseif g:KF#OS == 3
    set guioptions=cMg
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    autocmd GUIEnter * simalt ~x
    set guifont=Monaco:h10:cANSI
    set guifontwide=YaHei\ Mono:h10
    set shell=D:/cygwin/bin/bash
    set shellcmdflag=--login\ -c
    set shellxquote=\"
endif
