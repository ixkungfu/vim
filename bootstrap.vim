" Runtime Configs: {{{
set nocompatible

"switch opening and closing html/xml tags or if/elseif/else/end
runtime macros/matchit.vim

if &term =~ 'xterm'
    runtime config/term.vim
endif

runtime config/personal.vim
runtime config/basic.vim
runtime config/mappings.vim
runtime config/style.vim
filetype off

runtime config/vundle.vim
filetype plugin indent on
" }}}
