set nu
set ruler
syntax on

set cursorline
highlight CursorLine term=bold cterm=bold guibg=White

set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

colorscheme kanagawa
set termguicolors
set signcolumn=yes

let mapleader = " "


nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" pair brackets...
imap ( ()<ESC>i
imap () ()<ESC>a

imap [ []<ESC>i
imap [] []<ESC>a

imap {<SPACE> {<SPACE><SPACE>};<ESC><LEFT><LEFT>i
imap {; {<CR><CR>};<ESC>jddkkddkA
imap { {}<ESC>i<CR><CR><ESC>kA<TAB><RIGHT><RIGHT>
imap {} {}<ESC>a


imap < <><ESC>i
imap <<SPACE> <<ESC><RIGHT>r<SPACE>a
imap << <<<ESC><RIGHT>r<SPACE>a<BACKSPACE>
imap <= <=<ESC>a
imap <> <><ESC>a

imap "" ""<ESC>i
imap '' ''<ESC>i