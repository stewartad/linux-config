vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
