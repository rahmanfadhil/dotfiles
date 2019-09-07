call plug#begin("~/.nvim/plugged")

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf'

" Colors
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" Autocompletion
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript', { 'do': './install.sh', 'for': 'typescript' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'deoplete-plugins/deoplete-jedi', { 'for': 'python' }

call plug#end()

" Map comma to leader
let mapleader = ","

" Vim Signify
let g:signify_vcs_list = ['git']

" Vim Airline
let g:airline_theme='onedark'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#disable_refresh = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" FZF
nmap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" Deoplete Jedi
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['\.git$', '\.DS_Store$', 'node_modules']
let g:NERDTreeWinPos = "right"
nmap <C-n> :NERDTreeToggle<CR>
" Close VIM if the only open editor if NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Colorscheme
set termguicolors
colorscheme onedark

" General
set cursorline
set nowrap
set encoding=utf-8
set list
set listchars=extends:…,trail:␣,eol:¬,tab:»·
set noeol
set nofixendofline
set number relativenumber
set noswapfile
set noeb vb t_vb=
set timeoutlen=1000 ttimeoutlen=0
set fileformat=unix

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set conceallevel=0

" Language specific
au BufNewFile,BufRead *.py
    \ setlocal tabstop=4 |
    \ setlocal softtabstop=4 |
    \ setlocal shiftwidth=4
au BufNewFile,BufRead *.php
    \ setlocal tabstop=4 |
    \ setlocal softtabstop=4 |
    \ setlocal shiftwidth=4
au BufNewFile,BufRead *.md
    \ setlocal wrap

" Set clipboard
set clipboard=unnamed

" Navigate split screen
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Enable incremental and highlight search
set hlsearch
set incsearch

" Remove highlight after search
nnoremap <silent> <leader>l :nohl<CR>

" 'jk' as escape in insert mode
inoremap jk <ESC>