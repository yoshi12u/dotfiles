return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
    opts = {
      strategies = {
        chat = {
          adapter = "copilot",
          keymaps = {
            send = {
              modes = { n = "<C-m>", i = "<C-m>" },
              opts = {},
            },
            close = {
              modes = { n = "<C-c>", i = "<C-c>" },
              opts = {},
            },
          },
        },
        inline = {
          adapter = "copilot",
          keymaps = {
            accept_change = {
              modes = { n = "<leader>am" },
              description = "Accept the suggested change",
            },
            reject_change = {
              modes = { n = "<leader>ad" },
              opts = { nowait = true },
              description = "Reject the suggested change",
            },
          },
        },
        cmd = {
          adapter = "copilot",
        },
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat Toggle<CR>", desc = "Toggle Chat with Code Companion" },
      { "<leader>aA", "<cmd>CodeCompanionChat<CR>", desc = "New Chat with Code Companion" },
      { "<leader>ai", "<cmd>CodeCompanion<CR>", desc = "Inline Code Companion" },
      { "<leader>al", "<cmd>CodeCompanionActions<CR>", desc = "List Code Companion Actions" },
    },
  },
}
