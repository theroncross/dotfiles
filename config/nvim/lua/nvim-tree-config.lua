vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
  ["l"]          = tree_cb("edit"),
  ["h"]          = tree_cb("close_node"),
}
