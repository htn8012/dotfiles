local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

config.colors = {
	foreground = "#dcd7ba",
	background = "#1a1a1a",
	cursor_bg = "#98bb6c",
	cursor_border = "#98bb6c",
	selection_fg = "#c8c093",
	selection_bg = "#2d4f67",
	scrollbar_thumb = "#16161d",
	split = "#16161d",
	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
	indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}
config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font",
	"FiraCode Nerd Font",
	"MesloLGS NF",
	"Noto Color Emoji",
})

config.font_size = 11.5
config.cell_width = 1
config.line_height = 1

config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.tab_bar_at_bottom = false

config.window_close_confirmation = "NeverPrompt"
-- config.window_decorations = "TITLE | RESIZE"
config.window_decorations = "NONE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.audible_bell = "Disabled"
config.enable_wayland = true
config.warn_about_missing_glyphs = false
-- config.native_macos_fullscreen_mode = true

return config
