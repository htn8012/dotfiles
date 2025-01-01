return {
	"folke/snacks.nvim",
	-- priority = 1000,
	lazy = false,
	config = function()
		local snacks = require("snacks")
		snacks.setup({
			notifier = {
				enabled = true,
				timeout = 2000,
				-- style = "fancy",
			},

			indent = {
				enabled = true,
			},
			bigfile = {
				enabled = true,
			},

			rename = {
				enabled = true,
			},

			scroll = {
				enabled = true,
			},
			statuscolumn = {
				enabled = true,
			},
		})
	end,
}
