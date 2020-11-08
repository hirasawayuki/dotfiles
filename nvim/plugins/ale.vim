let g:ale_fixers = {
\   'ruby': ['rubocop'],
\}
let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'

highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow
