return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		opts = {
			checkbox = {
				enabled = true,
			},
		},
	},
	{
		"nvim-mini/mini.surround",
		opts = {
			custom_surroundings = {
				-- **bold**
				b = { output = { left = "**", right = "**" } },
				-- ==highlight===
				h = { output = { left = "==", right = "==" } },
				-- [text](url)
				k = {
					output = function()
						local url = vim.fn.input("URL: ")
						if url == "" then
							return nil
						end
						return { left = "[", right = "](" .. url .. ")" }
					end,
				},
			},
		},
	},
}
