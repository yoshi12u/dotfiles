return {
  -- {
  --   "kylechui/nvim-surround",
  --   version = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   event = "VeryLazy",
  -- },
  {
    "echasnovski/mini.surround",
    enable = false,
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        -- find = "<",
        -- find_left = "gsF",
        -- highlight = "gsh",
        replace = "cs",
        -- update_n_lines = "gsn",
      },
    },
  },
}
