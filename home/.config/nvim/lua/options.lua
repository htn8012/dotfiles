vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true
vim.opt.undolevels = 30000

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.laststatus = 2

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.autowrite = true
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.clipboard = "unnamedplus"

-- check if we need to reload the file when it changed
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
	group = vim.api.nvim_create_augroup("Checktime", { clear = true }),
	callback = function()
		if vim.o.buftype ~= "nofile" then
			vim.cmd("checktime")
		end
	end,
})

-- highlight briefly on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_on_yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({
			higroup = "PmenuKindSel",
			timeout = 150,
			on_macro = true,
		})
	end,
})

-- automatic toggling
vim.cmd([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu		| set cul		| endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | set nocul		| endif
  augroup END
]]) -- h/t https://jeffkreeftmeijer.com/vim-number/