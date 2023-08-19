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
  { 'jiangmiao/auto-pairs' },
  { 'tpope/vim-surround' },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true
  },
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
    'wen-templari/nvim-quietlight',
    config = function()
      require('nvim-quietlight').setup({
        syntax = {
          booleans = { italic = false },
        }
      })
    end
  },
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end
  },
  {
    "airblade/vim-gitgutter"
  }
})

require('plugin-config/lsp')
require('plugin-config/nvim-cmp')
require('plugin-config/nvim-treesitter')
require('shortcuts')

vim.cmd('colorscheme quietlight')
vim.cmd("highlight clear ColorColumn")
