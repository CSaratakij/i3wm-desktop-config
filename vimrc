set nocompatible
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set statusline=%t
set relativenumber
set number
set autoindent
set hlsearch
highlight Search ctermbg=yellow ctermfg=black
filetype plugin indent on
syntax on
call plug#begin('~/.vim/plugged')
Plug 'quabug/molokai'
Plug 'triglav/vim-visual-increment'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'quabug/vim-gdscript', { 'for': 'gdscript' }
call plug#end()
"colorscheme delek
colorscheme molokai
