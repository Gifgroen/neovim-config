return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    -- Setup tree-sitter
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "cpp", "lua", "javascript", "typescript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
