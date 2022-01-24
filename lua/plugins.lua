return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'kyazdani42/nvim-tree.lua', run = ':LuaTree' }
  use { 'joshdick/onedark.vim', run = ':OneDark' }
end)
