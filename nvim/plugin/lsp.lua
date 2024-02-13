vim.api.nvim_set_keymap("i", "<leader>ca", "<esc>:lua vim.lsp.buf.code_action()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>ca", "lua vim.lsp.buf.code_action()<CR>", {})
vim.api.nvim_set_keymap("i", "<leader>la", "<ESC>:Lspsaga code_action<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>la", "Lspsaga code_action<CR>", {})
