return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("karb94/neoscroll.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("ishan9299/nvim-solarized-lua")
	use("nvim-lua/plenary.nvim")
	use({ "ellisonleao/gruvbox.nvim" })
	use("mhartington/formatter.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-lualine/lualine.nvim")
	use("tpope/vim-surround")
	use("wellle/targets.vim")
	use("windwp/nvim-autopairs")
	use("tpope/vim-fugitive")
	use("windwp/nvim-ts-autotag")
	use("tpope/vim-commentary")
end)
