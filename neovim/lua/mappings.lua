local toggle_modes = { "n", "t" }
vim.g.mapleader = " "

local mappings = {
	{
		toggle_modes,
		"<A-h>",
		function()
			require("nvterm.terminal").toggle("horizontal")
		end,
	},
	{ "n", "<leader>t", ":NvimTreeToggle<CR>" },
}
local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
