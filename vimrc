""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _________________________
"( ixkungfu's VIM Settings )
" -------------------------
"   o
"    o
"     o  .--.
"       |o_o |
"       |:_/ |
"      //   \ \
"     (|     | )          ,-O  Ubuntu Linux
"     /'\_   _/`\       O(_ )) http://www.ubuntu.com/
"     \___)=(___/         `-O  Linux for Human Beings
"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Author: ixkungfu
" Email: ixkungfu[at]gmail.com
" Blog:
" Create: 2011-09-01
" Vim: set et sw=ts=sts=4 ft=vim ff=unix fenc=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Check OS: {
" g:KFOS { 'unix': 1, 'mac': 2, 'others': 3 }
" tips: set let
" set runtimepath=~/xxx eq let &runtimepath="~/xxx"
let g:KFOS = has('linux') ? 1 : (has('mac') || system('uname -s') =~ 'Darwin') ? 2 : 3 
if g:KFOS == 1
    let g:KFMYVIM = expand('~/.vim')
    let g:KFLSB = substitute(system('lsb_release -si'), '[\s\n]\+', '', '')
elseif g:KFOS == 2
    let g:KFMYVIM = expand('~/.vim')
else
    let g:KFMYVIM = expand('F:/develop/vim')
endif
" }

" Load Bootstrap: {{{
"silent! runtime bootstrap.vim
runtime bootstrap.vim
" }}}
