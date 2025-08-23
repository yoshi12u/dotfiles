local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.set_environment_variables = {
	PATH = wezterm.home_dir .. "/.nix-profile/bin:" .. os.getenv("PATH"),
}

config.color_scheme = "Tokyo Night"

config.font = wezterm.font_with_fallback({
	{ family = "Hack Nerd Font", weight = "Regular" },
})
config.font_size = 14.0

config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
config.window_background_opacity = 0.95
config.macos_window_background_blur = 30

config.hide_tab_bar_if_only_one_tab = true
config.default_prog = { "zellij" }

config.hyperlink_rules = wezterm.default_hyperlink_rules()

return config
