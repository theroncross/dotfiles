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

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf'
  Plug 'leafgarland/typescript-vim'
  Plug 'vifm/vifm.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'joukevandermaas/vim-ember-hbs'
  Plug 'tomasiser/vim-code-dark'
call plug#end()

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\}

" Load other config files
so ~/.config/nvim/coc.vim
so ~/.config/nvim/editor.vim
