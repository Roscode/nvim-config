" Enable invisible characters.
set listchars=space:·,tab:>-
set list

" More natural splitting.
" set splitbelow
" set splitright

" Disable swap files.
set noswapfile

" Write files as they are, don't mess with line endings etc.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary


" Disable the completion preview window.
set completeopt-=preview

" Make session files minimal.
" set sessionoptions=blank,curdir,folds,help,tabpages,winsize

" Performance

" Stops macros rendering every step.
set lazyredraw

" Highlighting
" Highlight searches.
set hlsearch

" Highlight the current line.
set cursorline

" other stuff
set hidden
set fileformats=unix,dos,mac
syntax on
set ruler
set number
set mousemodel=popup
set t_Co=256
let no_buffers_menu=1
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif





function! s:after_colorscheme()
  " Make spelling problems easier to read.
  highlight clear SpellBad
  highlight clear SpellCap
  highlight clear SpellLocal
  highlight clear SpellRare

  highlight SpellBad cterm=underline
  highlight SpellCap cterm=underline
  highlight SpellLocal cterm=underline
  highlight SpellRare cterm=underline

  " Stop the cross hair ruining highlighting.
  highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE
  highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=3a3a3a guifg=NONE

  " Make conceal look better.
  highlight Conceal cterm=bold ctermbg=NONE ctermfg=67
endfunction

augroup after_colorscheme
  autocmd!
  autocmd ColorScheme * call s:after_colorscheme()
augroup END

" Make search case insensitive, but become sensitive if an upper case
" character is used.
set ignorecase
set smartcase

" Enable spell checking and a custom dictionary.
set spelllang=en_us
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
" set spell

" Enable persistent undo.
set undofile
set undodir=~/.config/nvim/undo
set undolevels=1000
set undoreload=10000

" highlight trailing spaces red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


" Other
set mouse=a
set whichwrap+=<,>,h,l,[,]

" Set a default indent, but vim-sleuth should adjust it.
set tabstop=2
set shiftwidth=0
set expandtab

filetype on
filetype plugin on
filetype indent on

autocmd FileType make set noexpandtab tabstop=8 shiftwidth=8 softtabstop=0

" s/find/replace/ previews
set inccommand=split
