set nocompatible
filetype off
if has("unix")
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else 
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
endif
Bundle 'gmarik/vundle'
Bundle 'plasticboy/vim-markdown'
Bundle 'AutoComplPop'
filetype on

