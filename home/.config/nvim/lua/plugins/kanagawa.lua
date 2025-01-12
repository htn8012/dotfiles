return {
	"rebelot/kanagawa.nvim",
	enabled = true,
	lazy = false,
	priority = 1000,
	opts = {
		compile = false,
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = false },
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
				dragonBlack0 = "#010101",
				dragonBlack1 = "#040404",
				dragonBlack2 = "#080808",
				dragonBlack3 = "#121212",
				dragonBlack4 = "#161616",
				dragonBlack5 = "#202020",
			},
			theme = {
				all = {
					ui = {
						bg_gutter = "none",
						float = {
							bg = "none",
						},
					},
				},
			},
		},
		overrides = function(colors) -- add/modify highlights
			local theme = colors.theme
			local makeDiagnosticColor = function(color)
				local c = require("kanagawa.lib.color")
				return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
			end

			return {
				NormalFloat = { bg = "none" },
				FloatBorder = { bg = "none" },
				FloatTitle = { bg = "none" },
				-- StatusLine = { fg = theme.syn.comment, bg = "none" },
				-- StatusLineNC = { fg = theme.syn.comment, bg = "none" },

				AvanteTitle = { fg = theme.syn.string, bg = "none" },
				AvanteSubtitle = { fg = theme.syn.type, bg = "none" },
				AvanteThirdTitle = { fg = theme.syn.type, bg = "none" },

				-- blink
				BlinkCmpMenu = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
				BlinkCmpMenuSelection = { fg = "none", bg = theme.ui.bg_p2 },
				BlinkCmpDocBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
				BlinkCmpSignatureHelpBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
				BlinkCmpMenuBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },

				-- border
				FzfLuaBorder = { fg = theme.ui.float.fg_border },
				WinSeparator = { fg = theme.ui.float.fg_border },
				NeoTreeRootName = { fg = theme.syn.comment },

				LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				MasonNormal = { fg = theme.ui.fg_dim, bg = "none" },

				DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
				DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
				DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
				DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
			}
		end,
		theme = "wave",
		background = {
			dark = "dragon", -- try "dragon" !
			light = "lotus",
		},
	},
	init = function()
		vim.cmd("colorscheme kanagawa")
	end,
}
