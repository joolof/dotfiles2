local keymap = vim.keymap -- for conciseness
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
