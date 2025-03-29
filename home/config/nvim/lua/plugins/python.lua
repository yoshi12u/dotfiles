return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  opts = {
    settings = {
      options = {
        dap_enabled = true,
        notify_user_on_activate = false,
      },
    },
  },
  event = "VeryLazy",
}
