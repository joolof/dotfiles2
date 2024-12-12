return {
	"nvim-lua/plenary.nvim",
	"tpope/vim-surround",
	"folke/which-key.nvim",
	"nvim-tree/nvim-web-devicons",
	"numToStr/FTerm.nvim",
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
	"MunifTanjim/nui.nvim",
	"saadparwaiz1/cmp_luasnip",
	checker = { enabled = true },
}
