return {
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
}
