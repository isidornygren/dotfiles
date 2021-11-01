" set nocompatible
" filetype off

" Visual settings
syntax enable
set background=dark
set wildmenu
set hidden

set number
set numberwidth=4
set ruler

" Treat long lines as break lines
map j gj
map k gk

" Indentation
set autoindent
set cindent
set smartindent

" Tab options
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Encoding
set encoding=utf-8
set termencoding=utf-8

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

set ignorecase
set smartcase

" Always show the status line
set laststatus=2

" Always copy and paste from system clipboard
set clipboard=unnamed

" Plugins
call plug#begin('~/.vim/autoload/plugged')

Plug 'airblade/vim-gitgutter'

Plug 'pangloss/vim-javascript'    " JavaScript support

Plug 'herringtondarkholme/yats.vim' " Typescript highlighing

Plug 'w0rp/ale'                   " Linting

Plug 'preservim/nerdtree'

Plug 'ap/vim-css-color'

call plug#end()
filetype plugin indent on    " required

" Plugin specific config
set updatetime=10 
set signcolumn=yes
" let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_map_keys = 0
autocmd ColorScheme * highlight! link SignColumn LineNr
highlight clear SignColumn 

" Start nerdtree when opening a folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Style nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Switch to nerdtree
nnoremap <C-b> :NERDTreeToggle<Enter>
nnoremap <C-n> :NERDTreeFocus<Enter>


" Ale
let g:ale_fixers = {
\  'javascript': ['eslint']
\ }
