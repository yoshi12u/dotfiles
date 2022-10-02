local status_ok, toggleterm = pcall(require, "toggleterm.terminal")
if not status_ok then
	return
end

local Terminal = toggleterm.Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

-- lf file picker
local temp_path = "/tmp/lfpickerpath"
local Terminal = require("toggleterm.terminal").Terminal
local lfpicker = Terminal:new({
	cmd = "cd $NVIM_BUFPATH && lf -selection-path " .. temp_path,
	direction = "float",
	hidden = true,
	on_close = function(term)
		local file = io.open(temp_path, "r")
		if file ~= nil then
			vim.cmd("tabe " .. file:read("*a"))
			file:close()
			os.remove(temp_path)
		end
	end,
})

function _lfpicker_toggle()
	lfpicker:toggle()
end

vim.api.nvim_set_keymap(
	"n",
	"-",
	"<cmd>lua vim.env.NVIM_BUFPATH=vim.fn.expand('%:p:h'); _lfpicker_toggle()<CR>",
	{ noremap = true, silent = true }
)
