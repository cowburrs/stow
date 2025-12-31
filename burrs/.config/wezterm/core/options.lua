local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Macchiato",
	font_size = 12,
	window_padding = {
		left = "0cell",
		right = "0cell",
		top = "0.5cell",
		bottom = "0.0cell",
	},
	font = wezterm.font("JetBrainsMono Nerd Font"),
	hide_tab_bar_if_only_one_tab = true,
}
