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
	use("ayu-theme/ayu-vim")
	use("kyazdani42/nvim-web-devicons")
	use({
		"norcalli/nvim-colorizer.lua",
		ft = { "css", "javascript", "vim", "html" },
		config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
	})
	use("lukas-reineke/indent-blankline.nvim")
	use("stevearc/dressing.nvim")
	use("rcarriga/nvim-notify")
	use("vigoux/notifier.nvim")

	-- Utils
	use({ "tversteeg/registers.nvim", keys = { { "n", '"' }, { "i", "<c-r>" } } })
	use("junegunn/vim-easy-align")
	use("romainl/vim-cool")
	use({ "chaoren/vim-wordmotion", config = [[vim.g.wordmotion_prefix = '<space>']] })
	use({
		{ "ggandor/leap.nvim", requires = "tpope/vim-repeat" },
		{ "ggandor/flit.nvim", config = [[require'flit'.setup { labeled_modes = 'nv' }]] },
	})
	use({
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup({})
		end,
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		{ "tpope/vim-surround", event = "User ActuallyEditing" },
		{ "andymass/vim-matchup", setup = [[require('config.matchup')]], event = "User ActuallyEditing" },
	})
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
			config = function()
				require("pqf").setup()
			end,
		},
	})
	-- Filer
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		config = [[vim.g.neo_tree_remove_legacy_commands = true]],
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})
	-- Text objects
	use({ "wellle/targets.vim", { "kana/vim-textobj-entire", requires = "kana/vim-textobj-user" } })
	-- Operator
	use({
		"kana/vim-operator-replace",
		requires = "kana/vim-operator-user",
	})
	-- Git
	use({
		{
			"lewis6991/gitsigns.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = [[require('config.gitsigns')]],
			event = "User ActuallyEditing",
		},
		{
			"akinsho/git-conflict.nvim",
			tag = "*",
			config = function()
				require("git-conflict").setup()
			end,
		},
	})

	-- Tree-sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"RRethy/nvim-treesitter-textsubjects",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"RRethy/nvim-treesitter-endwise",
		},
		run = ":TSUpdate",
	})

	-- LSP
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({
		"ray-x/lsp_signature.nvim",
		"kosayoda/nvim-lightbulb",
		{
			"folke/trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = [[require('config.trouble')]],
		},
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		config = [[require('config.null_ls')]],
	})

	-- Completion
	use({
		{
			"L3MON4D3/LuaSnip",
			event = "InsertEnter",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
			requires = { "rafamadriz/friendly-snippets" },
		},
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-buffer", after = "nvim-cmp" },
			"hrsh7th/cmp-nvim-lsp",
			"onsails/lspkind.nvim",
			{ "hrsh7th/cmp-nvim-lsp-signature-help", after = "nvim-cmp" },
			{ "hrsh7th/cmp-path", after = "nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
			{ "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
			"lukas-reineke/cmp-under-comparator",
			{ "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
			{ "luasnip" },
		},
		config = [[require('config.cmp')]],
		event = "InsertEnter",
		after = "luasnip",
	})
	-- Search
	use({
		{
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-lua/popup.nvim",
				"nvim-lua/plenary.nvim",
				"telescope-fzf-native.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
			},
			wants = {
				"popup.nvim",
				"plenary.nvim",
				"telescope-fzf-native.nvim",
			},
			setup = [[require('config.telescope_setup')]],
			config = [[require('config.telescope')]],
			cmd = "Telescope",
			module = "telescope",
		},
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
		},
		"crispgm/telescope-heading.nvim",
	})

	-- Debugger
	use({
		{
			"mfussenegger/nvim-dap",
			setup = [[require('config.dap_setup')]],
			config = [[require('config.dap')]],
			requires = "jbyuki/one-small-step-for-vimkind",
			wants = "one-small-step-for-vimkind",
			cmd = { "BreakpointToggle", "Debug", "DapREPL" },
		},
		{
			"rcarriga/nvim-dap-ui",
			requires = "nvim-dap",
			wants = "nvim-dap",
			after = "nvim-dap",
			config = function()
				require("dapui").setup()
			end,
		},
	})

	-- REPLs
	use({
		"hkupty/iron.nvim",
		setup = [[vim.g.iron_map_defaults = 0]],
		config = [[require('config.iron')]],
		cmd = { "IronRepl", "IronSend", "IronReplHere" },
	})

	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = { "sumneko_lua", "pyright" },
	})
end)
