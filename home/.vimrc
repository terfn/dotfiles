set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'terryma/vim-expand-region'

call vundle#end()
filetype plugin on

set tabstop=2
set shiftwidth=2
set backspace=2
set nu
set expandtab
set splitright
set splitbelow
set showcmd
set title 
set cursorline
set wrap

au FileType python setl sw=2 sts=2 et
syntax on

colorscheme monokain

let mapleader = "\<Space>"

"File operations
nnoremap <Leader>s :vsplit<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"Selection expand
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

