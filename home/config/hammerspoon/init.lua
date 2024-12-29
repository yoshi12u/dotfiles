hs.hotkey.bind({ "ctrl" }, ";", function()
	local appName = "Wezterm"
	local app = hs.application.find(appName)

	if app:isFrontmost() then
		app:hide()
	else
		hs.application.launchOrFocus(appName)
	end
end)
