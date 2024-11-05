vim.api.nvim_exec('language en_US', true)

vim.cmd.colorscheme "catppuccin-mocha"

vim.g.have_nerd_font = true
vim.g.mapleader = " "

require('config.lazy')
require('config.options')
require('config.keymap')

