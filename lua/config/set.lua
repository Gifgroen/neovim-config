vim.g.mapleader = " "

-- Editor UI
vim.opt.nu = true
vim.opt.relativenumber = true

-- Code style
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Theming
vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.api.nvim_exec('language en_US', true)
