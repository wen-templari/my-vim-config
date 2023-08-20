return {
  { 'f-person/git-blame.nvim' },
  { "airblade/vim-gitgutter" },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  }
}
