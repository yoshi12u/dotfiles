return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    keys = {
      {
        "<leader>tD",
        function()
          require("neotest").run.run({ vim.loop.cwd(), strategy = "dap" })
        end,
        desc = "Debug All Test Files",
      },
    },
  },
}
