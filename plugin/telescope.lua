require("telescope").setup({
	pickers = {
		"buffers",
		"find_files",
		"grep_string",
		"live_grep",
		"marks",
		"keymaps",
		"diagnostics",
		"lsp_workspace_symbols",
		"lsp_document_symbols",
		"commands",
		"quickfix",
		"registers"
	}
})

require("telescope").load_extension("file_browser")
vim.keymap.set("n", "<leader>t", ":Telescope<CR>", opts)
vim.keymap.set("n", "<leader>bf", ":Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
