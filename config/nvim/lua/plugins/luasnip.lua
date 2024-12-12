return {
	"L3MON4D3/LuaSnip",
	config = function()
		local ls = require("luasnip")
		local types = require("luasnip.util.types")

		-- configure luasnip
		ls.config.set_config({
			history = true, -- keep around last snippet local to jump back
			updateevents = "TextChanged,TextChangedI",
			enable_autosnippets = true,
			ext_opts = {
				[types.choiceNode] = {
					active = {
						virt_text = { { "<-", "Error" } },
					},
				},
			},
		})

		require("luasnip.loaders.from_lua").load({ paths = "~/.dotfiles/config/nvim/snippets/" })

		---------------------
		-- Keybindings
		---------------------
		-- The other keybindings are defined in ~/.dotfiles/config/nvim/lua/joo/plugins/nvim-cmp.lua
		---------------------
		vim.keymap.set({ "i", "s" }, "<C-Tab>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

		vim.keymap.set("n", "<C-s>", "<cmd>source ~/.dotfiles/config/nvim/lua/joo/plugins/luasnip.lua<CR>")
	end,
}
