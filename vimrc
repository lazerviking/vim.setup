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
nmap <A-Left> :bp<CR>
nmap <A-Right> :bn<CR>

" tags
nnoremap ü <C-]> " jump to tag with ü
set tags=./tags,tags,./.git/tags

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

" vdebug
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options["path_maps"] = {"/var/www/app": "/Users/nagyz/Code/replise"}
let g:vdebug_options["server"] = "10.0.2.2"
let g:vdebug_options["break_open"] = 1
let g:vdebug_options["server"] = ""

" colors
colorscheme gotham
let macvim_skip_colorscheme=1
