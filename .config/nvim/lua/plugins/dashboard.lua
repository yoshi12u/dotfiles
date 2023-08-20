return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = table.concat({
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }, "\n")

    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find files", ":Telescope find_files <CR>"),
      dashboard.button(
        "j",
        " " .. " Recent local files",
        [[:lua require("telescope.builtin").oldfiles( { cwd = vim.fn.expand('%:p:h') }) <CR>]]
      ),
      dashboard.button("r", "󰇧 " .. " Recent global files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
      dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    return dashboard
  end,
}
