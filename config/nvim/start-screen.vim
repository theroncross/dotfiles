let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ ]

let g:startify_bookmarks = [
  \ { 'i': '/home/theron/dotfiles/config/nvim/init.vim' },
  \ { 'f': '/home/theron/dotfiles/config/fish/aliases.fish' },
  \ { 'k': '/home/theron/dotfiles/config/kitty/kitty.conf' },
  \ { 'w': '/home/theron/webapp/app/' },
  \ ]

let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_delete_buffers = 1
let g:startify_enable_special = 0
let g:startify_custom_header = []

