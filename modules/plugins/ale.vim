let g:ale_fixers = {
      \	'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint'],
      \ 'python': ['black'],
\}

let g:ale_python_black_options = '-l 100'

let g:ale_linters_ignore = {
                  \ 'javascript': ['tsserver', 'jshint'],
                  \ 'javascript.jsx': ['tsserver', 'jshint'],
                  \}

let g:ale_fix_on_save = 1
let g:ale_history_log_output = 1

let g:ale_pattern_options = {
\   '.*\.thtml$': {'ale_enabled': 0},
\   '.*\.php$': {'ale_enabled': 0},
\}


" key mappings
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
