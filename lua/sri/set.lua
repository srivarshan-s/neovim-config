-- Set local variable for conciseness
local opt = vim.opt

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- 4 space indents
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Smart indents
opt.smartindent = true

-- Line wrap
opt.wrap = false

-- Undo
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Word search
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
-- opt.isfname:append("@-@")

opt.updatetime = 50

-- Colorcolumn to serve as boundary for lengthy lines
opt.colorcolumn = "80"

-- Set the leader key to <space>
vim.g.mapleader = " "

