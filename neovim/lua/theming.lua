vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd([[colorscheme catppuccin]])

local lualine = require("lualine")
lualine.setup({
	options = {
		theme = "catppuccin",
	},
})
