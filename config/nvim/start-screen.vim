let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ ]

let g:startify_bookmarks = [
    \ { 'i': '~/dotfiles/config/nvim/init.vim' },
    \ { 'f': '~/dotfiles/config/aliases.fish' },
    \ { 's': '~/dotfiles/config/sway/config' },
    \ { 'w': '~/webapp/app' },
    \ ]

let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_delete_buffers = 1
let g:startify_enable_special = 0
let g:startify_custom_header = []

