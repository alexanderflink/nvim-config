local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "J", "10j", opts)
vim.keymap.set("n", "K", "10k", opts)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set(
	"n",
	"<leader>di",
	vim.diagnostic.open_float,
	{ noremap = true, silent = true, desc = "Show diagnostic" }
)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
vim.keymap.set("t", "<C-W>", "<C-\\><C-u><C-W>", opts)

vim.keymap.set({ "t", "n", "i" }, "<D-t>", "<Esc>:tabnew<CR>", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-w>", "<Esc>:bd!<CR>", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-1>", "<Esc>1gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-2>", "<Esc>2gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-3>", "<Esc>3gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-4>", "<Esc>4gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-5>", "<Esc>5gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-6>", "<Esc>6gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-7>", "<Esc>7gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-8>", "<Esc>8gt", { remap = true, silent = true })
vim.keymap.set({ "t", "n", "i" }, "<D-9>", "<Esc>9gt", { remap = true, silent = true })
