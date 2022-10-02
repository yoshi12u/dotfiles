local status_ok, surrond = pcall(require, "nvim-surround")
if not status_ok then
	return
end

surrond.setup({
	surrounds = {
		[","] = {
			add = { "{{", "}}" },
		},
	},
})
