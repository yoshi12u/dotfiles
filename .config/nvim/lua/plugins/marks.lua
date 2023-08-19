return {
  {
    "chentoast/marks.nvim",
    opts = {
      default_mappings = true,
      builtin_marks = {},
      cyclic = true,
      sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
      excluded_filetypes = { "toggleterm" },
    },
  },
}
