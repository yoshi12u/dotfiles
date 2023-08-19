return {
  {
    "zdharma-continuum/zinit-vim-syntax",
  },
  {
    "preservim/vim-markdown",
    dependencies = { "godlygeek/tabular" },
    ft = { "markdown" },
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
