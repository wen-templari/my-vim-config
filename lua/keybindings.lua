local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

