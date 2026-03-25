local wezterm = require 'wezterm'

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 12,

  color_scheme = "Builtin Dark",

  colors = {
    background = "#0F1115",
    foreground = "#C5C8CE",
    cursor_bg = "#E6E9EF",
    cursor_fg = "#0F1115",
    selection_bg = "#2A2F38",
    selection_fg = "#E6E9EF",
  },

  window_background_opacity = 0.90,
  window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
  },

  enable_tab_bar = false,

  animation_fps = 60,
  cursor_blink_rate = 500,

  default_cursor_style = "BlinkingBar",

  enable_wayland = false,

}
