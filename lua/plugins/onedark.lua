return { "navarasu/onedark.nvim",
  name = "onedark",
  priority = 1000,
  config = function()
    local onedark = require('onedark')
    onedark.setup {
      style = 'dark'
    }
    onedark.load()
  end
}
