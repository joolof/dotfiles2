require("nvim-tmux-navigation").setup({
	vim.keymap.set("n", "<M-h>", ":NvimTmuxNavigateLeft<CR>", { silent = true }),
	vim.keymap.set("n", "<M-j>", ":NvimTmuxNavigateDown<CR>", { silent = true }),
	vim.keymap.set("n", "<M-k>", ":NvimTmuxNavigateUp<CR>", { silent = true }),
	vim.keymap.set("n", "<M-l>", ":NvimTmuxNavigateRight<CR>", { silent = true }),
	disable_when_zoomed = true, -- defaults to false
})
