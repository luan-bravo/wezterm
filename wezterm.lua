--- Fuse table1 onto table2
function FuseTables(table1, table2)
	if table1 == nil then
		table1 = table2
		return
	else
		for key, value in ipairs(table2) do
			table1[key] = value
		end
	end
end

--- Push all items from arr1 to the end of arr2
function PushArray(arr1, arr2)
	table.move(arr1, 1, #arr1, #arr2 + 1, arr2) --- Fuse table $1's items with $4
end

WT = require("wezterm")
Conf_ok, Config = pcall(WT.config_builder)
if not Conf_ok then
	WT.log_error("[wezconf] failed to run `wezterm.config_builder`.")
else
	-- General
	Config.enable_wayland = true
	Config.max_fps = 120
	Config.default_prog = { "zsh" }
	Config.scrollback_lines = 10000
	-- TODO: turn this one and setup more fallback fonts
	Config.warn_about_missing_glyphs = false
	Config.default_cursor_style = "SteadyBlock"
	Config.term = "wezterm"
	Config.set_environment_variables = {
		-- TERM = "wezterm",
		-- COLORTERM = "truecolor",
	}

	-- Appearance
	Config.color_scheme = "GruvboxDarkHard"
	-- TODO: Figure how to actually change the bg color
	-- FuseTables(Config.colors, {
	--	 background = "#282828",
	-- })
	Config.font = WT.font_with_fallback({
		-- "Hasklug Nerd Font",
		-- "SauceCodePro Nerd Font",
		"JetBrainsMono Nerd Font",
		"Noto Color Emoji",
	})
	Config.font_size = 13

	-- Window
	Config.window_decorations = "NONE"
	Config.adjust_window_size_when_changing_font_size = false
	Config.window_background_opacity = 1.00
	Config.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }

	-- Tab bar
	Config.enable_tab_bar = true
	Config.hide_tab_bar_if_only_one_tab = true
	Config.use_fancy_tab_bar = true

	-- Keybindings
	Config.keys = require("keys.init")
end


return Config
