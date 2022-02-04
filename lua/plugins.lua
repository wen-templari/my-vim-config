local use = require('packer').use
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'kyazdani42/nvim-tree.lua', run = ':LuaTree' }
  use { 'joshdick/onedark.vim', run = ':OneDark' }
  use { 'github/copilot.vim' }
  use { 'tpope/vim-surround' }
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use {
   -- nvim-cmp
   'hrsh7th/cmp-nvim-lsp', -- { name = nvim_lsp }
   'hrsh7th/cmp-buffer',   -- { name = 'buffer' },
   'hrsh7th/cmp-path',     -- { name = 'path' }
   'hrsh7th/cmp-cmdline',  -- { name = 'cmdline' }
   'hrsh7th/nvim-cmp',
  -- LuaSnip
   'saadparwaiz1/cmp_luasnip',
   'L3MON4D3/LuaSnip',
  -- lspkind
   'onsails/lspkind-nvim'
  }
end)
