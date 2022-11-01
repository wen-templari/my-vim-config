local use = require('packer').use
return require('packer').startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use { 'tpope/vim-surround' }
  use{ 'numToStr/Comment.nvim',
    config=function()
      require('Comment').setup()
    end
  }

  use { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'kyazdani42/nvim-web-devicons'}

  use { 'nvim-tree/nvim-tree.lua', requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  } }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'navarasu/onedark.nvim' }

  use { 'williamboman/mason.nvim' };
  use { 'williamboman/mason-lspconfig.nvim' };
  use { 'neovim/nvim-lspconfig' };

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }

end)
