syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
"set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden
set mouse+=a
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set ve+=onemore
set background=dark


"remap for esc convenience
imap <C-c> <Esc>

"Leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "


"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"" Plugins here
call plug#begin()
Plug 'Valloric/YouCompleteMe'
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Fast saving
nmap <leader>w :w!<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

colorscheme gruvbox

" Vimtex Configuration
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'



