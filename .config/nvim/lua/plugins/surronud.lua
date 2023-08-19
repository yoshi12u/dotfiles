return {
  -- {
  --   "kylechui/nvim-surround",
  --   version = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   event = "VeryLazy",
  -- },
  {
    "echasnovski/mini.surround",
    enable = false,
    vscode = true,
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "cs",
        update_n_lines = "cns",
      },
    },
  },
}
