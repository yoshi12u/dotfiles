return {
	{
		"saghen/blink.cmp",
		dependencies = { "Exafunction/windsurf.nvim", "saghen/blink.compat", "giuxtaposition/blink-cmp-copilot" },
		opts = {
			completion = {
				trigger = {
					show_on_insert = true,
				},
			},
			sources = {
				default = { "copilot" },
				compat = { "codeium" },
				per_filetype = {
					codecompanion = { "codecompanion" },
				},
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-cmp-copilot",
						kind = "Copilot",
						score_offset = 100,
						async = true,
						min_keyword_length = 0,
						transform_items = function(_, items)
							for _, item in ipairs(items) do
								item.kind_icon = ""
							end
							return items
						end,
					},
					codeium = {
						kind = "Codeium",
						score_offset = 100,
						async = true,
						transform_items = function(_, items)
							for _, item in ipairs(items) do
								item.kind_icon = ""
							end
							return items
						end,
					},
				},
			},
		},
	},
}
