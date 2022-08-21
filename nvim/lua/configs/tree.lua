require("nvim-tree").setup({
update_cwd = true,
open_on_setup = true,
open_on_setup_file = true,
actions = {
open_file = {
resize_window = true,
},
},
view = {
side = "left",
},
update_focused_file = {
enable = true,
update_cwd = true,
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
