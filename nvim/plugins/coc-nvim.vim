set completeopt=menuone,noinsert
" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ asyncomplete#force_refresh()
nnoremap [coc] <Nop>
nmap ,c [coc]
nmap <silent>[coc]d <Plug>(coc-definition)zz
nmap <silent>[coc]t <Plug>(coc-type-definition)
nmap <silent>[coc]i <Plug>(coc-implementation)
nmap <silent>[coc]r <Plug>(coc-references)

nnoremap <silent>[coc]k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
