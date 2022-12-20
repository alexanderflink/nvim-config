local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"sumneko_lua",
	"rust_analyzer",
	"tsserver",
	"bashls",
	"cssls",
	"cssmodules_ls",
	"eslint",
	"graphql",
	"html",
	"jsonls",
	"pyright",
})

-- Fix Undefined global 'vim'
lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == "eslint" then
		vim.cmd.LspStop("eslint")
		return
	end

	vim.keymap.set("n", "<leader>de", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<leader>sh", vim.lsp.buf.signature_help, opts)
	vim.keymap.set("n", "K", "10k", opts)
end)

lsp.setup()
