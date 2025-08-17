return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "-",
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
      {
        "c-/",
        function()
          Snacks.terminal()
        end,
        { desc = "Terminal (cwd)" },
      },
      {
        "c-_",
        function()
          Snacks.terminal()
        end,
        { desc = "which_key_ignore" },
      },
    },
    opts = {
      terminal = {
        win = {
          keys = {
            nav_h = false,
            nav_j = false,
            nav_k = false,
            nav_l = false,
          },
        },
      },
    },
  },
}
