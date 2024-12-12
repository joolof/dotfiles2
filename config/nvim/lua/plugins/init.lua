return {
	"ethanholz/nvim-lastplace",
	"rcarriga/nvim-notify",
	{ "catppuccin/nvim", name = "catppuccin" },
	"nvim-lua/plenary.nvim",
	"tpope/vim-surround",
	"windwp/nvim-autopairs",
	"folke/zen-mode.nvim",
	"folke/todo-comments.nvim",
	"folke/which-key.nvim",
	"nvim-tree/nvim-tree.lua",
	"lewis6991/gitsigns.nvim",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	{ "CRAG666/code_runner.nvim", dependencies = "nvim-lua/plenary.nvim" },
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	"numToStr/FTerm.nvim",
	"echasnovski/mini.nvim",
	{ "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				-- enable syntax highlighting
				highlight = { enable = true, additional_vim_regex_highlighting = false },
				indent = { enable = true, disable = { "python" } },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = { enable = true },
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"typescript",
					"html",
					"css",
					"latex",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"vim",
					"python",
				},
				-- auto install above language parsers
				auto_install = true,
			})
		end,
	},
	"mickael-menu/zk-nvim",
	"alexghergh/nvim-tmux-navigation",
	"lukas-reineke/indent-blankline.nvim",
	"MunifTanjim/nui.nvim",
	"folke/noice.nvim",
	"hrsh7th/nvim-cmp",
	-- "hrsh7th/cmp-buffer",
	-- "hrsh7th/cmp-path",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"stevearc/dressing.nvim",
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	-- "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
	-- "jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"neovim/nvim-lspconfig", -- easily configure language servers
	-- "hrsh7th/cmp-nvim-lsp", -- for autocompletion
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	checker = { enabled = true },
}
