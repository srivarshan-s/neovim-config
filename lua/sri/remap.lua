-- Set leader key (space)
vim.g.mapleader = " "

-- Set space+p+v to open netrw (the file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
