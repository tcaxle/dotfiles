" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dag/vim-fish'
Plug 'lervag/vimtex'
Plug 'raimondi/delimitmate'
Plug 'easymotion/vim-easymotion'
Plug 'roosta/srcery'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'lokaltog/vim-powerline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'christoomey/vim-system-copy'
call plug#end()

" Defaults
let g:Powerline_symbols = 'fancy'
set relativenumber
set fdm=syntax
colorscheme srcery
set hlsearch
set tabstop=4
set shiftwidth=4
filetype indent on
set cursorline
set showcmd
set wildmenu
syntax enable
set ignorecase
set pastetoggle=<F3>

" CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
