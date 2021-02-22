" set the leader
let mapleader = ","

" clears the search
function! s:clear_search_results()
    let @/ = ""
endfunction

nnoremap <silent> <leader>/d :call <SID>clear_search_results()<CR>

" Deletes the hidden buffers.
function! s:delete_hidden_buffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

nnoremap <silent> <leader>bd :call <SID>delete_hidden_buffers()<CR>

" Corrects the spelling under the cursor with the first suggestion.
function! s:correct_to_first_spelling_suggestion()
  normal 1z=
endfunction

nnoremap <silent> <leader>z :call <SID>correct_to_first_spelling_suggestion()<CR>

" Trim the trailing white space from the file.
function! s:trim_trailing_whitespace()
  %s/\s\+$//e
endfunction

nnoremap <silent> <leader>cw :call <SID>trim_trailing_whitespace()<CR>

" From old
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

set autoread
"" Split
noremap <Leader>sp :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
noremap <leader>x :bd<CR>

noremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv


" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

nmap ; :

noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind %<CR>
noremap <leader>p :FZF<CR>
noremap <leader>P :FZF!<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

noremap <leader>sr :%s//gc<left><left><left>

" loclist stuff
nnoremap <leader>ln :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>
noremap <leader>lc :lclose<cr>
noremap <leader>lo :lopen<cr>

" For when ale annoys me
noremap <leader>at :ALEToggle<cr>

function! AleFixToggle()
  if g:ale_fix_on_save
    let g:ale_fix_on_save = 0
  else
    let g:ale_fix_on_save = 1
  endif
endfunction

noremap <leader>aft :call AleFixToggle()<cr>

" CSS colors
noremap <leader>ch :ColorHighlight<cr>
noremap <leader>cc :ColorClear<cr>

" Sort object keys
noremap <leader>sk [{lv]}k:sort i<cr>

" spelling
noremap <leader>st :set spell!<cr>

vnoremap <leader>css :sort /.\{-}\ze:/ ri<cr>

noremap <leader>ag :Ag<cr>
noremap <leader>rg :Rg<cr>
