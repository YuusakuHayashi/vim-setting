"折り畳み設定
set foldmethod=marker
"ヴィジュアルモードで選択したテキストが自動的にクリップボードに入る
set clipboard+=autoselect

if &compatible
  set nocompatible
endif

"let g:airline_powerline_fonts=1

"add your directory of dein.vim in runtimepath
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

"below, fixed phrase
if dein#load_state("~/.vim/bundles")
  call dein#begin("~/.vim/bundles")
    call dein#add("~/.vim/bundles/repos/github.com/Shougo/dein.vim")
    
      "add plugins you like
      "call dein#add('plugin_you_like')
      call dein#add('vim-airline/vim-airline')
      call dein#add('vim-airline/vim-airline-themes')
      call dein#add('thinca/vim-quickrun')

    call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
