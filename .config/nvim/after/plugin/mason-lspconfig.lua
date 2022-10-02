local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

local status_ok_, lspconfig = pcall(require, "lspconfig")
if not status_ok_ then
	return
end

mason_lspconfig.setup()
mason_lspconfig.setup_handlers({
	function(server)
		lspconfig[server].setup({})
	end,
})
