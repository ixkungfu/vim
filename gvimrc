set guioptions=cMg
set lazyredraw
let &guicursor = &guioptions . ',a:blinkon0'

map <silent> <F11> :if &guioptions =~# 'T' <Bar>
    \ set guioptions-=T <Bar>
    \ set guioptions-=m <Bar>
    \ else <Bar>
    \ set guioptions+=T <Bar>
    \ set guioptions+=m <Bar>
    \ endif<cr>

if g:KF#OS == 1
elseif g:KF#OS == 2
elseif g:KF#OS == 3
    autocmd GUIEnter * simalt ~x
    set guifont=Monaco:h10:cANSI
    set guifontwide=YaHei\ Mono:h10
    set shell=D:/cygwin/bin/bash
    set shellcmdflag=--login\ -c
    set shellxquote=\"
endif
