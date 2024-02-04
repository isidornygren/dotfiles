filetype plugin indent on    " required

let g:rustfmt_autosave = 1
set nocompatible
set relativenumber
set number
set t_Co=256
set autoindent
set noet ci pi sts=0 sw=3 ts=3
set hlsearch
set incsearch
set smartcase
set linebreak
set wrap
set laststatus=2
set ruler
set wildmenu
syntax on 
set tabstop=3
set softtabstop=3
set expandtab
set showcmd
set cursorline
filetype plugin indent on
set lazyredraw
set showmatch
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

set laststatus=2
set statusline=%f

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

