return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lua",
      {
        "uga-rosa/cmp-dictionary",
        config = function()
          local dict = require("cmp_dictionary")
          dict.switcher({
            spelllang = {
              en = "~/.config/dict/en.dict",
            },
          })
        end,
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "nvim_lua" } }))
      opts.sources = cmp.config.sources(vim.list_extend(
        opts.sources,
        { {
          name = "dictionary",
          group_index = 3,
          keyword_length = 2,
        } }
      ))
    end,
  },
}
