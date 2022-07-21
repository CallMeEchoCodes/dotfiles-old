local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])
local packer_installed = false
local execute = vim.api.nvim_command

if not packer_exists then
	if vim.fn.input("Download Packer? [y/N]: ") ~= "y" then
		return
	end

	local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	execute("packadd packer.nvim")
	packer_installed = true
	return
end

local packer = require("packer")

packer.init({
	ensure_dependencies = true,
	git = {
		cmd = "git",
		depth = 1,
		clone_timeout = 600,
	},
})

packer.startup(function(use)
	use({ "wbthomason/packer.nvim", opt = true })
	use({ "neoclide/coc.nvim", branch = "release" })
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("nvim-tree").setup({
				view = {
					adaptive_size = true,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end,
	})
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})
	use({ "sheerun/vim-polyglot" })
	use({ "ziglang/zig.vim" })
	use({ "tpope/vim-fugitive" })
	use({ "wakatime/vim-wakatime" })
	use({
		"akinsho/bufferline.nvim",
		tag = "v2.*",
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "NvimTree",
							text_align = "left",
						},
					},
				},
			})
		end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({
		"NvChad/nvterm",
		config = function()
			require("nvterm").setup()
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "mboughaba/i3config.vim" })
	if packer_installed then
		packer.sync()
	end
end)
