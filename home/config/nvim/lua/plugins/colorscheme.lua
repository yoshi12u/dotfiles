return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
			dim_inactive = {
				enabled = true,
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
	},
}
