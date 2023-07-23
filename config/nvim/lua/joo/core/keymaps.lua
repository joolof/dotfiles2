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

-- clear search highlights
keymap.set("n", "<C-/>", ":nohl<CR>", {desc = "Clear search HL"})

-- delete single character without copying into register
keymap.set("n", "x", '"_x', {desc = "Delete w/o copying"})

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", {desc = "Increment"}) -- increment
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement"}) -- decrement

keymap.set("n", "<leader>g", ":ZenMode<CR>", {desc = "Zen mode"})

----------------------
-- Sessions management
----------------------
wk.register({
    s = {
        name = "Sessions", -- optional group name
        c = {':mks! ~/.dotfiles/config/nvim/session/', 'Create'},
        w = {':lua MiniSessions.write()<CR>', 'Save'},
        o = {':lua MiniSessions.select("read")<CR>', 'Open'},
        d = {':lua MiniSessions.select("delete")<CR>', 'Delete'},
    },
}, { prefix = "<leader>" })
keymap.set("n", "<leader>h", ":lua MiniStarter.open()<CR>", {desc = "Home screen"})


----------------------
-- Buffers and all
----------------------
keymap.set("n", "<C-j>", ":bp<CR>", {desc = "Previous buffer"}) -- previous buffer
keymap.set("n", "<C-k>", ":bn<CR>", {desc = "Next buffer"}) -- next buffer
keymap.set("n", "<leader>q", ":bp<cr>:bd #<cr>", {desc = "Close buffer"})
keymap.set("n", "<leader>c", ":ccl<cr>", {desc = "Quickfix close"})

----------------------
-- Language
----------------------
keymap.set("n", "<F6>", ":setlocal spell! spelllang=en_us<CR>")
keymap.set("n", "<F5>", ":setlocal spell! spelllang=fr<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "Nvim-tree"}) -- toggle file explorer

-- todo-comments
keymap.set("n", "<leader>l", ":TodoQuickFix<CR>", {desc = "Todo List"}) -- toggle file explorer

-- fterm
keymap.set("n", "<leader>p", ":!opout %<CR>", {desc = "Open pdf"})
local ytop = fterm:new({
    ft = 'fterm_ytop',
    cmd = "ytop"
})
local lazygit = fterm:new({
    ft = 'fterm_git',
    cmd = "lazygit"
})

-- Window management
wk.register({
    w = {
        name = "Splits", -- optional group name
        v = {':vsplit<CR>', 'Vertical split'},
        h = {':split<CR>', 'Horizontal split'},
        x = {':quit<CR>', 'Close'},
        e = {'<C-w>=', 'Delete'},
        m = {':MaximizerToggle<CR>', 'Maximize'},
    },
}, { prefix = "<leader>" })


-- Terminal applications
wk.register({
    t = {
        name = "terminal", -- optional group name
        r = {":w! | RunFile float<CR>", "Run" },
        g = { function() lazygit:toggle() end, "Lazygit" },
        y = { function() ytop:toggle() end, "Ytop" }
    },
}, { prefix = "<leader>" })

