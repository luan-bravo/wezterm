WT = require("wezterm")

Conf_ok, Config = pcall(WT.config_builder)
if not Conf_ok then
    WT.log_error("[wezterm] failed to run `wezterm.config_builder`.")
else
    -- GENERAL
    Config.enable_wayland = true
    Config.max_fps = 120
    Config.default_prog = { "zsh" } -- Needed?
    Config.scrollback_lines = 10000
    Config.warn_about_missing_glyphs = true
    Config.default_cursor_style = "SteadyBlock"
    Config.term = "wezterm"
    Config.set_environment_variables = {
        TERM = "wezterm",
        COLORTERM = "truecolor",
    }

    -- APPEARANCE
    Config.color_scheme = "GruvboxDark"
    Config.font = WT.font_with_fallback({
        "Hasklug Nerd Font",
        "Noto Color Emoji",
    })
    Config.font_size = 15

    -- WINDOW
    Config.window_decorations = "NONE"
    Config.adjust_window_size_when_changing_font_size = false
    Config.window_background_opacity = 1.00
    Config.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }

    -- TAB BAR
    Config.enable_tab_bar = true
    Config.hide_tab_bar_if_only_one_tab = true
    Config.use_fancy_tab_bar = true

    -- KEYBINDINGS
    Config.keys = {} -- Not use default keys
    Config.keys = require("keys.init")
end

return Config
