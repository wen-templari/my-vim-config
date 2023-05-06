require('plugins')
require('plugin-config/nvim-tree')

require('plugin-config/lsp')
require('plugin-config/nvim-cmp')

require('bufferline').setup()

require('onedark').setup {
  stye = 'darker',
  transparent = true
}
require('onedark').load()
