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

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) 

require("lazy-setup")

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin" 

-- Setup fuzzy finder: Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Setup tree-sitter
local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = { "c", "cpp", "lua", "javascript", "typescript", "html" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})
-- Seup Neo-tree Project navigator 
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
