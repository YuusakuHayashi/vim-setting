if &compatible
  set nocompatible
endif

set runtimepath+=/home/yuusaku.hayashi/local/.cache/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim' 

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  "call dein#add(s:dein_repo_dir)
  "call dein#add('vim-airline/vim-airline')
  let g:rc_dir    = expand('~/local/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml' 
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml' 
  call dein#load_toml(s:toml, {'lazy':0})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif
"end dein.vim ------------------

"vim-airline ------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#mixed_indent_algo = 1
let g:airline_theme = 'dark'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '≫'
"let g:airline_left_sep = '?'
let g:airline_right_sep = '≪'
"let g:airline_right_sep = '?'
"let g:airline_symbols.crypt = '??'
"let g:airline_symbols.linenr = '?'
"let g:airline_symbols.linenr = '?'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '?'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '?'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'T'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = '?'
"let g:airline_symbols.notexists = '?'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" old vim-powerline symbols
" let g:airline_left_sep = '?'
" let g:airline_left_alt_sep = '?'
"let g:airline_right_sep = '?'
"let g:airline_right_alt_sep = '?'
" let g:airline_symbols.branch = '?'
" let g:airline_symbols.readonly = '?'
" let g:airline_symbols.linenr = '?'
"end vim-airline ---------

"vim-fugitive ------------
nnoremap <Space>gdiff :<C-u>Gdiff<Enter>
nnoremap <Space>gstatus :<C-u>Gdiff<Enter>
nnoremap <Space>glog :<C-u>Gdiff<Enter>
nnoremap <Space>gadd :<C-u>Gwrite<Enter>
nnoremap <Space>gcommit :<C-u>Gcommit<Enter>
"-----------------------
"NERDTree --------------
nnoremap <silent><C-e> :NERDTreeToggle<Enter>
"-----------------------

"other ------------------------------------------
"autoread --------------
set updatetime=300 
set autoread
set confirm 
augroup vimrc-checktime
  autocmd!
  autocmd CursorHold * checktime
augroup END
"-----------------------
set t_Co=256
set encoding=utf-8
set fileformats=unix,dos
set fileencodings=iso-2020-jp,euc-jp,sjis,utff-8
set smarttab
set expandtab
set virtualedit=block
set ignorecase
set smartcase
set incsearch
set nohlsearch
set wrapscan
"set list
"set number
"set listchars=tab:>-, trail:~
set ambiwidth=double
"if has('path_extra')
"    set tags& tags + =.tags, tags
"endif
"set laststatus=2
set showtabline=2
set clipboard=unnamed
set backspace=eol,indent,start
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set foldmethod=marker
"set clipboard+=autoselect
"set modeline=5
"-----------------------
