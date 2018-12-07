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
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'lokaltog/vim-powerline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

" Defaults
let g:Powerline_symbols = 'fancy'
set relativenumber
set fdm=syntax
colorscheme srcery
set hlsearch
set tabstop=4
filetype indent on
set cursorline
set showcmd
set wildmenu
syntax enable
set ignorecase
let g:better_whitespace_ctermcolor='red'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Indent Highlights
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0

" CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
