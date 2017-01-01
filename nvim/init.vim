set nocompatible
set t_Co=256
set shiftwidth=4
set tabstop=4
set statusline=%t
set relativenumber
set number
set autoindent
set hlsearch
set showcmd
highlight Search ctermbg=yellow ctermfg=black
filetype plugin indent on
syntax on
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let mapleader = ","
let maplocalleader = ","
call plug#begin('~/.config/nvim/plugged')
Plug 'triglav/vim-visual-increment'
Plug 'valloric/youcompleteme'
Plug 'quabug/molokai'
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'quabug/vim-gdscript', { 'for': 'gdscript' }
Plug 'jceb/vim-orgmode', { 'for': 'org' }
Plug 'tpope/vim-speeddating', { 'for': 'org' }
Plug 'vim-scripts/utl.vim', { 'for': 'org' }
Plug 'mattn/calendar-vim', { 'for': 'org' }
call plug#end()
colorscheme molokai
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
