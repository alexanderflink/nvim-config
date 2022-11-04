vim.wo.relativenumber = true
vim.api.nvim_command("au TextYankPost * silent! lua vim.highlight.on_yank()")
vim.o.guifont = "Hack Nerd Font Mono:h13"
