let g:python_host_prog  = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'
let g:usefile=['go', 'php', 'ruby', 'javascript', 'typescript', 'json', 'html', 'css', 'vim', 'javascript.jsx', 'typescript.tsx']
let $PLUGINS='~/.config/nvim/plugins'
source $PLUGINS/ale.vim
source $PLUGINS/coc-nvim.vim
source $PLUGINS/fzf.vim
source $PLUGINS/lightline.vim
source $PLUGINS/nerdtree.vim
source $PLUGINS/vim-fugitive.vim
source $PLUGINS/vim-gitgutter.vim
source $PLUGINS/vim-indent-guides.vim

call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter', { 'for': usefile }
  Plug 'bronson/vim-trailing-whitespace', { 'for': usefile }
  Plug 'cohama/lexima.vim', { 'for': usefile }
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'maximbaz/lightline-ale', { 'for': usefile }
  Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx', 'typescript.tsx'] }
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTree' }
  Plug 'tpope/vim-commentary', { 'for': usefile }
  Plug 'tpope/vim-endwise', { 'for': usefile }
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround', { 'for': usefile }
  Plug 'tpope/vim-rhubarb', { 'for': usefile }
  Plug 'w0rp/ale', { 'for': usefile }
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

hi clear CursorLine
hi CursorLineNr gui=bold guifg=blue
hi PmenuThumb guibg=#bfc2bc
hi PmenuSbar guibg=#fbfbf8
hi PmenuSel guibg=#5cabdc
hi Pmenu guibg=#fbfbf8
hi VertSplit gui=NONE

nnoremap <ESC><ESC> :<C-u>nohl<CR>
nnoremap <silent>j gj
nnoremap <silent>k gk
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
"
filetype plugin indent on
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.coffee set filetype=javascript
