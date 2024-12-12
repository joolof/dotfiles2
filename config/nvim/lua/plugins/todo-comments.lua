return {
	"folke/todo-comments.nvim",
	config = function()
		require("todo-comments").setup({
			dependencies = { "nvim-lua/plenary.nvim" },
			opts = {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
		})
	end,
}
