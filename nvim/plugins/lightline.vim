let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok', 'readonly', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'ale': 'ALEGetStatusLine'
      \ },
      \ }
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
" let g:lightline#ale#indicator_checking = "\uf110"
" let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "⚠ "
let g:lightline#ale#indicator_errors = "⨉ "
let g:lightline#ale#indicator_ok = "OK"
