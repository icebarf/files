set exrc
noremap <Space> <Nop>
map <Space> <leader>

" Line number stuff
set relativenumber
set nu

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Search and bells
set nohlsearch
set hidden
set noerrorbells

" Case and indetation
set ignorecase
set smartcase
set smartindent

set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8

set encoding=utf-8

set cmdheight=2
set updatetime=300
set shortmess+=c
set colorcolumn=80 " The bar is at 80 Columns Width
set signcolumn=yes

" Vim Plugins
call plug#begin('~/.vim/plugged')

" Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rhysd/vim-clang-format'

call plug#end()

" Set colorscheme
syntax on

" colorscheme nord
" colorscheme onedark

" Use with one dark colorscheme
" highlight Normal ctermbg=black

" let g:lightline = {
"            \ 'colorscheme' : 'onedark'
"            \ }


" NERDTree Stuff
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


" Custom Keybinds

" Vimrc 
nnoremap <leader>;   :source ~/.vimrc<CR>
nnoremap <leader>w;  :w! <bar> source ~/.vimrc<CR>

" Git
nnoremap <leader>ga  :Git add 
nnoremap <leader>gc  :Git commit -m ""<Left>
nnoremap <leader>gps :Git push origin main<CR>
nnoremap <leader>gpl :Git pull<CR>
nnoremap <leader>gst :Git stash<CR>

" Plug
nnoremap <leader>pi  :PlugInstall<CR>
nnoremap <leader>pu  :PlugUpdate<CR>
nnoremap <leader>pc  :PlugClean<CR>

" Coc
nnoremap <leader>cup :CocUpdate<CR>
