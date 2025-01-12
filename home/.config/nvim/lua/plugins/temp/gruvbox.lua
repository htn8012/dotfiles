return {
	"sainnhe/gruvbox-material",
	enabled = false,
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "soft"
		vim.g.gruvbox_material_float_style = "dim"
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
