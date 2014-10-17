set nocompatible
set shell=bash

filetype plugin on
filetype indent on
syntax on

set autoread
set ruler
set number
set cursorline
set smartcase
set hlsearch
set showmatch

" turn off motherfucking annoyances
set noerrorbells
set novisualbell
set completeopt-=preview

" a man needs no backups
set nobackup
set nowb
set noswapfile
set noundofile

" tabs, whitespace & shit
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
autocmd BufWritePre * :%s/\s\+$//e

set ai
set si
set nowrap

" some controls
let mapleader = ","
nnoremap ü <C-]> " jump to tag with ü
nmap <A-Left> :bp<CR>
nmap <A-Right> :bn<CR>

let g:vim_markdown_folding_disabled=1

" load bundles
execute pathogen#infect()
set t_Co=256
set background=dark

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" youcompleteme
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

colorscheme molokai
let macvim_skip_colorscheme=1
