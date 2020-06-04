" ---EDITOR---
syntax on             " Turn on syntax highlighting.
colorscheme codedark
set termguicolors
set encoding=utf-8
set guifont=Cascadia\ Code
set incsearch         " Enable incremental search
set ignorecase        " case-insensitive on lowercase search
set smartcase         " case-sensitive on uppercase search term
set number            " show line numbers
set relativenumber
set wrap              " wrap long lines
set linebreak         " breaks lines on words
set matchpairs+=<:>   " highlight bracket pairs
set list              " Display different types of white spaces.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set tabstop=2
set shiftwidth=2
set expandtab
set signcolumn=yes    " Constant width left column
set colorcolumn=80

" ---STATUSLINE---
set laststatus=2      " Always display status line
set showmode
set statusline=%F%m%r%h%w\ [POS=%l/%L,%v][%p%%]\ [b:%n]
let g:airline_theme = 'codedark'

" ---COMMAND---
set cmdheight=2       " Give more space for displaying messages.
set showcmd           " Show active command on bottom line

" ---WINDOWS---
set splitbelow        " Add split window below
set splitright        " Add vsplit window to right
