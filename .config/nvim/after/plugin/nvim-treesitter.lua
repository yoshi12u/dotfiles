require("nvim-treesitter.configs").setup({

        context_commentstring = {
                enable = true,
        },
        textobjects = {
                select = {
                        enable = true,
                        lookahead = true,

                        keymaps = {
                                ["af"] = "@function.outer",
                                ["if"] = "@function.inner",
                                ["ac"] = "@class.outer",
                                ["ic"] = "@class.inner",
                                ["aC"] = "@comment.outer",
                                ["iC"] = "@comment.inner",
                        },
                        selection_modes = {
                                ["@function.outer"] = "V", -- linewise
                                ["@class.outer"] = "<c-v>", -- blockwise
                        },
                },
        },
        endwise = {
                endwise = true,
        },
})
