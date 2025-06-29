-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ "catppuccin/nvim" },
		{ "hrsh7th/nvim-cmp" },
		{ "akinsho/toggleterm.nvim", config = true },
		{ "romgrk/barbar.nvim" },
		{ "nvim-treesitter/nvim-treesitter" },
		{ "nvim-tree/nvim-web-devicons" },
		{ "nvim-neo-tree/neo-tree.nvim" },
		{ "MunifTanjim/nui.nvim" }, -- Dependency for nvim-neo-tree
		{
			"nvim-telescope/telescope.nvim",
			keys = {
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files in filetree" },
				{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc="Find word in filetree" }
			},
		},
		{ "nvim-lua/plenary.nvim" }
	},

	-- automatically check for plugin updates
	checker = { enabled = true },
})
