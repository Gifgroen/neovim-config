print("nvim config loaded!")

vim.g.mapleader = " "

-- Editor UI
vim.opt.nu = true
vim.opt.relativenumber = true
-- Code style
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
-- Search
vim.opt.incsearch = true
-- Theming
vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

require("lazy-setup")

-- Setup Neo-tree Project navigator 
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
