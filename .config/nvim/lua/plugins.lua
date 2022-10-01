local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")

	use("vim-jp/vimdoc-ja")
	use("thinca/vim-ref")
	use("vim-scripts/AnsiEsc.vim")

	-- Pretty UI
	use({
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd([[colorscheme tokyonight-moon]])
		end,
	})
	use("ryanoasis/vim-devicons")
	use("kyazdani42/nvim-web-devicons")
	use("itchyny/lightline.vim")
	use("mengelbrecht/lightline-bufferline")
	use("junegunn/vim-emoji")
	use("RRethy/vim-illuminate")
	use({
		"norcalli/nvim-colorizer.lua",
		ft = { "css", "javascript", "vim", "html" },
		config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
	})
	use({ "lukas-reineke/indent-blankline.nvim", config = [[require("indent_blankline").setup()]] })
	use("stevearc/dressing.nvim")
	use({ "rcarriga/nvim-notify", config = [[vim.notify = require("notify")]] })
	use("vigoux/notifier.nvim")

	-- utils
	use({ "neoclide/coc.nvim", branch = "release" })
	use("/opt/homebrew/opt/fzf")
	use("junegunn/fzf.vim")
	use("antoinemadec/coc-fzf")
	use("airblade/vim-rooter")
	use("ConradIrwin/vim-bracketed-paste")
	use("mhinz/vim-startify")
	use("liuchengxu/vista.vim")
	use("bronson/vim-trailing-whitespace")
	use("voldikss/vim-floaterm")
	use("junegunn/goyo.vim")
	use("haya14busa/vim-edgemotion")
	use("junegunn/vim-easy-align")
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use({
		"windwp/nvim-autopairs",
		config = [[ require("nvim-autopairs").setup({}) ]],
	})
	use({ "chaoren/vim-wordmotion", config = [[vim.g.wordmotion_prefix = '<space>']] })
	use({
		{ "ggandor/leap.nvim", requires = "tpope/vim-repeat" },
		{
			"ggandor/flit.nvim",
			requires = "ggandor/leap.nvim",
			config = function()
				require("flit").setup({
					labeled_modes = "nv",
					multiline = true,
				})
			end,
		},
	})
	use({
		"ethanholz/nvim-lastplace",
		config = [[require("nvim-lastplace").setup({})]],
	})
	use({
		"numToStr/Comment.nvim",
		config = [[require("Comment").setup({})]],
	})
	use({
		"tpope/vim-surround",
		"andymass/vim-matchup",
	})
	use("kshenoy/vim-signature")
	use({
		"mbbill/undotree",
		cmd = "UndotreeToggle",
		config = [[vim.g.undotree_SetFocusWhenToggle = 1]],
	})

	-- QuickFix
	use({
		"kevinhwang91/nvim-bqf",
		{
			"https://gitlab.com/yorickpeterse/nvim-pqf",
			config = [[require("pqf").setup({})]],
		},
	})

	-- Commands
	use("tpope/vim-eunuch")
	use("tpope/vim-abolish")
	use("thinca/vim-qfreplace")
	use("tpope/vim-unimpaired")
	use("AndrewRadev/splitjoin.vim")
	use("AndrewRadev/switch.vim")

	-- mapping
	use("tpope/vim-repeat")
	use("houtsnip/vim-emacscommandline")
	use("christoomey/vim-tmux-navigator")
	use("kevinhwang91/nvim-hlslens")
	use("folke/which-key.nvim")

	-- Filer
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		config = [[vim.g.neo_tree_remove_legacy_commands = true]],
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})

	-- Text objects
	use("wellle/targets.vim")
	use({
		"kana/vim-textobj-entire",
		requires = "kana/vim-textobj-user",
	})
	-- Operator
	use({ "gbprod/substitute.nvim", config = [[require("substitute").setup({})]] })

	-- Git
	use("lewis6991/gitsigns.nvim")
	use("sindrets/diffview.nvim")

	-- Tree-sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"RRethy/nvim-treesitter-textsubjects",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"RRethy/nvim-treesitter-endwise",
			"p00f/nvim-ts-rainbow",
			"joosepalviste/nvim-ts-context-commentstring",
		},
		run = ":TSUpdate",
	})

	-- -- LSP
	use({
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason-lspconfig.nvim",
	})

	-- Snippets
	use({
		{
			"L3MON4D3/LuaSnip",
			-- event = "InsertEnter",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		"rafamadriz/friendly-snippets",
	})

	-- Completion
	use({
		"lukas-reineke/cmp-under-comparator",
		"onsails/lspkind.nvim",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp-document-symbol",
		{
			"hrsh7th/cmp-cmdline",
			-- event = "CmdlineEnter"
		},
	})
	use({
		"hrsh7th/nvim-cmp",
		-- after = "LuaSnip"
	})

	-- Diagnostics
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Format
	use({ "jose-elias-alvarez/null-ls.nvim" })

	-- html
	use({ "mattn/emmet-vim", ft = { "js", "ts", "jsx", "tsx", "vue" } })
	use({ "AndrewRadev/tagalong.vim", ft = { "html" } })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
