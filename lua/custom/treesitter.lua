local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = { 'c', 'cpp', 'lua' },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true }
})

