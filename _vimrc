if &compatible
  set nocompatible
endif

filetype plugin indent on
syntax enable
set t_Co=256
set fileformats=unix, dos

set smarttab
set expandtab
set virtualedit=block

set ignorecase
set smartcase
set incsearch
set nohlsearch
set wrapscan

set list
"set number
set listchars=tab:>-, trail:~

set ambiwidth=double
if has('path_extra')
    set tags& tags + =.tags, tags
endif
set laststatus=2
set showtabline=2

set clipboard=unnamed

set backspace=eol,indent,start

set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
let g:python_highlight_all = 1


set foldmethod=marker

"set clipboard+=autoselect
set modeline=5
set encoding=utf-8
set fileencoding=iso-2020-jp,euc-jp,sjis,utff-8

"if &term =~ "xterm" || &term =~ "screen" || &term =~ "vt100"
"  " Disable appkeypad
"  let &t_ks = "\e[?1h"
"endif

"autocmd BufRead,BufNewFile *.cls setfiletype vbaclass
" 
" augroup hys-auto-function  " {{{
"   autocmd!
"   autocmd BufRead * call s:hys_vimconf_mkdir(expand('<afile>:p:h') .'\hys-vimconf')
"   function! s:hys_vimconf_mkdir(dir)
"     if !isdirectory(a:dir)
"       call mkdir(a:dir)
"     endif
"     set backupdir=(a:dir) 
"     set directory=(a:dir)
"     set undodir  =(a:dir)
"   endfunction
" augroup END  
" 
"set backupdir=expand('<afile>:p:h').':\hys-vimconf' 
"set directory=expand('<afile>:p:h') .'\hys-vimconf'
"set undodir  =expand('<afile>:p:h') .'\hys-vimconf'

" }}}

"augroup hys-vimconf-auto-mkdir  " {{{
"  autocmd!
"  autocmd BufRead * call s:hys_vimconf_mkdir(expand('<afile>:p:h') .'\hys-vimconf')
"  function! s:hys_vimconf_mkdir(dir)
"    if !isdirectory(a:dir)
"      call mkdir(a:dir)
"    endif
"  endfunction
"augroup END  

"set backupdir=expand('<afile>:p:h').':\hys-vimconf' 
"set directory=expand('<afile>:p:h') .'\hys-vimconf'
"set undodir  =expand('<afile>:p:h') .'\hys-vimconf'

" }}}

"augroup hys-vimconf-backup  " {{{
"  autocmd!
"  autocmd BufWritePre _vimrc call s:hys_vimrc_backup()
"  function! s:hys_vimrc_backup()
"    let outputfile="_vimrc.txt"
"    execute ":write ! " . outputfile
"  endfunction
"augroup END  
"
" }}}

"augroup vimrc-auto-mkdir  " {{{
"  autocmd!
"  autocmd BufRead * call s:auto_mkdir(expand('<afile>:p:h'))
"  function! s:auto_mkdir(dir)
"    if !isdirectory(a:dir)
"      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
"    endif
"  endfunction
"augroup END  " }}}

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state("~/.vim/bundles")
  call dein#begin("~/.vim/bundles")
    call dein#add("~/.vim/bundles/repos/github.com/Shougo/dein.vim")
    
      "add plugins you like
      "call dein#add('plugin_you_like')
      "call dein#add('vim-airline/vim-airline')
      "call dein#add('vim-airline/vim-airline-themes')
      "call dein#add('thinca/vim-quickrun')

    call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
