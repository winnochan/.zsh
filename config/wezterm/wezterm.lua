local wezterm = require 'wezterm';
return {
  term = "xterm-256color",

  color_scheme = "Tomorrow Night",

  font = wezterm.font("Cascadia Code PL"),
  font_size = 13.0,
  dpi = 96.0,

  enable_scroll_bar = true,
  scrollback_lines = 100000,
}
