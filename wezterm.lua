WT = require("wezterm")

Conf_ok, C = pcall(WT.config_builder)
if not Conf_ok then
    WT.log_error("[wezterm] failed to run `wezterm.config_builder`.")
else
    -- GENERAL
    C.enable_wayland = true
    C.max_fps = 120
    C.default_prog = { "zsh" } -- Needed?
    C.scrollback_lines = 10000
    C.warn_about_missing_glyphs = true
    C.default_cursor_style = "SteadyBlock"
    C.term = "wezterm"
    C.set_environment_variables = {
        TERM = "wezterm",
        COLORTERM = "truecolor",
    }

    -- APPEARANCE
    C.color_scheme = "GruvboxDark"
    C.font = WT.font_with_fallback({
        "Hasklug Nerd Font",
        "Noto Color Emoji",
    })
    C.font_size = 15

    -- WINDOW
    C.window_decorations = "NONE"
    C.adjust_window_size_when_changing_font_size = false
    C.window_background_opacity = 1
    C.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }

    -- TAB BAR
    C.enable_tab_bar = true
    C.hide_tab_bar_if_only_one_tab = true
    C.use_fancy_tab_bar = true

    -- KEYBINDINGS
    C.keys = {} -- Not use default keys
    C.keys = require("keys.init")
end

return C
