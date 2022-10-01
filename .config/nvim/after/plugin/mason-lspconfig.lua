local status_ok1, mason = pcall(require, "mason")
if not status_ok1 then
	return
end

local status_ok2, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok2 then
	return
end

local status_ok3, lspconfig = pcall(require, "lspconfig")
if not status_ok3 then
	return
end

mason.setup()
mason_lspconfig.setup()
mason_lspconfig.setup_handlers({
	function(server)
		lspconfig[server].setup({})
	end,
})
