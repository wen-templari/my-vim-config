return {
  { 'f-person/git-blame.nvim',
    config = function ()
      require('gitblame').setup({
        date_format = '%Y.%m.%d %H:%M',
      })
    end
  },
  { "airblade/vim-gitgutter" },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  }
}
