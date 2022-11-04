set nu
set ruler
syntax on

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

set termguicolors
set signcolumn=yes

let mapleader = "\<Space>"

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


require('plugins')
require('plugin-config/nvim-tree')

require('plugin-config/lsp')
require('plugin-config/nvim-cmp')

require('bufferline').setup()

require('onedark').setup{
  stye = 'darker',
  transparent = true 
}
require('onedark').load()

EOF

nnoremap <leader>pp <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>ff <cmd>lua =vim.lsp.buf.formatting_sync()<cr>

nnoremap <leader>t <cmd>NvimTreeToggle<cr>

