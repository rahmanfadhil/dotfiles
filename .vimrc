call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug '/usr/local/opt/fzf'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Map space to leader
let mapleader=","

" Vim Signify
let g:signify_vcs_list = ['git']

" Vim Airline
let g:airline_theme='gruvbox'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#disable_refresh = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
set linespace=0


" FZF
nmap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Ale
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'python': ['pylint'] }
let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint'],
  \ 'typescript': ['prettier'],
  \ 'css': ['prettier'],
  \ 'markdown': ['prettier'],
  \ 'html': ['prettier'],
  \ 'json': ['prettier'],
  \ 'python': ['black'] }
let g:ale_python_pylint_options = '--errors-only'
let g:ale_linters_explicit = 1
let g:ale_javascript_eslint_suppress_missing_config = 1
nmap <leader>f :ALEFix<CR>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
nmap <leader>g :YcmCompleter GoTo<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NerdTree
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['\.git$', '\.DS_Store$', 'node_modules']
let g:NERDTreeWinPos = "right"
nmap <C-n> :NERDTreeToggle<CR>
" Close VIM if the only open editor if NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Colorscheme
let g:gruvbox_italic = 1
let g:gruvbox_bold = 0
colorscheme gruvbox

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