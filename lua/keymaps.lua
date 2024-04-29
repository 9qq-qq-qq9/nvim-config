vim.g.mapleader = " "

-- buffer control
vim.keymap.set("n", "<Tab>", "<CMD>bnext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<CMD>bprev<CR>", {})
vim.keymap.set("n", "<leader>x", "<CMD>bdelete<CR>", {})
