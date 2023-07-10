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

let mapleader = " "


nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

lua << EOF
require('main')
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>gf <cmd>lua =vim.lsp.buf.format()<cr>
nnoremap <leader>h <cmd>lua =vim.lsp.buf.hover()<cr>

