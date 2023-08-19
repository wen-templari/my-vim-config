vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map('n', '<leader>ff', ':Telescope find_files<CR>', opt)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opt)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opt)

map('n', '<leader>tt', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>tb', ':GitBlameToggle<CR>', opt)

map('n', '<leader>gf', '<cmd>lua=vim.lsp.buf.format()<CR>', opt)
map('n', '<leader>gh', '<cmd>lua=vim.lsp.buf.hover()<CR>', opt)
