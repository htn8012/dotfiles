return {
	"yetone/avante.nvim",
	enabled = false,
	event = "VeryLazy",
	lazy = false,
	build = ":AvanteBuild source=false",
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"echasnovski/mini.icons",
		"zbirenbaum/copilot.lua",
	},
	opts = {
		provider = "copilot",
		windows = {
			position = "right",
			wrap = true,
			width = 30,
			sidebar_header = {
				enabled = true,
				align = "left",
				rounded = false,
			},
			ask = {
				start_insert = false,
			},
		},
	},
}
