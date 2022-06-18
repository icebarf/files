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
set directory=~/.vim/swap
set backupdir=~/.vim/backup

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

Plug 'rhysd/vim-clang-format'
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/paredit'

call plug#end()

" Set colorscheme
syntax on

" Custom Keybinds

" Vimrc 
nnoremap <leader>;   :source ~/.vimrc<CR>
nnoremap <leader>w;  :w! <bar> source ~/.vimrc<CR>

" Plug
nnoremap <leader>pi  :PlugInstall<CR>
nnoremap <leader>pu  :PlugUpdate<CR>
nnoremap <leader>pc  :PlugClean<CR>
