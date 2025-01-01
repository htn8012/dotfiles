return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		compile = false,
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		transparent = false,
		dimInactive = false,
		terminalColors = true,
		colors = {
			palette = {
				sumiInk0 = "#131313",
				sumiInk1 = "#161616",
				sumiInk2 = "#181818",
				sumiInk3 = "#1a1a1a",
				sumiInk4 = "#1f1f1f",
				sumiInk5 = "#2a2a2a",
				sumiInk6 = "#363636",
			},
			theme = {
				all = {
					ui = {
						bg_gutter = "none",
					},
				},
			},
		},
		overrides = function(colors) -- add/modify highlights
			local theme = colors.theme
			return {
				NormalFloat = { bg = "none" },
				FloatBorder = { bg = "none" },
				FloatTitle = { bg = "none" },
				StatusLine = { fg = theme.syn.comment, bg = "none" },
				StatusLineNC = { fg = theme.syn.comment, bg = "none" },

				-- pmenu
				Pmenu = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
				PmenuSel = { fg = "none", bg = theme.ui.bg_p2 },
				PmenuSbar = { bg = theme.ui.bg },
				PmenuThumb = { bg = theme.ui.bg_p2 },

				-- border
				NvimTreeIndentMarker = { fg = theme.ui.float.fg_border },
				FzfLuaBorder = { fg = theme.ui.float.fg_border },
				WinSeparator = { fg = theme.ui.float.fg_border },

				LazyNormal = { fg = theme.ui.fg_dim, bg = "none" },
				MasonNormal = { fg = theme.ui.fg_dim, bg = "none" },
			}
		end,
		theme = "wave", -- Load "wave" theme when 'background' option is not set
		background = { -- map the value of 'background' option to a theme
			dark = "wave", -- try "dragon" !
			light = "lotus",
		},
	},
	init = function()
		vim.cmd("colorscheme kanagawa")
	end,
}
