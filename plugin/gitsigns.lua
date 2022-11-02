require("gitsigns").setup({
	on_attach = function(bufnr)
		print("gitsigns on_attach")
		vim.keymap.set(
			"n",
			"<leader>ghr",
			":Gitsigns reset_hunk<CR>",
			{ noremap = true, silent = true, buffer = bufnr }
		)
	end,
})
