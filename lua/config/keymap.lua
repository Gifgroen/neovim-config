vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Setup Neo-tree Project navigator 
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")

-- Paste over selection without replacing pasted over text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete to Void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
