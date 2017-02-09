set nocompatible
set shell=bash

filetype plugin indent on
syntax on

set autoread
set ruler
set number
set relativenumber
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
set softtabstop=4
set smarttab
set smartindent

autocmd BufWritePre * :%s/\s\+$//e
set colorcolumn=80

set ai
set si
set nowrap
set sidescroll=1

" some controls
let mapleader = ","
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>
noremap <Leader>s :update<CR>

" tags
nnoremap ü <C-]> " jump to tag with ü
set tags=./.git/tags,.git/tags,./tags,tags

let g:vim_markdown_folding_disabled=1

" load bundles
execute pathogen#infect()

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git$\|.eggs\|.egg-info\|.cache\|__pycache__'

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.py[co]$', '^__pycache__$', '\.DS_Store', '\.swp$']

" nerdcommenter
let g:NERDSpaceDelims = 1

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

" vdebug
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options["path_maps"] = {"/var/www/app": "/Users/nagyz/Code/replise"}
let g:vdebug_options["server"] = "10.0.2.2"
let g:vdebug_options["break_open"] = 1
let g:vdebug_options["server"] = ""

" colors
set t_Co=256
set background=dark
colorscheme dracula
let g:airline_theme='dracula'
let macvim_skip_colorscheme=1

au BufNewFile,BufRead *.tag setlocal ft=html
