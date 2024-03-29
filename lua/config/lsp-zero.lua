local lsp = require("lsp-zero")

lsp.preset("recommended")

local cmp = require("cmp")
local cmp_action = lsp.cmp_action()
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mapping = cmp.mapping.preset.insert({
  ["<CR>"] = cmp.mapping.confirm({ select = true }),
  
  ["<C-Space>"] = cmp.mapping.complete(), 
  ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
  ["<C-n>"] = cmp.mapping.select_next_item(cmp_select)

})
cmp.setup({ mapping = cmp_mapping })

lsp.set_preferences({ sign_icons = {} })
lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr, preserve_mappings = false })
  
--  local opts = { buffer = bufnr, remap = false }

--  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
--  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
--  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "clangd", "eslint", "kotlin_language_server", "lua_ls", "tsserver" },
  handlers = {
    lsp.default_setup,
  },
})

local lsp_config = require('lspconfig')
lsp_config.clangd.setup({})
lsp_config.eslint.setup({})
lsp_config.kotlin_language_server.setup({})
lsp_config.lua_ls.setup({})
lsp_config.tsserver.setup({})
