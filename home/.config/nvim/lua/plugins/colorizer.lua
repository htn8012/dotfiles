return {
	{
		"NvChad/nvim-colorizer.lua",
		enabled = false,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			vim.o.termguicolors = true
			local colorizer = require("colorizer")

			colorizer.setup({
				user_default_options = {
					tailwind = true,
				},
			})
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		enabled = true,
		event = "VeryLazy",
		keys = {
			{ "<leader>tc", "<cmd>HighlightColors Toggle<cr>", desc = "toggle highlight colors" },
		},
		opts = {
			render = "background",
			virtual_symbol = "",
			virtual_symbol_prefix = "",
			virtual_symbol_suffix = " ",
			virtual_symbol_position = "inline",
			enable_hex = true,
			enable_short_hex = true,
			enable_rgb = true,
			enable_hsl = true,
			enable_var_usage = true,
			enable_named_colors = true,
			enable_tailwind = true,
			exclude_filetypes = {},
			exclude_buftypes = {},
		},
	},
}
