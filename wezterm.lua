local wt_ok, wt = pcall(require, "wezterm")
if not wt_ok then
    wt.log_error("[wezterm] PANIC: failed to run `wezterm.config_builder`.")
    return
end

local conf_ok, config = pcall(wt.config_builder)
if not conf_ok then
    wt.log_error("[wezterm] failed to run `wezterm.config_builder`.")
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
    config.font = wt.font_with_fallback({
        "Hasklug Nerd Font", -- || ++ <-> <+> <=> <>
        "Noto Color Emoji", -- 😎 🇧🇷 🏎️
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
    local keys_ok, keys = pcall(require, "default_keys")
    if not keys_ok then
        keys.log_error("[wezterm] ERROR: failed to require default_keys")
    end
    keys.apply_to_config(config)

    -- VI MOTIONS KEY BINDINGS local vim = require('vim')
    local vim_ok, vim = pcall(require, "vim")
    if not vim_ok then
        keys.log_error("[wezterm] ERROR: failed to require vim keybindings")
    end
    vim.apply_to_config(config)

    return config
end
