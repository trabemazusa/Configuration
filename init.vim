" plugin
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
call plug#end()
 
" colortheme
colorscheme hybrid
 
set nobackup
set nowritebackup
 
set updatetime=300
 
set signcolumn=no
 
" panes remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L> 
nnoremap <C-h> <C-W><C-H>
 
" tabs remapping
nnoremap tn :tabnew<return>
nnoremap tl :tabnext<return>
nnoremap th :tabprev<return>
nnoremap tc :tabclose<return>
 
" basic setting
set nowrap
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set laststatus=1
set ruler
set nohlsearch
set guicursor=i:block
