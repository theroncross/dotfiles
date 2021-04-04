let g:loaded_matchit = 1 " prevent builtin matchit from loading

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dense-analysis/ale'           " autofixing
  Plug 'editorconfig/editorconfig-vim'
  Plug 'hoob3rt/lualine.nvim'         " statusline
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'hrsh7th/nvim-compe'
  Plug 'neovim/nvim-lspconfig'        " language server configuration
  Plug 'kyazdani42/nvim-tree.lua'     " file browser
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  " Plug 'rust-lang/rust.vim'
  Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax highlighting
  Plug 'leafgarland/typescript-vim'    " completions for JS
  Plug 'rstacruz/vim-closer'           " auto-close braces
  Plug 'tomasiser/vim-code-dark'       " colorscheme
  " Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'tpope/vim-fugitive'            " git helpers
  Plug 'airblade/vim-gitgutter'        " signcolumn git marks
  Plug 'andymass/vim-matchup'          " better matching
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  " Plug 'jremmen/vim-ripgrep'
  Plug 'mhinz/vim-startify'            " better start screen
  Plug 'liuchengxu/vim-which-key'      " leader completion help
call plug#end()

so ~/dotfiles/config/nvim/start-screen.vim
so ~/dotfiles/config/nvim/which-key.vim
:lua require('compe-config')
:lua require('editor')
:lua require('ember-language-server')
:lua require('lualine-config')
:lua require('lsp-config')
:lua require('nvim-tree-config')
:lua require('nvim-treesitter-config')
:lua require('telescope-config')

colorscheme codedark
hi Normal       ctermbg=none  guibg=none
hi CursorLineNr               guibg=none
hi EndOfBuffer                guibg=none
hi Folded                     guibg=none
hi LineNr       ctermbg=none  guibg=none
hi SignColumn   ctermbg=none  guibg=none
