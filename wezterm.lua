-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_wayland = true
config.max_fps = 120
config.default_prog = { "zsh" } -- Needed?
config.scrollback_lines = 10000
-- config.enable_tab_bar = true
config.enable_tab_bar = false

config.window_decorations = "NONE"
config.adjust_window_size_when_changing_font_size = false

config.window_background_opacity = 1
config.color_scheme = "GruvboxDark"
config.font = wezterm.font_with_fallback({
    "Hasklug Nerd Font Mono",
    "Noto Color Emoji",
})
config.font_size = 15
config.warn_about_missing_glyphs = true
config.default_cursor_style = "SteadyBlock"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.term = "wezterm"
config.set_environment_variables = {
    TERM = "wezterm",
    COLORTERM = "truecolor",
}

-- config.initial_cols = 120
-- config.initial_rows = 40
-- wezterm.on("gui-startup", function(cmd)
--   local tab, pane, window = cmd:spawn_tab{}
--   window:gui_window():maximize()
-- end)


return config
