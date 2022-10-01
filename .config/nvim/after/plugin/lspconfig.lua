local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local status_ok_, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok_ then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}
lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
	capabilities = cmp_nvim_lsp.update_capabilities(capabilities),
})
