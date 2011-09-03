set rtp+=~/.vim/bundle/vundle
call vundle#rc()

let github = 'https://github.com/'

" My Bundles: {
Bundle github . 'gmarik/vundle'

" Explorer:
Bundle github . 'scrooloose/nerdtree'

" Syntax Files:
Bundle github . 'plasticboy/vim-markdown'
Bundle github . 'pangloss/vim-javascript'
Bundle github . 'vim-scripts/jQuery'
Bundle github . 'tpope/vim-git'

" Color Schemes:
Bundle github . 'tomasr/molokai'
Bundle github . 'vim-scripts/robokai'
Bundle github . 'tpope/vim-vividchalk'
Bundle github . 'wgibbs/vim-irblack'
Bundle github . 'altercation/vim-colors-solarized'

unlet github
" }
