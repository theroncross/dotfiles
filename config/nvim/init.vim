set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
let g:loaded_matchit = 1

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'hrsh7th/nvim-compe'
  Plug 'neovim/nvim-lspconfig'
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'rust-lang/rust.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'vifm/vifm.vim'
  Plug 'rstacruz/vim-closer'
  Plug 'tomasiser/vim-code-dark'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'andymass/vim-matchup'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'jremmen/vim-ripgrep'
  Plug 'mhinz/vim-startify'
  Plug 'liuchengxu/vim-which-key'
call plug#end()

" so ~/dotfiles/config/nvim/editor.vim
so ~/dotfiles/config/nvim/start-screen.vim
so ~/dotfiles/config/nvim/which-key.vim
:lua require('compe-config')
:lua require('editor')
:lua require('lualine-config')
:lua require('lsp-config')

colorscheme codedark
