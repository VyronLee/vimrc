set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" load vundles
runtime! vundles/**/*.vundle

filetype plugin indent on
