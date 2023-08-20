  return {
    'wen-templari/nvim-quietlight',
    config = function()
      require('nvim-quietlight').setup({
        syntax = {
          booleans = { italic = false },
        }
      })
      vim.cmd('colorscheme quietlight')
      vim.cmd("highlight clear ColorColumn")
      vim.cmd("hi IlluminatedWordText guibg=#cecece gui=none")
    end
  }
