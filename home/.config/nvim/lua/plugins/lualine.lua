local colors = {
	background = "#1a1a1a",
	foreground = "#C8C093",
	blue = "#7E9CD8",
	cyan = "#6A9589",
	red = "#C34043",
	violet = "#938aa9",
	grey = "#363636",
	green = "#76946A",
	yellow = "#C0A36E",
}

local kanagawa_theme = {
	normal = {
		a = { fg = colors.background, bg = colors.violet },
		b = { fg = colors.foreground, bg = colors.grey },
		c = { fg = colors.foreground, bg = colors.background },
		x = { fg = colors.foreground, bg = colors.background },
		y = { fg = colors.foreground, bg = colors.background },
		z = { fg = colors.foreground, bg = colors.grey },
	},

	insert = {
		a = { fg = colors.background, bg = colors.green },
		z = { fg = colors.foreground, bg = colors.grey },
	},
	visual = {
		a = { fg = colors.background, bg = colors.blue },
		z = { fg = colors.foreground, bg = colors.grey },
	},
	replace = {
		a = { fg = colors.background, bg = colors.red },
		z = { fg = colors.foreground, bg = colors.grey },
	},

	inactive = {
		a = { fg = colors.foreground, bg = colors.background },
		b = { fg = colors.foreground, bg = colors.background },
		c = { fg = colors.background, bg = colors.background },
	},
}
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = kanagawa_theme,
			},
		})
	end,
}
