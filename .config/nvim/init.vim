set clipboard+=unnamedplus
set rtp^=/usr/share/vim/vimfiles/
set mouse=a
vnoremap <LeftRelease> "*ygv

call plug#begin('/home/solopasha/.local/share/nvim/site/pack/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>


let g:airline_powerline_fonts=1
let mapleader = "\<Space>"

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
