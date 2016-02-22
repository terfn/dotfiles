set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'terryma/vim-expand-region'
Plugin 'cwood/vim-django'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin on

set tabstop=2
set shiftwidth=2
set backspace=2
set nu
set expandtab "s/tab/space
set splitright
set splitbelow
set showcmd "Show last command
set title 
set cursorline "Highlight line
set wrap
set ruler "Show col no.
set wildmenu
set lazyredraw "Redraw less
set showmatch 
set incsearch
set hlsearch
set smartindent

syntax on
colorscheme solarized
set bg=dark

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

"Speed up scrolling
noremap <C-e> 4<C-e>
noremap <C-y> 4<C-y>


"Python specific stuff
au FileType python setl sw=4 sts=4 et
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

"Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"Nerd-Tree
map <C-n> :NERDTreeToggle<CR>

