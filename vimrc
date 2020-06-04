" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Manual Syntaxes / Filetypes
autocmd BufNewFile,BufRead *.hbs setfiletype handlebars

" Turn off modelines
set modelines=0

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set noswapfile

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let mapleader = " "

nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <leader>ps :Rg<space>
nnoremap <silent><leader>= :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <silent><leader>t :TabVifm<CR>
nnoremap <silent><leader>v :VsplitVifm<CR>
nnoremap <silent><C-p> :GFiles<CR>

" git status - 's' to stage, 'u' to unstage
nnoremap <leader>gs :G<CR>
" Merge conflicts:
" 'dv' on file with conflicts in git status list
" <C-w><C-o> to save and close
" use current (left)
nnoremap <leader>gf :diffget //2<CR>
" use branch (right)
nnoremap <leader>gj :diffget //3<CR>

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'vifm/vifm.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'tomasiser/vim-code-dark'
  Plug 'jremmen/vim-ripgrep'
call plug#end()

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\}

if executable('rg')
  let g:rg_derive_root='true'
endif

" Load other config files
so ~/.config/nvim/coc.vim
so ~/.config/nvim/editor.vim
