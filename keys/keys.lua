local act = require("wezterm").action

return {
	-- Tabs
	{ key = "Tab", mods = "ALT", action = act.ActivateTabRelative(1) },
	{ key = "Tab", mods = "ALT|SHIFT", action = act.ActivateTabRelative(-1) },
	{ key = "1", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = act.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = act.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = act.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = act.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = act.ActivateTab(6) },
	{ key = "7", mods = "ALT", action = act.ActivateTab(7) },
	{ key = "0", mods = "ALT", action = act.ActivateTab(-1) },


	-- Panes
	{ key = "%", mods = "ALT", action = act.SplitHorizontal { domain =  "CurrentPaneDomain" } },
	{ key = "t", mods = "ALT|SHIFT", action = act.SpawnTab("CurrentPaneDomain" ) },


	-- Clipboard
	{ key = "c", mods = "ALT|SHIFT", action = act.CopyTo("Clipboard") },
	{ key = "v", mods = "ALT|SHIFT", action = act.PasteFrom("Clipboard") },
	-- { key = "c", mods = "ALT|CTRL", action = act.ActivateCopyMode },


	-- Font
	{ key = "-", mods = "ALT", action = act.DecreaseFontSize },
	{ key = "=", mods = "ALT", action = act.IncreaseFontSize },
	{ key = ")", mods = "ALT", action = act.ResetFontSize },


	{ key = "z", mods = "ALT|SHIFT", action = act.TogglePaneZoomState }, -- ?

	-- Text / Navigation
	{ key = "PageUp", mods = "ALT|CTRL", action = act.ScrollByPage(-1) },
	{ key = "PageDown", mods = "ALT|CTRL", action = act.ScrollByPage(1) },

	-- Controls
	{ key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
	{ key = "f", mods = "ALT|CTRL", action = act.Search("CurrentSelectionOrEmptyString") },
	--! { key = "K", mods = "ALT|CTRL", action = act.ClearScrollback "ScrollbackOnly" },
	{ key = "l", mods = "ALT|CTRL|SHIFT", action = act.ShowDebugOverlay },
	{ key = "m", mods = "ALT|CTRL", action = act.Hide },
	{ key = "n", mods = "ALT|CTRL", action = act.SpawnWindow },
	{ key = "p", mods = "ALT|CTRL", action = act.ActivateCommandPalette },
	{ key = "r", mods = "ALT|CTRL", action = act.ReloadConfiguration },
	{ key = "u", mods = "ALT|CTRL", action = act.CharSelect { copy_on_select = true, copy_to =  "ClipboardAndPrimarySelection" } },
	{ key = "v", mods = "ALT|CTRL", action = act.PasteFrom("Clipboard") },
	{ key = "w", mods = "ALT|CTRL", action = act.CloseCurrentTab { confirm = true } },
	--! { key = "X", mods = "ALT|CTRL", action = act.ActivateCopyMode },

	-- { key = "LeftArrow", mods = "ALT|SHIFT", action = act.ActivatePaneDirection "Left" },
	-- { key = "RightArrow", mods = "ALT|SHIFT", action = act.ActivatePaneDirection "Right" },
	-- { key = "UpArrow", mods = "ALT|SHIFT", action = act.ActivatePaneDirection "Up" },
	-- { key = "DownArrow", mods = "ALT|SHIFT", action = act.ActivatePaneDirection "Down" },
}
