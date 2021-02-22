" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'

" tpope awesomeness
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" make gvim colorschemes work in terminal
Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
" Plug 'majutsushi/tagbar' interesting
Plug 'Yggdroot/indentLine'
" Plug 'sheerun/vim-polyglot'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'SirVer/ultisnips'
Plug 'flazz/vim-colorschemes'
Plug 'justinmk/vim-sneak'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mbbill/undotree'

" Completion

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'ervandew/supertab'
" Plug 'steelsojka/deoplete-flow'
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Tern?
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Linting
Plug 'dense-analysis/ale'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'amadeus/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Typescript
Plug 'leafgarland/typescript-vim'

" better css
Plug 'hail2u/vim-css3-syntax'
Plug 'chrisbra/Colorizer'

" handlebars
Plug 'mustache/vim-mustache-handlebars'

" Perl
Plug 'vim-perl/vim-perl'

" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

" php
Plug 'StanAngeloff/php.vim'

" terraform
Plug 'hashivim/vim-terraform'

" Tags
" Plug 'ludovicchabant/vim-gutentags'

" git line links
Plug 'ruanyl/vim-gh-line'
