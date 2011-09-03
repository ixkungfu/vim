" Runtime Configs: {{{
set nocompatible

if &term =~ 'xterm'
    runtime config/term.vim
endif

runtime config/personal.vim
runtime config/basic.vim
runtime config/mappings.vim
"switch opening and closing html/xml tags or if/elseif/else/end
silent! runtime macros/matchit.vim
filetype off

silent! runtime vundle.vim
filetype plugin indent on
" }}}
