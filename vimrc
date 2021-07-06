" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'sunaku/tmux-navigate'
	Plug 'dracula/vim', {'as' : 'dracula'}
	Plug 'vim-scripts/django.vim'
	Plug 'tmhedberg/simpylfold'
	Plug 'scrooloose/nerdtree', {'on' :  'NERDTreeToggle'}
	Plug 'liquidfun/vim-comment-banners'
	Plug 'valloric/youcompleteme', {'commit':'d98f896'}
	" Plug 'rdnetto/ycm-generator'
	Plug 'cometsong/commentframe.vim'
	Plug 'wikitopian/hardmode'
	Plug 'mhinz/vim-startify'
	Plug 'dag/vim-fish'
	Plug 'lervag/vimtex'
	" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	Plug 'raimondi/delimitmate'
	Plug 'easymotion/vim-easymotion'
	Plug 'roosta/srcery'
	Plug 'vim-syntastic/syntastic'
	Plug 'tpope/vim-fugitive'
	Plug 'yggdroot/indentline'
	Plug 'chrisbra/csv.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Plug 'edkolev/tmuxline.vim'
	Plug 'tpope/vim-sensible'
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-surround'
	Plug 'airblade/vim-gitgutter'
	Plug 'godlygeek/tabular'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'xolox/vim-notes'
	Plug 'xolox/vim-misc'
	Plug 'jceb/vim-orgmode'
	Plug 'tpope/vim-speeddating'
	Plug 'mattn/calendar-vim'
	Plug 'preservim/nerdcommenter'
	Plug 'sickill/vim-monokai'
call plug#end()

" Defaults
let g:Powerline_symbols = 'fancy'
set ttymouse=xterm2
set mouse=n
set fdm=syntax
set mouse=a
set encoding=utf-8
set colorcolumn=80
set number
" NERD Tree
autocmd VimEnter * :NERDTreeToggle
noremap <F3> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeWinSize=35
" simply fold
let g:SimpylFold_docstring_preview = 1
" set notermguicolors t_Co=256
" set termguicolors
colorscheme dracula
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:tmuxline_preset = 'powerline'
set hlsearch
set tabstop=4
set shiftwidth=4
filetype indent on
set cursorline
set showcmd
set wildmenu
syntax enable
set ignorecase
" let g:better_whitespace_ctermcolor='red'
" let g:better_whitespace_enabled=1
" let g:strip_whitespace_on_save=1
set linebreak
set conceallevel=0

" Easy Motion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Comment Banner
autocmd VimEnter * CommentBannerMapping g1 :CommentBanner --pattern #,1#,#  --width 80  --comment true
autocmd VimEnter * CommentBannerMapping g2 :CommentBanner --pattern =,1-,=  --width 80  --comment true

" Commenting
let g:NERDCreateDefaultMappings = 1
let g:NERDCompactSexyComs = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" Indent Highlights
let g:indentLine_char = '│'
set list
set lcs=tab:\┆\ ,trail:⎵

" CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Hardmode
let g:HardMode_level = 'wannabe'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Tab control
" nnoremap 1 1gt
" nnoremap 2 2gt
" nnoremap 3 3gt
" nnoremap 4 4gt
" nnoremap 5 5gt
" nnoremap 6 6gt
" nnoremap 7 7gt
" nnoremap 8 8gt
" nnoremap 9 9gt
" nnoremap 0 0gt
" nnoremap ` gt

" Shortcuts
nnoremap <F2> :set number!<CR>:set relativenumber!<CR>
nnoremap <F4> :set wrap!<CR>
nnoremap <F5> :w<CR>
nnoremap <F9> :source ~/.vimrc<CR>

" Tab Numbers
" if has('gui')
"   set guioptions-=e
" endif
" if exists("+showtabline")
"   function MyTabLine()
"     let s = ''
"     let t = tabpagenr()
"     let i = 1
"     while i <= tabpagenr('$')
"       let buflist = tabpagebuflist(i)
"       let winnr = tabpagewinnr(i)
"       let s .= '%' . i . 'T'
"       let s .= (i == t ? '%1*' : '%2*')
"       let s .= ' ['
"       let s .= i . ':'
"       let s .= winnr . '/' . tabpagewinnr(i,'$')
"       let s .= '] %*'
"       let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
"       let bufnr = buflist[winnr - 1]
"       let file = bufname(bufnr)
"       let buftype = getbufvar(bufnr, 'buftype')
"       if buftype == 'nofile'
"         if file =~ '\/.'
"           let file = substitute(file, '.*\/\ze.', '', '')
"         endif
"       else
"         let file = fnamemodify(file, ':p:t')
"       endif
"       if file == ''
"         let file = '[No Name]'
"       endif
"       let s .= file
"       let i = i + 1
"     endwhile
"     let s .= '%T%#TabLineFill#%='
"     let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
"     return s
"   endfunction
"   set stal=2
"   set tabline=%!MyTabLine()
" endif

" Auto Highlight
" autosave delay, cursorhold trigger, default: 4000ms
setl updatetime=100
" highlight the word under cursor (CursorMoved is inperformant)
highlight WordUnderCursor cterm=underline gui=underline
autocmd CursorHold * call HighlightCursorWord()
function! HighlightCursorWord()
	" if hlsearch is active, don't overwrite it!
	let search = getreg('/')
	let cword = expand('<cword>')
	if match(cword, search) == -1
		exe printf('match WordUnderCursor /\V\<%s\>/', escape(cword, '/\'))
	endif
endfunction

" Latex
" let g:vimtex_compiler_method = 'latexmk'

command! -nargs=? -range Dec2hex call s:Dec2hex(<line1>, <line2>, '<args>')
function! s:Dec2hex(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    else
      let cmd = 's/\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No decimal number found'
    endtry
  else
    echo printf('%x', a:arg + 0)
  endif
endfunction

command! -nargs=? -range Hex2dec call s:Hex2dec(<line1>, <line2>, '<args>')
function! s:Hex2dec(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V0x\x\+/\=submatch(0)+0/g'
    else
      let cmd = 's/0x\x\+/\=submatch(0)+0/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No hex number starting "0x" found'
    endtry
  else
    echo (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
  endif
endfunction

