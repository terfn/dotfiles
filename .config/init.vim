set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/sonokai'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()
filetype plugin on

set tabstop=4
set shiftwidth=4
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
set mouse=n

syntax on


" Sonokai
" Important!!
if has('termguicolors')
  set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai
set bg=dark

let mapleader = "\<Space>"


"Airline
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

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
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

"Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"Nerd-Tree
map <C-n> :NERDTreeToggle<CR>

