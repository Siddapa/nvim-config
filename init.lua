require("config.lazy")
require("toggleterm").setup{
	inerst_mappings = true
}

vim.o.termguicolors = true
vim.cmd.colorscheme "catppuccin"
vim.opt.bg = "dark"

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

vim.keymap.set("n", "<ESC>", "<CMD>nohlsearch<CR>",
	{ desc = "Clear Highlighting", noremap = true, silent = true }
)
vim.keymap.set("n", "<S-h>", "ge",
	{ desc = "Jump one word back", noremap = true,  silent = true }
)
vim.keymap.set("n", "<S-l>", "w",
	{ desc = "Jump one word forward", noremap = true, silent = true }
)
vim.keymap.set("n", "<S-j>", "<S-}>",
	{ desc = "Jump down to next section", noremap = true, silent = true }
)
vim.keymap.set("n", "<S-k>", "<S-{>",
	{ desc = "Jump up to next section", noremap = true, silent = true }
)

vim.keymap.set("n", "<C-n>", "<CMD>Neotree focus reveal toggle=true<CR>",
	{ desc = "Open Neo Tree", noremap = true, silent = true }
)

vim.keymap.set("n", "<M-v>", "<CMD>ToggleTerm size=70 direction=vertical<CR>", 
	{ desc = "Open Vertical Terminal", noremap = true, silent = true }
)
vim.keymap.set("n", "<M-h>", "<CMD>ToggleTerm size=10 direction=horizontal<CR>", 
	{ desc = "Open Horizontal Terminal", noremap = true, silent = true }
)
vim.keymap.set("t", "<M-v>", "<CMD>ToggleTerm<CR>", 
	{ desc = "Close all open terminals", noremap = true, silent = true }
)
vim.keymap.set("t", "<M-h>", "<CMD>ToggleTerm<CR>", 
	{ desc = "Close all open terminals", noremap = true, silent = true }
)

vim.keymap.set("n", "<C-h>", "<C-w>h", 
	{ desc = "Focus left", noremap = true, silent = true }
)
vim.keymap.set("n", "<C-j>", "<C-w>j",
	{ desc = "Focus down", noremap = true, silent = true }
)
vim.keymap.set("n", "<C-k>", "<C-w>k", 
	{ desc = "Focus up", noremap = true, silent = true }
)
vim.keymap.set("n", "<C-l>", "<C-w>l", 
	{ desc = "Focus right", noremap = true, silent = true }
)

-- Doesn't work, probably being overrid by something else
vim.keymap.set("n", "<S-Tab>", "<CMD>BufferPrevious<CR>",
	{ desc = "Slide over to previous buffer", noremap = false, silent = true }
)
vim.keymap.set("n", "<Tab>", "<CMD>BufferNext<CR>", 
	{ desc = "Slide over to next buffer", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>x", "<CMD>BufferClose<CR>", 
	{ desc = "Close current buffer", noremap = true, silent = true }
)

vim.opt.mouse = "a"
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
