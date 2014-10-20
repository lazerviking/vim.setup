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

" neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" php docblock
map <C-d> :call PhpDoc()

" colors
colorscheme gotham
let macvim_skip_colorscheme=1
