syntax on

set tabstop=2
set shiftwidth=2
set backspace=2
set nu
set expandtab
set nocompatible
set splitright
set splitbelow

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

