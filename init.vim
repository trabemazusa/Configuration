" Plugin
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
call plug#end()
" Plugin Setting
 
" Color-theme
colorscheme hybrid
 
set nobackup
set nowritebackup
 
set updatetime=300
 
set signcolumn=no
 
" Panes Remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L> 
nnoremap <C-h> <C-W><C-H>
 
" Tabs Remapping
nnoremap tn :tabnew<return>
nnoremap tl :tabnext<return>
nnoremap th :tabprev<return>
nnoremap tc :tabclose<return>
 
" Basic Parameters
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
