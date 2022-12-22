local lsp = require("lsp-zero")
local cmp = require("cmp")

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

lsp.set_preferences({
	set_lsp_keymaps = false,
})

local cmp_mapping = lsp.defaults.cmp_mappings({
	["<Tab>"] = cmp.mapping.confirm({
		-- documentation says this is important.
		-- I don't know why.
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	}),
})

cmp_mapping["<CR>"] = nil

lsp.setup_nvim_cmp({
	sources = {
		-- This one provides the data from copilot.
		{ name = "copilot" },

		--- These are the default sources for lsp-zero
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 3 },
		{ name = "buffer", keyword_length = 3 },
		{ name = "luasnip", keyword_length = 2 },
	},
	mapping = cmp_mapping,
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "<leader>de", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()
