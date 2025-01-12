return {
	"yetone/avante.nvim",
	enabled = function()
		local config_dir = vim.fn.expand("~/.config")
		local Path = require("plenary.path")
		local paths = vim.iter({ "hosts.json", "apps.json" }):fold({}, function(acc, path)
			local yason = Path:new(config_dir):joinpath("github-copilot", path)
			if yason:exists() then
				table.insert(acc, yason)
			end
			return acc
		end)
		return #paths ~= 0
	end,
	event = "VeryLazy",
	lazy = false,
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
	build = ":AvanteBuild source=false",
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"echasnovski/mini.icons",
		"zbirenbaum/copilot.lua",
	},
}
