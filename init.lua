require("config.lazy")

vim.cmd.colorscheme "catppuccin"

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Clear Highlighting", noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "ge", { desc = "Jump one word back", noremap = true,  silent = true })
vim.keymap.set("n", "<C-l>", "w", { desc = "Jump one word forward", noremap = true, silent = true })
vim.keymap.set("i", "<C-h>", "<C-o>ge", { desc = "Jump one word back", noremap = true,  silent = true })
vim.keymap.set("i", "<C-l>", "<C-o>w", { desc = "Jump one word forward", noremap = true, silent = true })

vim.opt.mouse = "a"
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
