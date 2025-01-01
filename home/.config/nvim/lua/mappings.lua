local map = vim.keymap.set

-- better
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "move block down" })
map({ "n", "x" }, "H", "^")
map({ "n", "x" }, "L", "$")

-- save and quit
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
map("n", "<leader>q", ":q<cr>", { desc = "quit" })

-- keep matches center screen when cycling with n|n
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- move lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- buffers
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bd", ":bdelete<cr>", { desc = "Delete Buffer" })

-- turn off search matches with double-<esc>
map("n", "<Esc>", ":nohlsearch<CR>", { silent = true })

-- Keep visual selection when indenting
map("x", ">", ">gv")
map("x", "<", "<gv")

-- create new lines in Normal mode
map("n", "<leader>o", "o<Esc>^Da<Esc>k", { desc = "newline below", silent = true })
map("n", "<leader>O", "O<Esc>^Da<Esc>j", { desc = "newline above", silent = true })

-- without yanking
map({ "n", "v" }, "<leader>c", [["_c]], { desc = "change without register" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete without register" })
map("v", "<leader>p", [["_dP]], { desc = "paste without register" })
