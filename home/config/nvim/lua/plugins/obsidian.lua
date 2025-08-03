return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    opts = {
      ui = { enable = false },
      completion = {
        blink = true,
        min_chars = 0,
      },
      picker = {
        name = "snacks.pick",
      },
    },
  },
}
