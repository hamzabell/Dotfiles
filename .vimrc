set nocompatible
filetype plugin indent on
filetype off
set title
let mapleader = " "
" vundle runtime
set rtp+=~/.vim/bundle/Vundle.vim

" call vundle
"
call vundle#begin()
" add plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'othree/html5.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'takac/vim-fontmanager'
Plugin 'puremourning/vimspector'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pantharshit00/vim-prisma'
Plugin 'github/copilot.vim'
Plugin 'girishji/easyjump.vim'
Plugin 'arzg/vim-colors-xcode'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'mattn/vim-lsp-settings'


call vundle#end()



let g:asyncomplete_auto_popup = 0

filetype plugin indent on

" Core Parmeters
syntax on
set re=0
set rdt=0
set number
set ruler
set rnu
colorscheme xcodedark

"" Airline Theme
let g:airline_theme='bubblegum'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:lsp_document_highlight_enabled = 0
" Autoindent 
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set novisualbell
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set gp=git\ grep\ -n




nnoremap <C-p> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>
nnoremap <space><space> :RG<Cr>

nmap <C-a> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-f> <C-w>l
nmap <C-s> <C-w>s
nmap <C-v> <C-w>v
nmap <space>s :w!<Cr>
nmap ,d :bd!<Cr>
nmap ,q :qa!<Cr>
nmap ,w :wqa!<Cr>
nmap <space>h :nohlsearch<Cr>
nmap H Hzz
nmap L Lzz
nmap <space>m ma
nmap <space>d d'a
nmap <space>y y'a
nmap ,y "+y
nmap ,p "+p
nmap ,ya ,y'a
vmap ,y "+y
vmap ,p "+p


let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
let g:ale_linter_aliases = {'typescriptreact': 'typescript', 'javascriptreact': 'javascript'}

let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint'], 'cpp': ['clangtidy']}

let g:ale_fixers = {'javascript': ['prettier-standard', 'eslint'], 'typescript': ['eslint', 'prettier'], 'typescriptreact':['eslint', 'prettier']}
let g:ale_fix_on_save = 1
let g:lsc_auto_map = v:true


let g:easyjump_case = 'smart'


let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview


" disable mouse wheel
let &t_ti.="\e[?7786l"
let &t_te.="\e[?7786h"
nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

imap <ScrollWheelUp> <nop>
imap <S-ScrollWheelUp> <nop>
imap <C-ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
imap <S-ScrollWheelDown> <nop>
imap <C-ScrollWheelDown> <nop>
imap <ScrollWheelLeft> <nop>
imap <S-ScrollWheelLeft> <nop>
imap <C-ScrollWheelLeft> <nop>
imap <ScrollWheelRight> <nop>
imap <S-ScrollWheelRight> <nop>
imap <C-ScrollWheelRight> <nop>

vmap <ScrollWheelUp> <nop>
vmap <S-ScrollWheelUp> <nop>
vmap <C-ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>
vmap <S-ScrollWheelDown> <nop>
vmap <C-ScrollWheelDown> <nop>
vmap <ScrollWheelLeft> <nop>
vmap <S-ScrollWheelLeft> <nop>
vmap <C-ScrollWheelLeft> <nop>
vmap <ScrollWheelRight> <nop>
vmap <S-ScrollWheelRight> <nop>
vmap <C-ScrollWheelRight> <nop>

set visualbell 
set t_vb=

set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=100

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
let g:list_of_insert_keys = []


" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set mouse=
set ttymouse=
set hidden
