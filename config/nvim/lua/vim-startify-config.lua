local g = vim.g

g.startify_session_dir = '/home/theron/.config/nvim/session'

g.startify_lists = {
  {type='bookmarks', header={'   Bookmarks'}},
  {type='files',     header={'   Files'}},
  {type='dir',       header={'   Current Directory'..vim.fn.getcwd()}},
  {type='sessions',  header={'   Sessions'}},
}

g.startify_bookmarks = {
  {i='/home/theron/dotfiles/config/nvim/init.lua'},
  {f='/home/theron/dotfiles/config/fish/aliases.fish'},
  {k='/home/theron/dotfiles/config/kitty/kitty.conf'},
  {w='/home/theron/webapp/app/'},
}

g.startify_session_autoload = 1
g.startify_change_to_vcs_root = 1
g.startify_session_delete_buffers = 1
g.startify_enable_special = 0
g.startify_custom_header = {}

