-- set leader key to space
-- vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local wk = require("which-key")
local fterm = require("FTerm")
---------------------
-- General Keymaps
---------------------
-- clear search highlights
keymap.set("n", "<C-n>", ":nohl<CR>", { desc = "Clear search HL", silent = true })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "Delete w/o copying" })

-- increment/decrement numbers
keymap.set("n", "<leader>\\", "<C-a>", { desc = "Increment" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement" }) -- decrement

keymap.set("n", "<leader>o", ":ZenMode<CR>", { desc = "Zen mode", silent = true })

----------------------
-- Sessions management
----------------------
wk.add({
	{ "<leader>s", group = "Sessions" },
	{ "<leader>sc", ":mks! ~/.dotfiles/config/nvim/session/", desc = "Create" },
	{ "<leader>sd", ':lua MiniSessions.select("delete")<CR>', desc = "Delete" },
	{ "<leader>so", ':lua MiniSessions.select("read")<CR>', desc = "Open" },
	{ "<leader>sw", ":lua MiniSessions.write()<CR>", desc = "Save" },
})
keymap.set("n", "<leader>k", ":lua MiniStarter.open()<CR>", { desc = "Home screen", silent = true })

----------------------
-- Buffers and all
----------------------
keymap.set("n", "<C-j>", ":bp<CR>", { desc = "Previous buffer", silent = true }) -- previous buffer
keymap.set("n", "<C-k>", ":bn<CR>", { desc = "Next buffer", silent = true }) -- next buffer
keymap.set("n", "<leader>q", ":bp<cr>:bd #<cr>", { desc = "Close buffer", silent = true })
-- keymap.set("n", "<leader>c", ":ccl<cr>", {desc = "Quickfix close"})

----------------------
-- Language
----------------------
keymap.set("n", "<F6>", ":setlocal spell! spelllang=en_us<CR>", { silent = true })
keymap.set("n", "<F5>", ":setlocal spell! spelllang=fr<CR>", { silent = true })

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Nvim-tree", silent = true }) -- toggle file explorer

-- todo-comments
keymap.set("n", "<leader>l", ":TodoTelescope theme=dropdown<CR>", { desc = "Todo List", silent = true }) -- toggle file explorer

-- fterm
keymap.set("n", "<leader>p", ":!opout %<CR>", { desc = "Open pdf", silent = true })
local ytop = fterm:new({
	ft = "fterm_ytop",
	cmd = "bpytop",
	-- cmd = "ytop"
})
local lazygit = fterm:new({
	ft = "fterm_git",
	cmd = "lazygit",
})

-- Window management
wk.add({
	{ "<leader>w", group = "Splits" },
	{ "<leader>we", "<C-w>=", desc = "Delete" },
	{ "<leader>wh", ":split<CR>", desc = "Horizontal split" },
	{ "<leader>wm", ":MaximizerToggle<CR>", desc = "Maximize" },
	{ "<leader>wv", ":vsplit<CR>", desc = "Vertical split" },
	{ "<leader>wx", ":quit<CR>", desc = "Close" },
})

-- Terminal applications
wk.add({
	{ "<leader>t", group = "terminal" },
	{
		"<leader>tg",
		function()
			lazygit:toggle()
		end,
		desc = "Lazygit",
	},
	{ "<leader>tr", ":w! | RunFile float<CR>", desc = "Run" },
	{
		"<leader>ty",
		function()
			ytop:toggle()
		end,
		desc = "Ytop",
	},
})

-- Telescope things
wk.add({
	{ "<leader>f", group = "telescope" },
	{ "<leader>ff", ":Telescope find_files<CR>", desc = "Files" },
	{ "<leader>fw", ":Telescope live_grep<CR>", desc = "Word" },
})

-- zk things
wk.add({
	{ "<leader>z", group = "zk" },
	{ "<leader>zb", ":ZkBacklinks<CR>", desc = "Back Links" },
	{ "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ')}<CR>", desc = "New" },
	{ "<leader>zo", ":ZkNotes<CR>", desc = "Browse" },
	{ "<leader>zs", "<Cmd>ZkNotes { match = {vim.fn.input('Search: ')}}<CR>", desc = "Search" },
	{ "<leader>zt", ":ZkTags<CR>", desc = "Tags" },
})
