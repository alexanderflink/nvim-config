require("telescope").setup({
	extensions = {
		file_browser = {
			hijack_netrw = true,
		},
	},
})

require("telescope").load_extension("file_browser")
vim.keymap.set("n", "<leader>bf", ":Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
