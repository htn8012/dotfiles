local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{
			require("plugins.blink"),
			require("plugins.comment"),
			require("plugins.conform"),
			require("plugins.dressing"),
			require("plugins.fzf"),
			require("plugins.git"),
			require("plugins.kanagawa"),
			require("plugins.lazydev"),
			require("plugins.leap"),
			require("plugins.mini-icons"),
			require("plugins.neoscroll"),
			require("plugins.nvim-lspconfig"),
			require("plugins.nvim-treesitter"),
			require("plugins.oil"),
			require("plugins.tmux-navigator"),
			require("plugins.which-key"),
		},
	},
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
