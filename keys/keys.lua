local act = require("wezterm").action

return {
    -- Tabs
    { key = "Tab", mods = "ALT", action = act.ActivateTabRelative(1) },
    { key = "Tab", mods = "SHIFT|ALT", action = act.ActivateTabRelative(-1) },
    { key = "1", mods = "ALT", action = act.ActivateTab(0) },
    { key = "2", mods = "ALT", action = act.ActivateTab(1) },
    { key = "3", mods = "ALT", action = act.ActivateTab(2) },
    { key = "4", mods = "ALT", action = act.ActivateTab(3) },
    { key = "5", mods = "ALT", action = act.ActivateTab(4) },
    { key = "6", mods = "ALT", action = act.ActivateTab(6) },
    { key = "7", mods = "ALT", action = act.ActivateTab(7) },
    { key = "0", mods = "ALT", action = act.ActivateTab(-1) },


    -- Panes
    { key = "%", mods = "ALT", action = act.SplitHorizontal{ domain =  "CurrentPaneDomain" } },
    { key = "t", mods = "ALT", action = act.SpawnTab "CurrentPaneDomain" },

    { key = "h", mods = "CTRL|ALT", action = act.AdjustPaneSize{ "Left", 1 } },
    { key = "j", mods = "CTRL|ALT", action = act.AdjustPaneSize{ "Down", 1 } },
    { key = "k", mods = "CTRL|ALT", action = act.AdjustPaneSize{ "Up", 1 } },
    { key = "l", mods = "CTRL|ALT", action = act.AdjustPaneSize{ "Right", 1 } },



    -- Font
    { key = "-", mods = "ALT", action = act.DecreaseFontSize },
    { key = "=", mods = "ALT", action = act.IncreaseFontSize },
    { key = ")", mods = "ALT", action = act.ResetFontSize },


    -- Clipboard
    { key = "c", mods = "ALT", action = act.CopyTo "Clipboard" },


    -- Text / Navigation
    { key = "PageUp", mods = "ALT", action = act.ScrollByPage(-1) },
    { key = "PageDown", mods = "ALT", action = act.ScrollByPage(1) },


    -- Controls
    { key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
    { key = "F", mods = "ALT", action = act.Search "CurrentSelectionOrEmptyString" },
    --! { key = "K", mods = "ALT", action = act.ClearScrollback "ScrollbackOnly" },
    { key = "L", mods = "ALT", action = act.ShowDebugOverlay },

    { key = "M", mods = "ALT", action = act.Hide },
    { key = "N", mods = "ALT", action = act.SpawnWindow },
    { key = "P", mods = "ALT", action = act.ActivateCommandPalette },
    { key = "R", mods = "ALT", action = act.ReloadConfiguration },
    { key = "U", mods = "ALT", action = act.CharSelect{ copy_on_select = true, copy_to =  "ClipboardAndPrimarySelection" } },
    { key = "V", mods = "ALT", action = act.PasteFrom "Clipboard" },
    { key = "W", mods = "ALT", action = act.CloseCurrentTab{ confirm = true } },
    --! { key = "X", mods = "ALT", action = act.ActivateCopyMode },
    { key = "Z", mods = "ALT", action = act.TogglePaneZoomState }, -- ?

    { key = "J", mods = "ALT", action = act.ActivateTabRelative(1) },
    { key = "K", mods = "ALT", action = act.ActivateTabRelative(-1) },

    -- { key = "LeftArrow", mods = "SHIFT|ALT", action = act.ActivatePaneDirection "Left" },
    -- { key = "RightArrow", mods = "SHIFT|ALT", action = act.ActivatePaneDirection "Right" },
    -- { key = "UpArrow", mods = "SHIFT|ALT", action = act.ActivatePaneDirection "Up" },
    -- { key = "DownArrow", mods = "SHIFT|ALT", action = act.ActivatePaneDirection "Down" },

    { key = "C", mods = "SHIFT|ALT", action = act.CopyTo "Clipboard" },
    { key = "V", mods = "SHIFT|ALT", action = act.PasteFrom "Clipboard" },
}
