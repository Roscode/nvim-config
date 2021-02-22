" Die early if this Vim install is built with tiny or small.
" We don't want a Raspberry Pi, for example, running all of these.
if !1 | finish | endif

" Initialise vim-plug
call plug#begin()

" Load plugin list for vim-plug to manage.
execute 'source' Dot('plugins.vim')

" Lock in the plugin list.
call plug#end()

" Load all plugin configuration files.
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  let name = fnamemodify(file, ':t:r')

  if exists('g:plugs["' . name . '"]')
    exec 'source' file
  " else
  "   echom "No plugin found for config file " . file
  endif
endfor

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1

  
endif

