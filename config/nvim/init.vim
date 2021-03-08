set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'jremmen/vim-ripgrep'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'rust-lang/rust.vim'
  Plug 'tomasiser/vim-code-dark'
  Plug 'tpope/vim-fugitive'
  Plug 'vifm/vifm.vim'
  Plug 'vim-airline/vim-airline'
call plug#end()

so ~/.config/nvim/coc.vim
so ~/.config/nvim/editor.vim
so ~/dotfiles/config/nvim/keys/which-key.vim
