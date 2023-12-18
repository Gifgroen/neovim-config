vim.g.mapleader = " "

-- Editor UI
vim.opt.nu = true
vim.opt.relativenumber = true

-- Code style
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.incsearch = true

-- Theming
vim.opt.termguicolors = true

vim.opt.updatetime = 50

