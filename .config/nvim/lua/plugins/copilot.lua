return {
  "zbirenbaum/copilot.lua",
  opts = {
    filetypes = {
      python = true,
      lua = true,
    },
  },
  {
    "nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "copilot",
        priority = 100,
        group_index = 1,
        keyword_length = 0,
      })
      opts.sorting = opts.sorting or require("cmp.config.default")().sorting
      table.insert(opts.sorting.comparators, 1, require("copilot_cmp.comparators").prioritize)
    end,
  },
}
