nnoremap [fzf] <Nop>
nmap ,f [fzf]
nnoremap <silent>[fzf]a :<C-u>Ag<CR>
nnoremap <silent>[fzf]b :<C-u>Buffers<CR>
nnoremap <silent>[fzf]f :<C-u>Files<CR>
nnoremap <silent>[fzf]g :<C-u>GFiles<CR>
nnoremap <silent>[fzf]h :<C-u>History<CR>
nnoremap <silent>q: :<C-u>History:<CR>
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
