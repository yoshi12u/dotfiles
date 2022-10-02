require("nvim-treesitter.configs").setup({
	ensure_installed = { "json", "yaml", "css", "html", "lua", "python", "toml" },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
	incremental_selection = { enable = true },
	textsubjects = {
		enable = true,
		lookahead = true,
		-- prev_selection = ',',
		keymaps = {
			["."] = "textsubjects-smart",
			[";"] = "textsubjects-container-outer",
			["i;"] = "textsubjects-container-inner",
		},
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
				["ip"] = "@parameter.inner",
				["ap"] = "@parameter.outer",
				["ib"] = "@block.inner",
				["ab"] = "@block.outer",
			},
		},
	},
	endwise = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
	},
	context_commentstring = {
		enable = true,
	},
	matchup = {
		enable = true,
	},
})
