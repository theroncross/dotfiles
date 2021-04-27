" Map leader to which_key
let mapleader = "\<Space>"
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=300

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> K  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" inoremap <silent><expr> <CR> compe#confirm('<CR>')

nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <silent><leader>= :vertical resize +5<CR>
nnoremap <silent><leader>'[' <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent><leader>']' <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent><leader>a   <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent><leader>e :NvimTreeToggle<CR>
nnoremap <silent><leader>p :PrettierAsync<CR>
let g:which_key_map['['] = [ 'diagnostic.goto_next' , 'next diagnostic']
let g:which_key_map[']'] = [ 'diagnostic.goto_prev' , 'prev diagnostic']
let g:which_key_map['a'] = [ 'code_action' , 'code action']
let g:which_key_map['p'] = [ ':PrettierAsync' , 'format file']
let g:which_key_map['t'] = [ ':TabVifm'       , 'search new tab']
let g:which_key_map['T'] = [ ':Rg'            , 'search text' ]
let g:which_key_map['v'] = [ ':VsplitVifm'    , 'search vsplit']

nnoremap <silent><leader>bd :bd<CR>
nnoremap <silent><leader>bf :bfirst<CR>
nnoremap <silent><leader>bn :bnext<CR>
nnoremap <silent><leader>bl :blast<CR>
nnoremap <silent><leader>bp :bprevious<CR>
let g:which_key_map.b = {
  \ 'name' : '+buffer' ,
  \ 'd' : [':bd'          , 'close'],
  \ 'f' : [':bfirst'      , 'first'],
  \ 'n' : [':bnext'       , 'next'],
  \ 'l' : [':blast'       , 'last'],
  \ 'p' : [':bprevious'   , 'previous'],
  \ }

" Using lua functions
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
let g:which_key_map.f = {
  \ 'name' : '+find' ,
  \ 'b' : ['telescope.buffers'    , 'buffers'],
  \ 'f' : ['telescope.find_files' , 'files'],
  \ 'g' : ['telescope.live_grep'  , 'live grep'],
  \ 'h' : ['telescope.help_tags'  , 'help tags'],
  \ }

"*** git ***
" Merge conflicts:
" 'dv' on file with conflicts in git status list
" <C-w><C-o> to save and close
nnoremap <leader>ga :GitGutterStageHunk<CR>
nnoremap <leader>gg :G<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gn :GitGutterNextHunk<CR>
nnoremap <leader>gp :GitGutterPrevHunk<CR>
nnoremap <leader>gs :GitGutterStageHunk<CR>
nnoremap <leader>gwt <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
nnoremap <leader>gwc <cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>
let g:which_key_map.g = {
  \ 'name' : '+git' ,
  \ 'a' : [':GitGutterStageHunk'    , 'stage hunk'],
  \ 'g' : [':G'                     , 'git status (dv?)'],
  \ 'h' : [':diffget //2'           , 'use current'],
  \ 'l' : [':diffget //3'           , 'use branch'],
  \ 'n' : [':GitGutterNextHunk'     , 'next hunk'],
  \ 'p' : [':GitGutterPrevHunk'     , 'previous hunk'],
  \ 's' : [':GitGutterStageHunk'    , 'previous hunk'],
  \ 'w' : {
    \ 'name' : '+worktrees',
    \ 't' : [':telesecope.git_worktree', 'search worktrees'],
    \ 'c' : [':telesecope.git_worktree', 'create worktree'],
    \ }
  \ }


"*** Search ***
let g:which_key_map.s = {
  \ 'name' : '+search' ,
  \ '/' : [':History/'     , 'history'],
  \ ';' : [':Commands'     , 'commands'],
  \ 'b' : [':BLines'       , 'current buffer'],
  \ 'B' : [':Buffers'      , 'open buffers'],
  \ 'c' : [':Commits'      , 'commits'],
  \ 'C' : [':BCommits'     , 'buffer commits'],
  \ 'f' : [':Files'        , 'files'],
  \ 'g' : [':GFiles'       , 'git files'],
  \ 'G' : [':GFiles?'      , 'modified git files'],
  \ 'h' : [':History'      , 'file history'],
  \ 'H' : [':History:'     , 'command history'],
  \ 'l' : [':Lines'        , 'lines'] ,
  \ 'm' : [':Marks'        , 'marks'] ,
  \ 'M' : [':Maps'         , 'normal maps'] ,
  \ 'p' : [':Helptags'     , 'help tags'] ,
  \ 'P' : [':Tags'         , 'project tags'],
  \ 's' : [':Snippets'     , 'snippets'],
  \ 'S' : [':Colors'       , 'color schemes'],
  \ 't' : [':Rg'           , 'text Rg'],
  \ 'T' : [':BTags'        , 'buffer tags'],
  \ 'w' : [':Windows'      , 'search windows'],
  \ 'y' : [':Filetypes'    , 'file types'],
  \ 'z' : [':FZF'          , 'FZF'],
  \ }


"*** window ***
nnoremap <silent><leader>wh :wincmd h<CR>
nnoremap <silent><leader>wj :wincmd j<CR>
nnoremap <silent><leader>wk :wincmd k<CR>
nnoremap <silent><leader>wl :wincmd l<CR>
nnoremap <silent><leader>wo :only<CR>
nnoremap <silent><leader>wq :wincmd q<CR>
let g:which_key_map.w = {
  \ 'name' : '+window' ,
  \ 'h' : [':wincmd h'     , 'left'],
  \ 'j' : [':wincmd j'     , 'down'],
  \ 'k' : [':wincmd k'     , 'up'],
  \ 'l' : [':wincmd l'     , 'right'],
  \ 'o' : [':only'         , 'only'],
  \ 'q' : [':wincmd q'     , 'close'],
  \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
