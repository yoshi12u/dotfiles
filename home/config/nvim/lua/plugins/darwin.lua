return {
  {
    "obsidian-nvim/obsidian.nvim",
    enabled = function()
      return vim.fn.has("macunix") == 1
    end,
    opts = {
      workspaces = {
        {
          name = "Personal",
          path = "/Users/yoshimasauehara/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
        },
        {
          name = "work",
          path = "/Users/yoshimasauehara/Library/Mobile Documents/iCloud~md~obsidian/Documents/TOEFL",
        },
      },
    },
  },
}
