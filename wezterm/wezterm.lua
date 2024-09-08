local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_wayland = true;
config.front_end = 'WebGpu'

config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = true

config.font = wezterm.font 'JetBrainsMono Nerd Font'

config.color_scheme = 'Kanagawa Dragon (Gogh)'
config.colors = {
  scrollbar_thumb = 'rgba(100, 100, 100, 0.5)'
}

config.window_padding = {
  top = 10;
  right = 10,
}

return config
