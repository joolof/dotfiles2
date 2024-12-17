local header_art = [[
 ╭╮╭┬─╮╭─╮┬  ┬┬╭┬╮
 │││├┤ │ │╰┐┌╯││││
 ╯╰╯╰─╯╰─╯ ╰╯ ┴┴ ┴
]]

return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.comment").setup({
			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				-- Toggle comment (like `gcip` - comment inner paragraph) for both
				-- Normal and Visual modes
				comment = "<leader>/",

				-- Toggle comment on current line
				comment_line = "<leader>/",

				-- Toggle comment on visual selection
				comment_visual = "<leader>/",

				-- Define 'comment' textobject (like `dgc` - delete whole comment block)
				textobject = "<leader>/",
			},
			-- Hook functions to be executed at certain stage of commenting
			hooks = {
				-- Before successful commenting. Does nothing by default.
				pre = function() end,
				-- After successful commenting. Does nothing by default.
				post = function() end,
			},
		})
		require("mini.surround").setup({})
		require("mini.sessions").setup({
			autoread = false,
			autowrite = true,
			directory = "~/.config/nvim/session", --<"session" subdir of user data directory from |stdpath()|>,
			file = ".session", -- 'Session.vim',
		})
		require("mini.starter").setup({ query_updaters = "" })
		vim.cmd([[
  augroup MiniStarterJK
    au!
    au User MiniStarterOpened nmap <buffer> j <Cmd>lua MiniStarter.update_current_item('next')<CR>
    au User MiniStarterOpened nmap <buffer> k <Cmd>lua MiniStarter.update_current_item('prev')<CR>
  augroup END
]])

		local starter = require("mini.starter")
		starter.setup({
			-- evaluate_single = true,
			items = {
				starter.sections.sessions(77, true),
				starter.sections.builtin_actions(),
			},
			content_hooks = {
				function(content)
					local blank_content_line = { { type = "empty", string = "" } }
					local section_coords = starter.content_coords(content, "section")
					-- Insert backwards to not affect coordinates
					for i = #section_coords, 1, -1 do
						table.insert(content, section_coords[i].line + 1, blank_content_line)
					end
					return content
				end,
				starter.gen_hook.adding_bullet("» "),
				starter.gen_hook.aligning("center", "center"),
			},
			header = header_art,
			footer = "",
		})
	end,
}
