local wezterm = require("wezterm")
local act = wezterm.action

return {
	disable_default_key_bindings = true,
	keys = {
		{
			key = "c",
			mods = "CTRL",
			action = act.CopyTo("Clipboard"),
		},
		{
			key = "v",
			mods = "CTRL",
			action = act.PasteFrom("Clipboard"),
		},
		{
			key = "v",
			mods = "CTRL|SHIFT",
			action = act.PasteFrom("Clipboard"),
		},
		{
			key = "t",
			mods = "CTRL",
			action = act.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = act.ActivateTabRelative(1),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = act.ActivateTabRelative(-1),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = act.ActivateTabRelative(-1),
		},
		{
			key = "w",
			mods = "CTRL",
			action = wezterm.action.CloseCurrentTab({ confirm = true }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ShowDebugOverlay,
		},
	},
}
