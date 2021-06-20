let g:python_host_prog  = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'
let g:usefile=['go', 'php', 'ruby', 'python', 'javascript', 'typescript', 'json', 'html', 'css', 'vim', 'javascript.jsx', 'typescript.tsx', 'slim']
let $PLUGINS='~/.config/nvim/plugins'
source $PLUGINS/ale.vim
source $PLUGINS/coc-nvim.vim
source $PLUGINS/fzf.vim
source $PLUGINS/lightline.vim
source $PLUGINS/nerdtree.vim
source $PLUGINS/vim-fugitive.vim
source $PLUGINS/vim-gitgutter.vim
source $PLUGINS/vim-indent-guides.vim

call plug#begin('~/.config/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'cohama/lexima.vim'
  Plug 'fatih/vim-go', { 'for': ['go'] }
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'maximbaz/lightline-ale'
  Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx', 'typescript.tsx'] }
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'sebdah/vim-delve', { 'for': ['go'] }
  Plug 'slim-template/vim-slim'
  Plug 'thinca/vim-localrc'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-rhubarb'
  Plug 'w0rp/ale'
call plug#end()

set clipboard=unnamed
set cmdheight=2
set cursorline
set hidden
set nobackup
set nowritebackup
set number
set shortmess+=c
set signcolumn=yes
set termguicolors
set ttimeoutlen=10
set updatetime=300
set list
set listchars=tab:..,extends:<
set ignorecase

hi clear CursorLine
hi CursorLineNr gui=bold guifg=blue
hi PmenuThumb guibg=#bfc2bc
hi PmenuSbar guibg=#fbfbf8
hi PmenuSel guibg=#5cabdc
hi Pmenu guibg=#fbfbf8
hi VertSplit gui=NONE

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap o zzo
nnoremap g; g;zz
nnoremap G Gzz
nnoremap { {zz
nnoremap } }zz
nnoremap % %zz
nnoremap <ESC><ESC> :<C-u>nohl<CR>
nnoremap <silent>j gjzz
nnoremap <silent>k gkzz
nnoremap <silent>s <Nop>
nnoremap <silent>sj <C-w>j
nnoremap <silent>sk <C-w>k
nnoremap <silent>sl <C-w>l
nnoremap <silent>sh <C-w>h
nnoremap <silent>sJ <C-w>-
nnoremap <silent>sK <C-w>+
nnoremap <silent>sL <C-w>>
nnoremap <silent>sH <C-w><
nnoremap <silent>st :<C-u>tabnew<CR>
nnoremap <silent>sn gt
nnoremap <silent>sp gT
nnoremap <silent>sr <C-w>r
nnoremap <silent>sR <C-w>R
nnoremap <silent>sx <C-w>x
nnoremap <silent>sw <C-w>l
nnoremap <silent>ss :<C-u>sp<CR><C-w>jzz
nnoremap <silent>sv :<C-u>vs<CR><C-w>lzz
nnoremap <silent>sq :<C-u>q<CR>
tnoremap <C-q> <C-\><C-n>

" vim を開いたら tmux のステータスラインを非表示にする
" if !has('gui_running') && $TMUX !=# ''
"     augroup Tmux
"         autocmd!
"         autocmd VimEnter,VimLeave * silent !tmux set status
"     augroup END
" endif

" 全角スペース
function! ZenkakuSpace()
  hi ZenkakuSpace ctermbg=darkred guibg=darkred
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif

syntax on
filetype plugin indent on
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.coffee set filetype=javascript
autocmd BufNewFile,BufRead *.scss set filetype=scss
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd FileType scss setl iskeyword+=@-@
