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
set number
set fdm=syntax
" set notermguicolors t_Co=256
" set termguicolors
" colorscheme srcery
colorscheme default
let g:airline_theme='base16'
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

" Tab control
nnoremap 1 1gt
nnoremap 2 2gt
nnoremap 3 3gt
nnoremap 4 4gt
nnoremap 5 5gt
nnoremap 6 6gt
nnoremap 7 7gt
nnoremap 8 8gt
nnoremap 9 9gt
nnoremap 0 0gt
nnoremap ` gt

" Shortcuts
nnoremap <F2> :set number!<CR>:set relativenumber!<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :set wrap!<CR>
nnoremap <F5> :w<CR>
nnoremap <F9> :source ~/.vimrc<CR>

" Tab Numbers
if has('gui')
  set guioptions-=e
endif
if exists("+showtabline")
  function MyTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      let s .= (i == t ? '%1*' : '%2*')
      let s .= ' ['
      let s .= i . ':'
      let s .= winnr . '/' . tabpagewinnr(i,'$')
      let s .= '] %*'
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif
      if file == ''
        let file = '[No Name]'
      endif
      let s .= file
      let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%='
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    return s
  endfunction
  set stal=2
  set tabline=%!MyTabLine()
endif
