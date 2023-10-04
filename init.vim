set nu
set ruler
syntax on

set cursorline
" highlight CursorLine term=bold cterm=bold guibg=White

set encoding=UTF-8

set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" colorscheme onedark
set termguicolors
set signcolumn=yes
set background=light

set undofile

let mapleader = " "


nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

lua << EOF
require('main')
EOF
