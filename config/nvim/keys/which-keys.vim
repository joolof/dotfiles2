" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '-'
set timeoutlen=400

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

let g:which_key_map['/'] = [':Commentary', '(un)comment']
let g:which_key_map['h'] = [':Startify', 'Home screen']
let g:which_key_map['p'] = [':!opout %', 'Open pdf']
let g:which_key_map['g'] = [':Goyo', 'Zen']
let g:which_key_map['q'] = [':bp<cr> bd#', 'Close buffer']

" t is for floaterm
" \ 'l' : [':w | FloatermNew latexmk -pdf %', 'Latex'],
" \ 'o' : [':FloatermNew vifm', 'Vifm'],
let g:which_key_map.t = {
      \ 'name' : 'terminal' ,
      \ 't' : [':FloatermToggle', 'Toggle'],
      \ 'o' : [':Vifm', 'Vifm'],
      \ 'p' : [':w | FloatermNew python3 %', 'Python'],
      \ 'i' : [':FloatermNew ipython', 'IPython'],
      \ 'l' : [':w | FloatermNew latexmk -pdf %', 'Latex'],
      \ 'g' : [':FloatermNew lazygit', 'Lazygit'],
      \ 'y' : [':FloatermNew ytop', 'ytop'],
      \ }

" s is for sessions
let g:which_key_map.s = {
      \ 'name' : 'session' ,
      \ 's' : [':SSave', 'Save'],
      \ 'c' : [':SClose', 'Close'],
      \ 'd' : [':SDelete', 'Delete'],
      \ }

" w is for vimWiki
let g:which_key_map.w = {
      \ 'name' : 'vimWiki' ,
      \ 'w' : ['vimWikiIndex'    , 'Index'],
      \ 'l' : ['vimWikiToggleList'    , 'Toggle Item'],
      \ 's' : ['vimWikiUISelect'    , 'UISelect'],
      \ 'i' : ['vimWikiDiaryIndex'    , 'Diary'],
      \ 't' : ['vimWikiTabIndex'    , 'Tab Index'],
      \ }


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
