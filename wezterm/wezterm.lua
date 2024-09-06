local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = true

config.color_scheme = 'Kanagawa Dragon (Gogh)'
config.colors = {
  -- background = 'rgba(30, 30, 30, 0.5)',
}

config.window_padding = {
  right = 8,
}

return config
