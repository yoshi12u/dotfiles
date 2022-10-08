local status_ok, toggleterm = pcall(require, "toggleterm.terminal")
if not status_ok then
	return
end
local Terminal = toggleterm.Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
function _lazygit_toggle()
	lazygit:toggle()
end
