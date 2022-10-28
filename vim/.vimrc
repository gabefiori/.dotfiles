colorscheme desert
highlight Comment ctermfg=green

let mapleader = "  "

syntax enable
set nocompatible

set number
set relativenumber
set ruler

set expandtab
set tabstop=4
set shiftwidth=4

set path+=**
set wildmenu
set hlsearch
set incsearch

set ai
set si
set nowrap

set hidden
set noswapfile
set nobackup

set scrolloff=10
set guicursor=
set visualbell

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
