local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Utility libraries
    use "nvim-lua/plenary.nvim" -- General utility functions

    -- Editing
    use("RRethy/vim-illuminate") -- Highlight matching words under cursor
    use("junegunn/vim-easy-align") -- Easy alignment of text
    use({
        "windwp/nvim-autopairs", -- Automatic pairing of brackets, quotes, etc.
        config = [[ require("nvim-autopairs").setup({}) ]]
    })

    -- Motion and Navigation
    use("haya14busa/vim-edgemotion") -- Enhanced edge motion
    use({
        "chaoren/vim-wordmotion", -- Enhanced word movement
        config = [[vim.g.wordmotion_prefix = '<space>']]
    })
    use({
        "phaazon/hop.nvim", -- Fast navigation within buffer
        branch = "v2",
        config = function()
            require("hop").setup({})
        end
    })
    use({
        "andymass/vim-matchup",

    }) -- Better matchit support for % key
    use({
        "chentoast/marks.nvim",
    }) -- Better marks handling
    use({
        "ethanholz/nvim-lastplace", -- Reopen files at last position
        config = [[require("nvim-lastplace").setup({})]]
    })

    -- Text objects
    use("wellle/targets.vim") -- Additional text objects
    use({
        "kana/vim-textobj-entire",
        requires = "kana/vim-textobj-user"
    }) -- Text object for entire buffer

    -- Commands
    use("tpope/vim-eunuch") -- Enhanced file manipulation commands
    use("tpope/vim-abolish") -- Versatile substitution commands
    use("AndrewRadev/switch.vim") -- Switch between similar words

    -- Mapping
    use("tpope/vim-repeat") -- Enhanced repeat for plugin maps

    -- Operator
    use({
        "gbprod/substitute.nvim",
        config = [[require("substitute").setup({})]]
    }) -- Substitution operator
    use({
        "kylechui/nvim-surround",
        tag = "*",
    }) -- Surround text with brackets, quotes, etc.
    use({
        "numToStr/Comment.nvim",
        config = [[require("Comment").setup({})]]
    }) -- Easy commenting/uncommenting

    -- Only for native Neovim
    if not vim.g.vscode then
        -- UI
        use({
            "folke/tokyonight.nvim", -- Tokyo Night color scheme
            cond = not vim.g.vscode,
            config = function()
                vim.cmd([[colorscheme tokyonight-moon]])
            end
        })
        use({
            "kyazdani42/nvim-web-devicons", -- Web devicons for UI
            cond = not vim.g.vscode
        })
        use({
            "nvim-lualine/lualine.nvim", -- Statusline
            cond = not vim.g.vscode,
        })
        use({
            "noib3/nvim-cokeline", -- Buffer line
            cond = not vim.g.vscode,
            config = function()
                require("cokeline").setup()
            end
        })
        use({
            "rcarriga/nvim-notify", -- Notification system
            cond = not vim.g.vscode,
            config = [[vim.notify = require("notify")]]
        })
        use({
            "j-hui/fidget.nvim", -- Fidget spinner in the statusline
            cond = not vim.g.vscode,
            config = function()
                require("fidget").setup({})
            end
        })
        use({
            "SmiteshP/nvim-navic", -- Navigate by breadcrumbs
            cond = not vim.g.vscode,
            requires = "neovim/nvim-lspconfig"
        })
        use({
            "kevinhwang91/nvim-ufo", -- Modern fold
            cond = not vim.g.vscode,
            requires = "kevinhwang91/promise-async"
        })
        use({
            "nvim-neo-tree/neo-tree.nvim", -- File explorer
            cond = not vim.g.vscode,
            branch = "v2.x",
            config = [[vim.g.neo_tree_remove_legacy_commands = true]],
            requires = {"nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons", "MunifTanjim/nui.nvim"}
        })
        use({
            "lmburns/lf.nvim", -- lf file manager integration
            cond = not vim.g.vscode,
            requires = {"nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim"}
        })

        -- Tree-sitter
        use({
            "nvim-treesitter/nvim-treesitter", -- Syntax highlighting and parsing
            cond = not vim.g.vscode,
            requires = {"nvim-treesitter/nvim-treesitter-textobjects", "RRethy/nvim-treesitter-endwise",
                        "joosepalviste/nvim-ts-context-commentstring", "nvim-treesitter/nvim-treesitter-context"},
            run = ":TSUpdate"
        })

        -- LSP
        use({
            "williamboman/mason.nvim",
            cond = not vim.g.vscode,
        })
        use({
            "williamboman/mason-lspconfig.nvim",
            cond = not vim.g.vscode,

        })
        use({
            "neovim/nvim-lspconfig",
            cond = not vim.g.vscode,
        })
        use({
            "ray-x/lsp_signature.nvim",
            cond = not vim.g.vscode,
        })
        use({
            "folke/trouble.nvim", -- Diagnostics viewer
            cond = not vim.g.vscode,
            requires = "kyazdani42/nvim-web-devicons"
        })
        use({
            "jose-elias-alvarez/null-ls.nvim", -- Language server for linters and formatters
            cond = not vim.g.vscode,
        })
        use({
            "simrat39/symbols-outline.nvim", -- Symbols outline
            cond = not vim.g.vscode,
        })

        -- Snippets
        use({{
            "L3MON4D3/LuaSnip", -- Snippet engine
            cond = not vim.g.vscode,
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end
        }, "rafamadriz/friendly-snippets"}) -- Collection of snippets

        -- Completion
        use({
            "hrsh7th/nvim-cmp", -- Main completion engine
            cond = not vim.g.vscode,
            requires = {"hrsh7th/cmp-nvim-lsp", -- LSP completion source
            "hrsh7th/cmp-buffer", -- Buffer completion source
            "hrsh7th/cmp-nvim-lua", -- Nvim-lua completion source
            "hrsh7th/cmp-nvim-lsp-signature-help", -- LSP signature help
            "hrsh7th/cmp-path", -- File path completion source
            "hrsh7th/cmp-nvim-lsp-document-symbol", -- LSP document symbol completion source
            "ray-x/cmp-treesitter", -- Treesitter completion source
            "lukas-reineke/cmp-under-comparator", -- Under-comparator for sorting
            "onsails/lspkind.nvim", -- Completion item icons
            "saadparwaiz1/cmp_luasnip", -- LuaSnip completion source
            "hrsh7th/cmp-cmdline", -- Command-line completion source
            "dmitmel/cmp-cmdline-history" -- Command-line history completion source
            }
        })

        -- Selector
        use({
            "ibhagwan/fzf-lua", -- fzf integration for lua
            cond = not vim.g.vscode,
            requires = {"kyazdani42/nvim-web-devicons"}
        })
        use({
            "junegunn/fzf", -- fzf
            cond = not vim.g.vscode,
            run = "./install --bin"
        })

        -- Git
        use({
            "lewis6991/gitsigns.nvim", -- Git signs in the sign column
            cond = not vim.g.vscode,
        })
        use({
            "sindrets/diffview.nvim", -- Git diff view
            cond = not vim.g.vscode
        })

        -- Terminal
        use({
            "voldikss/vim-floaterm",
            cond = not vim.g.vscode
        }) -- Terminal in a floating window
        use({
            "akinsho/toggleterm.nvim", -- Toggleable terminal
            cond = not vim.g.vscode,
            tag = "*",
            config = function()
                require("toggleterm").setup()
            end
        })

        -- QuickFix
        use({"kevinhwang91/nvim-bqf", { -- Better QuickFix window
            "https://gitlab.com/yorickpeterse/nvim-pqf",
            cond = not vim.g.vscode,
            config = [[require("pqf").setup({})]]
        }})
        use({
            "thinca/vim-qfreplace",
            cond = not vim.g.vscode
        }) -- QuickFix replace

        -- Mapping
        use({
            "tpope/vim-unimpaired",
            cond = not vim.g.vscode
        }) -- Pairs of mappings
        use({
            "christoomey/vim-tmux-navigator", -- Tmux and Vim navigation
            cond = not vim.g.vscode,
            config = [[vim.g.tmux_navigator_no_mappings = 1]]
        })
        use({
            "folke/which-key.nvim", -- Keybinding display
            cond = not vim.g.vscode,
        }) 

        -- Utils
        use({
            "norcalli/nvim-colorizer.lua", -- Syntax-aware color highlighting
            cond = not vim.g.vscode,
            ft = {"css", "javascript", "vim", "html"},
            config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]]
        })
        use({
            "lukas-reineke/indent-blankline.nvim", -- Display indent lines
            cond = not vim.g.vscode,
            config = [[require("indent_blankline").setup()]]
        })
        use({
            "kevinhwang91/nvim-hlslens", -- Better search highlighting
            cond = not vim.g.vscode,
        })
        use({
            "junegunn/vim-emoji",
            cond = not vim.g.vscode
        }) -- Emoji support
        use({
            "ConradIrwin/vim-bracketed-paste",
            cond = not vim.g.vscode
        }) -- Bracketed paste support
        use({
            "goolord/alpha-nvim", -- Start screen
            cond = not vim.g.vscode,
            requires = {"kyazdani42/nvim-web-devicons"},
            config = function()
                require("alpha").setup(require("alpha.themes.startify").config)
            end
        })
        use({
            "junegunn/goyo.vim", -- Distraction-free writing mode
            cond = not vim.g.vscode
        })
        use({
            "AckslD/nvim-neoclip.lua", -- Clipboard history
            cond = not vim.g.vscode,
        })
        use({
            "ahmedkhalf/project.nvim", -- Project management
            cond = not vim.g.vscode,
            config = function()
                require("project_nvim").setup({})
            end
        })
        use({
            "mbbill/undotree", -- Undo history tree
            cond = not vim.g.vscode,
            cmd = "UndotreeToggle",
            config = [[vim.g.undotree_SetFocusWhenToggle = 1]]
        })

        -- HTML
        use({
            "mattn/emmet-vim", -- Emmet for HTML and CSS
            cond = not vim.g.vscode,
            ft = {"js", "ts", "jsx", "tsx", "vue"}
        })
        use({
            "AndrewRadev/tagalong.vim", -- Automatically update HTML tag pairs
            cond = not vim.g.vscode,
            ft = {"html"}
        })

        -- Zsh
        use({
            "zdharma-continuum/zinit-vim-syntax",
            cond = not vim.g.vscode
        }) -- Zsh syntax highlighting
    end

    if packer_bootstrap then
        require("packer").sync()
    end
end)
