local colors = {
	-- background = "#1a1a1a", --wave
	background = "#121212", --dragon
	foreground = "#747474",
	blue = "#7E9CD8",
	red = "#C34043",
	violet = "#938aa9",
	green = "#76946A",
	orange = "#FFA066",
}

local kanagawa_theme = {
	normal = {
		a = { fg = colors.background, bg = colors.violet },
		b = { fg = colors.foreground, bg = colors.background },
		c = { fg = colors.foreground, bg = colors.background },
		z = { fg = colors.foreground, bg = colors.background },
	},

	insert = {
		a = { fg = colors.background, bg = colors.green },
		z = { fg = colors.foreground, bg = colors.background },
	},
	visual = {
		a = { fg = colors.background, bg = colors.orange },

		z = { fg = colors.foreground, bg = colors.background },
	},
	replace = {
		a = { fg = colors.background, bg = colors.red },
		z = { fg = colors.foreground, bg = colors.background },
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
