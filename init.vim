" Plugin
call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()
" Plugin Setting
" NERDTree
noremap ff :NERDTreeToggle<CR>

" Cmake
let g:cmake_export_compile_commands = 1

" Color-theme
colorscheme hybrid

" coc.nvim
let g:coc_global_extensions = [
    \ 'coc-pairs',
    \ 'coc-clangd',
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-pyright',
    \ ]

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set signcolumn=no

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Used for the format on type and improvement of brackets
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

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
