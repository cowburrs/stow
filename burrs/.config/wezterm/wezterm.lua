-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 12
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.enable_tab_bar = false

-- TODO: Smearcursor commit in wezterm. i want it bad

config.window_padding = {
  left = '0cell',
  right = '0cell',
  top = '0.5cell',
  bottom = '0.0cell',
}

-- Finally, return the configuration to wezterm:
return config
