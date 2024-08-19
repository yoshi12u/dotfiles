return {{
    "christoomey/vim-tmux-navigator", -- Tmux and Vim navigation
    config = function()
        vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {{
        "<c-w>h",
        ":<C-U>TmuxNavigateLeft<CR>",
        silent = true
    }, {
        "<c-w>j",
        ":TmuxNavigateDown<CR>",
        silent = true
    }, {
        "<c-w><c-j>",
        ":TmuxNavigateDown<CR>",
        silent = true
    }, {
        "<c-w><CR>",
        ":TmuxNavigateDown<CR>",
        silent = true
    }, {
        "<c-w>k",
        ":TmuxNavigateUp<CR>",
        silent = true
    }, {
        "<c-w>l",
        ":TmuxNavigateRight<CR>",
        silent = true
    }}
}}
