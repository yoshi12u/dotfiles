return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = "./.venv/bin/python",
            },
          },
        },
      },
    },
  },
}
