-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local wk = require("which-key")
local fterm = require("FTerm")
---------------------
-- General Keymaps
---------------------

-- Movement
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")
keymap.set("n", "0", "g0")
keymap.set("n", "$", "g$")

-- Movement between windows
keymap.set("n", "<M-h>", ":wincmd h<CR>", { desc = "Move Left", silent = true })
keymap.set("n", "<M-j>", ":wincmd j<CR>", { desc = "Move Down", silent = true })
keymap.set("n", "<M-k>", ":wincmd k<CR>", { desc = "Move Up", silent = true })
keymap.set("n", "<M-l>", ":wincmd l<CR>", { desc = "Move Right", silent = true })

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
wk.register({
	s = {
		name = "Sessions", -- optional group name
		c = { ":mks! ~/.dotfiles/config/nvim/session/", "Create" },
		w = { ":lua MiniSessions.write()<CR>", "Save" },
		o = { ':lua MiniSessions.select("read")<CR>', "Open" },
		d = { ':lua MiniSessions.select("delete")<CR>', "Delete" },
	},
}, { prefix = "<leader>" })
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
wk.register({
	w = {
		name = "Splits", -- optional group name
		v = { ":vsplit<CR>", "Vertical split" },
		h = { ":split<CR>", "Horizontal split" },
		x = { ":quit<CR>", "Close" },
		e = { "<C-w>=", "Delete" },
		m = { ":MaximizerToggle<CR>", "Maximize" },
	},
}, { prefix = "<leader>" })

-- Terminal applications
wk.register({
	t = {
		name = "terminal", -- optional group name
		r = { ":w! | RunFile float<CR>", "Run" },
		g = {
			function()
				lazygit:toggle()
			end,
			"Lazygit",
		},
		y = {
			function()
				ytop:toggle()
			end,
			"Ytop",
		},
	},
}, { prefix = "<leader>" })

-- Telescope things
wk.register({
	f = {
		name = "telescope", -- optional group name
		f = { ":Telescope find_files<CR>", "Files" },
		w = { ":Telescope live_grep<CR>", "Word" },
	},
}, { prefix = "<leader>" })

-- zk things
wk.register({
	z = {
		name = "zk", -- optional group name
		o = { ":ZkNotes<CR>", "Browse" },
		s = { "<Cmd>ZkNotes { match = {vim.fn.input('Search: ')}}<CR>", "Search" },
		n = { "<Cmd>ZkNew { title = vim.fn.input('Title: ')}<CR>", "New" },
		t = { ":ZkTags<CR>", "Tags" },
		b = { ":ZkBacklinks<CR>", "Back Links" },
	},
}, { prefix = "<leader>" })

-- Harpoon
wk.register({
	h = {
		name = "harpoon", -- optional group name
		x = { require("harpoon.mark").add_file, "Add file" },
		m = { ":Telescope harpoon marks theme=dropdown<CR>", "Show marks" },
	},
}, { prefix = "<leader>" })

-- Journal
wk.register({
	j = {
		name = "journal", -- optional group name
		t = { ":Neorg journal today<CR>", "Today" },
		y = { ":Neorg journal yesterday<CR>", "Yesterday" },
		m = { ":Neorg journal tomorrow<CR>", "Tomorrow" },
		j = { ":Neorg workspace personal<CR>", "Journal" },
		w = { ":Neorg workspace work<CR>", "Work workspace" },
		p = { ":Neorg workspace personal<CR>", "Personal workspace" },
		r = { ":Neorg return<CR>", "Return" },
	},
}, { prefix = "<leader>" })
