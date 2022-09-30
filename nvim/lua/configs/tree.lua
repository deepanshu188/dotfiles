local present, nvimtree = pcall(require, "nvim-tree")

if not present then
  return
end

nvimtree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  update_cwd = false,
open_on_setup = false,
  open_on_setup_file = false,
  actions = {
  open_file = {
  resize_window = true,
  },
},
view = {
    adaptive_size = true,
    width = 35,
    side = "left",
    hide_root_folder = true,
    },
update_focused_file = {
  enable = true,
  update_cwd = false,
},
filters = {
  dotfiles = false,
},
git = {
  enable = true,
  ignore = false,
  timeout = 500,
  },
}
)
