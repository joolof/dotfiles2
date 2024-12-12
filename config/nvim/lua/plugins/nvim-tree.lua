return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			-- change folder arrow icons
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "→", -- arrow when folder is closed
							arrow_open = "↓", -- arrow when folder is open
						},
					},
				},
			},
			--[[ sync_root_with_cwd = true,
  reload_on_bufenter = true,
  respect_buf_cwd = true,  ]]
			--[[ update_focused_file = {
    enable = true,
    update_cwd = true,
    update_root = true,
  }, ]]
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			git = {
				ignore = false,
			},
			filters = {
				dotfiles = true,
				custom = {},
			},
		})
	end,
}
