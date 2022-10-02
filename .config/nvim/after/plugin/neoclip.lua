local status_ok, neoclip = pcall(require, "neoclip")
if not status_ok then
	return
end

neoclip.setup({
	keys = {
		fzf = {
			select = "default",
			paste = "Enter",
			custom = {},
		},
	},
})
