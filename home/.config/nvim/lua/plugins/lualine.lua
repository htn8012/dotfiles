local colors = {
	background = "#1a1a1a",
	foreground = "#727169",
	blue = "#7e9cd8",
	cyan = "#6a9589",
	red = "#c34043",
	violet = "#938aa9",
	grey = "#2a2a2a",
	green = "#76946a",
	yellow = "#c0a36e",
}

local kanagawa_theme = {
	normal = {
		a = { fg = colors.background, bg = colors.violet },
		b = { fg = colors.foreground, bg = colors.grey },
		c = { fg = colors.foreground, bg = colors.background },
	},

	insert = { a = { fg = colors.background, bg = colors.blue } },
	visual = { a = { fg = colors.background, bg = colors.cyan } },
	replace = { a = { fg = colors.background, bg = colors.red } },

	inactive = {
		a = { fg = colors.foreground, bg = colors.background },
		b = { fg = colors.foreground, bg = colors.background },
		c = { fg = colors.background, bg = colors.background },
	},
}
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	opts = {
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			theme = kanagawa_theme,
		},
	},
}
