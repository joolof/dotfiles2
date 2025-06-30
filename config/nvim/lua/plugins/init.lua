return {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
	"numToStr/FTerm.nvim",
	{ "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	"MunifTanjim/nui.nvim",
	"saadparwaiz1/cmp_luasnip",
	checker = { enabled = true },
}
