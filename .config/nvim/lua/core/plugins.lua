local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'mrcjkb/rustaceanvim'
	use 'nvim-treesitter/nvim-treesitter'
	use { "catppuccin/nvim", as = "catppuccin" }
	use { "neoclide/coc.nvim", branch = 'release' }
	-- linting and formatting
	use "stevearc/conform.nvim"
	-- completion
	use 'kabouzeid/nvim-lspinstall'
	use "terrortylor/nvim-comment"
	use {
		"ggandor/leap.nvim",
		requires = { { "tpope/vim-repeat" } }
	}
	use {

		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
