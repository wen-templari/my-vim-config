set nu
set relativenumber
set ruler

syntax on
colorscheme onedark

set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

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
" end

lua << EOF
require('keybindings')

require('plugins')
require('plugin-config/nvim-treesitter')
require('plugin-config/nvim-tree')
require('lsp/setup')
require('lsp/nvim-cmp')
require'lspconfig'.clangd.setup{
  autostart = true,
  }
EOF
