return {
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
  {
    "gbprod/substitute.nvim",
    vscode = true,
    keys = {
      {
        "R",
        function()
          require("substitute").operator()
        end,
        remap = false,
        desc = "Substitute operator",
      },
      {
        "R",
        mode = "x",
        function()
          require("substitute").visual()
        end,
        remap = false,
        desc = "Substitute visual",
      },
    },
    opts = {
      on_substitute = require("yanky.integration").substitute(),
    },
  },
}
