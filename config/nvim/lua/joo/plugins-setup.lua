-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- Last place
	use("ethanholz/nvim-lastplace")

	-- nvim-notify
	use("rcarriga/nvim-notify")

	-- Colorscheme using pywal
	use({ "catppuccin/nvim", as = "catppuccin" })

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings

	-- zen mode
	use("folke/zen-mode.nvim")

	-- todo-comments
	use("folke/todo-comments.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons
	use("nvim-tree/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- which-key
	use("folke/which-key.nvim")

	-- Code-runner
	use({ "CRAG666/code_runner.nvim", requires = "nvim-lua/plenary.nvim" })

	-- Buffer line
	-- use("willothy/nvim-cokeline")
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- Fterm (for ytop and lazygit and such)
	use("numToStr/FTerm.nvim")

	-- Start page
	use("echasnovski/mini.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- neorg
	-- use({ "nvim-neorg/neorg" })
	-- use({ "nvim-neorg/neorg", commit = "2e12d18" })

	-- Harpoon
	use("ThePrimeagen/harpoon")

	-- zk-nvim
	use("mickael-menu/zk-nvim")

	-- noice
	use("MunifTanjim/nui.nvim")
	use("folke/noice.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion

	-- Dressing
	use({ "stevearc/dressing.nvim" })

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	-- use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	if packer_bootstrap then
		require("packer").sync()
	end
end)
