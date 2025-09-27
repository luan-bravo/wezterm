local act = require("wezterm").action

return {
	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },

	{ key = "h", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Left", 1 } },
	{ key = "j", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Down", 1 } },
	{ key = "k", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Up", 1 } },
	{ key = "l", mods = "ALT|CTRL", action = act.AdjustPaneSize { "Right", 1 } },

	{ key = "n", mods = "ALT", action = act.ActivateTabRelative(1) },
	{ key = "p", mods = "ALT", action = act.ActivateTabRelative(-1) },

	{ key = ",", mods = "ALT", action = act.CopyMode "JumpReverse" },
	{ key = ";", mods = "ALT", action = act.CopyMode "JumpAgain" },

	{ key = "u", mods = "ALT", action = act.ScrollByPage(-1) },
	{ key = "d", mods = "ALT", action = act.ScrollByPage(1) },
}

