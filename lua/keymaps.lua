vim.g.mapleader = " "

-- buffer control
vim.keymap.set("n", "<Tab>", "<CMD>bnext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<CMD>bprev<CR>", {})
vim.keymap.set("n", "<leader>x", "<CMD>bdelete<CR>", {})
vim.keymap.set("n", "<leader>e", "<CMD>tabnew<CR>", {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

vim.keymap.set("n", "<Esc>", "<CMD>noh<CR><Esc>", {})
vim.keymap.set("i", "<S-Tab>", "<CMD> >> <CR>", {})

vim.keymap.set("n", "ZW", "<CMD>w<CR>", {})

-- break arrowkey habit
vim.keymap.set({"n", "i"}, "<Up>", "<Nop>", {})
vim.keymap.set({"n", "i"}, "<Down>", "<Nop>", {})
vim.keymap.set({"n", "i"}, "<Left>", "<Nop>", {})
vim.keymap.set({"n", "i"}, "<Right>", "<Nop>", {})
