let g:ale_fixers = {
\   'ruby': ['rubocop'],
\}

let g:ale_list_window_size = 5
let g:ale_open_list = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow
