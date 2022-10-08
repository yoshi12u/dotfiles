local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local status_ok_, navic = pcall(require, "nvim-navic")
if not status_ok_ then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local icon = { "filetype", padding = { left = 1 }, icon_only = true }
local filename = {
	"filename",
	path = 0,
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = true,
	update_in_insert = false,
	always_visible = false,
}

local diff = {
	"diff",
	colored = true,
	symbols = { added = "+ ", modified = "~ ", removed = "- " },
	cond = hide_in_width,
}

local mode = {
	"mode",
	fmt = function(str)
		return str
	end,
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
}

local navi_info = {
	navic.get_location,
	cond = navic.is_available,
}

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			"startify",
			"dashboard",
			"NvimTree",
			"Trouble",
			"alpha",
			"Outline",
			"spectre_panel",
			"toggleterm",
			"neo-tree",
			"neo-tree-popup",
		},
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { icon, filename },
		lualine_c = { diagnostics, navi_info },
		lualine_x = { branch, diff, filetype },
		lualine_y = { location },
		lualine_z = { "progress" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
