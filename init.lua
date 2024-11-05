vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Setup Lazy package manager, should be the first thing that bootstraps.
require('config.lazy')

vim.api.nvim_exec('language en_US', true)
vim.cmd.colorscheme "catppuccin-mocha"
vim.g.have_nerd_font = true

require('config.options')
require('config.keymap')

