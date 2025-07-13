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
    },
  },
}
