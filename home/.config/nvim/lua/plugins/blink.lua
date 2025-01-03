return {
	"saghen/blink.cmp",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
	version = "*",
	opts = {
		keymap = {
			preset = "super-tab",
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },
		},
		completion = {
			menu = {
				border = "rounded",
				draw = {
					columns = { { "kind_icon" }, { "label", "label_description", gap = 1 } },
				},
			},
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
			accept = { auto_brackets = { enabled = false } },
			ghost_text = { enabled = false },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		snippets = {
			expand = function(snippet)
				require("luasnip").lsp_expand(snippet)
			end,
			active = function(filter)
				if filter and filter.direction then
					return require("luasnip").jumpable(filter.direction)
				end
				return require("luasnip").in_snippet()
			end,
			jump = function(direction)
				require("luasnip").jump(direction)
			end,
		},
		sources = {
			default = { "lsp", "path", "luasnip", "buffer" },
		},
		signature = { enabled = true, window = { border = "rounded" } },
	},
	opts_extend = { "sources.default" },
}
