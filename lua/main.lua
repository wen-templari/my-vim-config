local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'f-person/git-blame.nvim' },
  { 'jiangmiao/auto-pairs'},
  { 'tpope/vim-surround' },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  { 'nvim-tree/nvim-web-devicons',      lazy = true },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({})
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require('nvim-tree').setup()
    end
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require('bufferline').setup()
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = {
      { 'nvim-lua/plenary.nvim' }
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'onsails/lspkind.nvim' },
  {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },
  { 'github/copilot.vim' },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priroity = 1000
  },
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup({
        stye = 'darker',
        transparent = true
      })
      require('onedark').load()
    end
  }
})

require('plugin-config/lsp')
require('plugin-config/nvim-cmp')