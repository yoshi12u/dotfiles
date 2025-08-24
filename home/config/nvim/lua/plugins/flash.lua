return {
  {
    "folke/flash.nvim",
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
      {
        "r",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Treesitter Search",
      },
      { "R", false },
      {
        "<c-/>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
      {
        "<c-_>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "which_key_ignore",
      },
    },
    opts = {
      modes = {
        search = {
          enabled = true,
        },
        char = {
          jump_labels = true,
        },
      },
    },
  },
}
