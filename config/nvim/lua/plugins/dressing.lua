return {
	"stevearc/dressing.nvim",
	config = function()
		require("dressing").setup({
			input = {
				-- Set to false to disable the vim.ui.input implementation
				enabled = true,
				-- Default prompt string
				default_prompt = "Input:",
				-- Can be 'left', 'right', or 'center'
				title_pos = "left",
				-- When true, <Esc> will close the modal
				insert_only = true,
				-- When true, input will start in insert mode.
				start_in_insert = true,
				-- These are passed to nvim_open_win
				border = "rounded",
				-- 'editor' and 'win' will default to being centered
				relative = "cursor",
				-- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
				prefer_width = 40,
				width = nil,
				max_width = { 140, 0.9 },
				min_width = { 20, 0.2 },
				buf_options = {},
				win_options = { wrap = false, list = true, listchars = "precedes:…,extends:…", sidescrolloff = 0 },
				mappings = {
					n = { ["<Esc>"] = "Close", ["<CR>"] = "Confirm" },
					i = {
						["<C-c>"] = "Close",
						["<CR>"] = "Confirm",
						["<Up>"] = "HistoryPrev",
						["<Down>"] = "HistoryNext",
					},
				},
				override = function(conf)
					return conf
				end,
				get_config = nil,
			},
			select = {
				enabled = true,
				backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },
				trim_prompt = true,
				telescope = nil,
				fzf = { window = { width = 0.5, height = 0.4 } },
				fzf_lua = {},
				nui = {
					position = "50%",
					size = nil,
					relative = "editor",
					border = { style = "rounded" },
					buf_options = { swapfile = false, filetype = "DressingSelect" },
					win_options = { winblend = 0 },
					max_width = 80,
					max_height = 40,
					min_width = 40,
					min_height = 10,
				},
				builtin = {
					show_numbers = true,
					border = "rounded",
					relative = "editor",
					buf_options = {},
					win_options = { cursorline = true, cursorlineopt = "both" },
					width = nil,
					max_width = { 140, 0.8 },
					min_width = { 40, 0.2 },
					height = nil,
					max_height = 0.9,
					min_height = { 10, 0.2 },
					mappings = { ["<Esc>"] = "Close", ["<C-c>"] = "Close", ["<CR>"] = "Confirm" },
					override = function(conf)
						return conf
					end,
				},
				format_item_override = {},
				get_config = nil,
			},
		})
	end,
}
