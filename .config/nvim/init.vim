set clipboard+=unnamedplus
set rtp^=/usr/share/vim/vimfiles/


call plug#begin('~/.local/share/nvim/site/pack/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



let g:airline_powerline_fonts=1

syntax on
set termguicolors
let g:airline_theme='ayu_dark'
let ayucolor="dark"
colorscheme ayu


set number
set cursorline
set wildmenu
set showmatch


set incsearch
set hlsearch
set ignorecase
set smartcase