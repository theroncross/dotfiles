let mapleader = "\<Space>"

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=300


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \ | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <silent><leader>= :vertical resize +5<CR>
" Single mappings
" let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
" let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
nnoremap <silent><leader>o :only<CR>
let g:which_key_map['o'] = [ ':only'                      , 'only']
nnoremap <silent><leader>p :PrettierAsync<CR>
let g:which_key_map['p'] = [ ':PrettierAsync'             , 'format file']
nnoremap <silent><leader>t :TabVifm<CR>
let g:which_key_map['t'] = [ ':TabVifm'                   , 'search new tab']
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
nnoremap <silent><leader>v :VsplitVifm<CR>
let g:which_key_map['v'] = [ ':VsplitVifm'                 , 'search vsplit']


"*** Coc ***
nmap <leader>ca :CocAction<CR>
nmap <leader>cf :CocFix<CR>
nmap <leader>cr <Plug>(coc-rename)
let g:which_key_map.c = {
  \ 'name' : '+Coc' ,
  \ 'a' : [':<Plug>(coc-codeaction)' , 'codeaction on line'],
  \ 'f' : [':<Plug>(coc-quickfix)'   , 'quickfix on line'],
  \ 'r' : [':<Plug>(coc-rename)'     , 'rename symbol'],
  \ }


"*** git ***
" Merge conflicts:
" 'dv' on file with conflicts in git status list
" <C-w><C-o> to save and close
nnoremap <leader>gg :G<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gn :GitGutterNextHunk<CR>
nnoremap <leader>gp :GitGutterPrevHunk<CR>
nnoremap <leader>gs :GitGutterStageHunk<CR>
let g:which_key_map.g = {
  \ 'name' : '+git' ,
  \ 'g' : [':G'                   , 'git status (dv?)'],
  \ 'h' : [':diffget //2'         , 'use current'],
  \ 'l' : [':diffget //3'         , 'use branch'],
  \ 'n' : [':GitGutterNextHunk'   , 'next hunk'],
  \ 'p' : [':GitGutterPrevHunk'   , 'previous hunk'],
  \ 's' : [':GitGutterStageHunk'  , 'previous hunk'],
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
nnoremap <silent><leader>wq :wincmd q<CR>
let g:which_key_map.w = {
  \ 'name' : '+window' ,
  \ 'h' : [':wincmd h'     , 'left'],
  \ 'j' : [':wincmd j'     , 'down'],
  \ 'k' : [':wincmd k'     , 'up'],
  \ 'l' : [':wincmd l'     , 'right'],
  \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
