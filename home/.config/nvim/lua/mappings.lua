-- move the cursor based on physical lines, not the actual lines.
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- go to start or end of line easier
vim.keymap.set({ "n", "x" }, "H", "^")
vim.keymap.set({ "n", "x" }, "L", "g_")

-- better
vim.keymap.set({ "n", "v", "i" }, "<C-S>", "<C-c>:update<cr>", { silent = true, desc = "save" })
vim.keymap.set("n", "<leader>q", ":q<cr>", { desc = "quit" })
vim.keymap.set("n", "<esc><esc>", ":nohlsearch<cr>", { silent = true })

-- keep matches center screen when cycling with n|n
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "next search result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "next search result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "next search result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "prev search result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "prev search result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "prev search result" })

-- move lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "move down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "move up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "move down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })

-- keep visual selection when indenting
vim.keymap.set("x", ">", ">gv")
vim.keymap.set("x", "<", "<gv")

-- buffers
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "prev buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<cr>", { desc = "delete buffer" })

-- without yanking
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "C", '"_C')
vim.keymap.set("n", "cc", '"_cc')
vim.keymap.set("x", "c", '"_c')
vim.keymap.set("x", "p", '"_c<esc>p')
