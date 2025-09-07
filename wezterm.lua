WT = require("wezterm")

local conf_ok, config = pcall(WT.config_builder)
if not conf_ok then
    WT.log_error("[wezterm] failed to run `wezterm.config_builder`.")
else
    -- GENERAL
    config.enable_wayland = true
    config.max_fps = 120
    config.default_prog = { "zsh" } -- Needed?
    config.scrollback_lines = 10000
    config.warn_about_missing_glyphs = true
    config.default_cursor_style = "SteadyBlock"
    config.term = "wezterm"
    config.set_environment_variables = {
        TERM = "wezterm",
        COLORTERM = "truecolor",
    }

    -- APPEARANCE
    config.color_scheme = "GruvboxDark"
    config.font = WT.font_with_fallback({
        "Hasklug Nerd Font",
        "Noto Color Emoji",
    })
    config.font_size = 15

    -- WINDOW
    config.window_decorations = "NONE"
    config.adjust_window_size_when_changing_font_size = false
    config.window_background_opacity = 1
    config.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }

    -- TAB BAR
    config.enable_tab_bar = true
    config.hide_tab_bar_if_only_one_tab = true
    config.use_fancy_tab_bar = true

    -- KEYBINDINGS
    -- local keys = dofile("/home/lul/.config/wezterm/default_keys.lua")
    -- config.keys = keys.keys
    -- config.key_tables = keys.key_tables




    config.keys = {} -- Use no default keys
    config.keys = require("keys.init")
    -- config.keys = require("keys.keys")

    -- VI MOTIONS KEY BINDINGS local vim = require('vim')
    -- config.keys = require("keys.init")
end

return config
