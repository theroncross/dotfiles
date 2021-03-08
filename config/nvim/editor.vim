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
set modelines=0       " Turn off modelines
set signcolumn=yes    " Constant width left column
set colorcolumn=80
set scrolloff=3       " minimum lines to keep above and below cursor
set updatetime=300
set clipboard+=unnamedplus " Add yanked/deleted content to the system clipboard

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
set diffopt+=vertical " Open :Gdiff with vertical split

" ---MISC---
set nocompatible      " Set compatibility to Vim only.
set undofile          " save undo files
set undodir=$HOME/.vim/undo-history
set undolevels=1000
set undoreload=1000
set nobackup          " Some servers have issues with backup files
set nowritebackup
set noswapfile

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Manual Syntaxes / Filetypes
autocmd BufNewFile,BufRead *.hbs setfiletype handlebars
set switchbuf+=usetab,newtab " Open Quickfix links in new tab (or switch to tab if already open)

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data.
" Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let g:coc_node_path = 'node'
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\}

" enable fix-on-save in Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" when running at every change you may want to disable quickfix
" let g:prettier#quickfix_enabled = 0

" enable Rust support
syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1

if executable('rg')
  let g:rg_derive_root='true'
endif
