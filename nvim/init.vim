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
call plug#begin('~/.config/nvim/plugged')
Plug 'digitaltoad/vim-pug'
Plug 'valloric/youcompleteme'
Plug 'quabug/molokai'
Plug 'quabug/vim-gdscript'
Plug 'triglav/vim-visual-increment'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()
colorscheme molokai
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
