local act = require("wezterm").action

return {
    { key = "h", mods = "ALT", action = act.ActivatePaneDirection "Left" },
    { key = "j", mods = "ALT", action = act.ActivatePaneDirection "Down" },
    { key = "k", mods = "ALT", action = act.ActivatePaneDirection "Up" },
    { key = "l", mods = "ALT", action = act.ActivatePaneDirection "Right" },

    { key = "n", mods = "ALT", action = act.ActivateTabRelative(1) },
    { key = "p", mods = "ALT", action = act.ActivateTabRelative(-1) },

    { key = ",", mods = "ALT", action = act.CopyMode "JumpReverse" },
    { key = ";", mods = "ALT", action = act.CopyMode "JumpAgain" },
}
