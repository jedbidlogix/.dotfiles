syntax on
set noswapfile


" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.nvim/plugged')

" Declare the list of plugins.
Plug 'morhetz/gruvbox'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox


