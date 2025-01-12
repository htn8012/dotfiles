return {
	"echasnovski/mini.starter",
	version = false,
	config = function()
		local starter = require("mini.starter")
		starter.setup({
			items = {
				starter.sections.recent_files(5, true),
			},
			silent = true,
		})
	end,
}
