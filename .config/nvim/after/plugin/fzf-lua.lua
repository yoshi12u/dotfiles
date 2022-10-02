local status_ok, fzf_lua = pcall(require, "fzf-lua")
if not status_ok then
	return
end

fzf_lua.setup({
	grep = {
		rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=512 --hidden",
	},
})
