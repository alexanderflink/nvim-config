require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, { command = "FormatWrite" })
