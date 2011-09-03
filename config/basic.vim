" General " {{{

set ttyfast
set timeoutlen=250
set clipboard+=unnamed
set pastetoggle=<F3>

set tags=./tags;$HOME

set modeline
set modelines=5

set autowrite
set autoread
set autochdir

set history=256
set undoreload=256
set undofile

set hidden

" Backup
set nobackup
set nowritebackup
set noswapfile
let &undodir=g:KF#MYVIM . "/tmp/und"

" Search
set magic
set hlsearch
set smartcase
set incsearch
set wrapscan

set matchpairs+=<:>

let g:is_posix = 1
" "}}}

" Formatting " {{{
set fo+=o
set fo-=r
set fo-=t

" Edit
set autoindent
set cindent
set smartindent
set shiftround
set backspace=indent,eol,start
set showmatch

" Tab
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set nowrap
" "}}}

" Visual "{{{
syntax on

set mouse=a
set mousehide

set matchtime=2

set nonumber
set textwidth=80
set colorcolumn=+1

set wildmode=longest,list

set completeopt+=preview

" Bell
set novisualbell
set noerrorbells
set vb t_vb=

set laststatus=2
set shortmess=atI
set showcmd

" Scroll
set scrolloff=3
set sidescrolloff=3
if &diff && has('cursorbind')
    set scrollbind
endif

set statusline=%F%m%r%h%w
set stl+=%=(%{&ff}/%Y/%{&fenc})
set stl+=\ (line\ %l\/%L,\ col\ %c)\ %P

set foldenable
set foldmethod=marker
set foldlevel=100

set foldopen=block,hor,tag
set foldopen+=percent,mark
set foldopen+=quickfix

set equalalways
set splitbelow
set splitright

set list
set listchars=tab:\ ·,eol:¬
set listchars+=trail:·
set listchars+=extends:»,precedes:«
map <silent> <F4> :set invlist<CR>

set helplang=cn,en

set nobomb
set fileformat=unix
set fileformats=unix,mac,dos
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312
set fencs+=gb18030,big5,cp936,chinese
set fencs+=euc-jp,euc-kr,latin1
"set ambiwidth=double

if g:KF#OS == 3
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif
" "}}}
