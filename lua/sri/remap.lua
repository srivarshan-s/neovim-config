-- Set leader key (space)
vim.g.mapleader = " "

-- Set space+e to open netrw (the file explorer)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Set space+y to copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste without copying highlighted region
vim.keymap.set("x", "<leader>p", "\"_dP")
