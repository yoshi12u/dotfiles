return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "RRethy/nvim-treesitter-endwise",
      "nvim-treesitter/nvim-treesitter-context",
    },
    opts = {
      endwise = {
        enable = true,
      },
    },
  },
}
