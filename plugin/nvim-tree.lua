require("nvim-tree").setup({
	sync_root_with_cwd = true,
	view = {
		adaptive_size = true,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opts)
