local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "J", "10j", opts)
vim.keymap.set("n", "K", "10k", opts)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
