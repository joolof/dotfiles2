-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
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
