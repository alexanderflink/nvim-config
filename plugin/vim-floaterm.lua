local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>tt", ":FloatermToggle<CR>", opts)
vim.keymap.set("n", "<leader>tp", ":FloatermPrev<CR>", opts)
vim.keymap.set("n", "<leader>tn", ":FloatermNext<CR>", opts)
vim.keymap.set("n", "<leader>tk", ":FloatermKill<CR>", opts)
vim.keymap.set("n", "<Esc>", ":FloatermHide<CR>", { remap = true, silent = true })
