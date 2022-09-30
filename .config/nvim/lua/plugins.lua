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

	-- 	-- Pretty UI
	use({
		"Shatur/neovim-ayu",
		config = function()
			require("ayu").setup({
				mirage = true,
			})
		end,
	})
	use("ryanoasis/vim-devicons")
	use("kyazdani42/nvim-web-devicons")
	use("itchyny/lightline.vim")
	use("mengelbrecht/lightline-bufferline")
	use("junegunn/vim-emoji")
	use({
		"norcalli/nvim-colorizer.lua",
		ft = { "css", "javascript", "vim", "html" },
		config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
	})
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup()
		end,
	})
	use("stevearc/dressing.nvim")
	use("rcarriga/nvim-notify")
	use("vigoux/notifier.nvim")
	use({
		"gelguy/wilder.nvim",
		config = [[require('config.wilder')]],
	})

	-- Utils
	use({ "neoclide/coc.nvim", branch = "release" })
	use("/opt/homebrew/opt/fzf")
	use("junegunn/fzf.vim")
  use 'ibhagwan/fzf-lua'
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
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
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
					keys = { f = "f", F = "F", t = "t", T = "T" },
					multiline = true,
				})
			end,
		},
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
			config = function()
				require("pqf").setup()
			end,
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
	use({ "kevinhwang91/nvim-hlslens", config = [[require('config.hlslens')]] })
	use({
		"folke/which-key.nvim",
		config = [[require('config.whichkey')]],
	})

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
	use({
		"gbprod/substitute.nvim",
		config = function()
			require("substitute").setup({})
		end,
	})

	-- Git
	use({
		{
			"lewis6991/gitsigns.nvim",
			config = [[require('config.gitsigns')]],
		},
		{
			"akinsho/git-conflict.nvim",
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
			"p00f/nvim-ts-rainbow",
			"RRethy/nvim-treesitter-endwise",
		},
		run = ":TSUpdate",
	})

	-- snippets
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")
	use("honza/vim-snippets")

	-- html
	use({ "mattn/emmet-vim", ft = { "js", "ts", "jsx", "tsx", "vue" } })
	use({ "AndrewRadev/tagalong.vim", ft = { "html" } })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
