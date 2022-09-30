require('nvim-treesitter.configs').setup {
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = false, },
  textsubjects = {
    enable = true,
    lookahead = true,
    prev_selection = ',',
    keymaps = {
      ['.'] = 'textsubjects-smart',
      [';'] = 'textsubjects-container-outer',
      ['i;'] = 'textsubjects-container-inner',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
        ['ip'] = '@parameter.inner',
        ['ap'] = '@parameter.outer',
      },
    },
  },
  endwise = { enable = true },
}
