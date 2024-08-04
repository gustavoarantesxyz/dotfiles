"vim plug
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
call plug#end()

" Nerdtree options

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeFileLines = 1

"airline options

let g:airline#extensions#tabline#enabled = 1

" Indention Options
set autoindent
set expandtab
filetype on
filetype indent on
filetype plugin on
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Performance Options
set complete-=i
set lazyredraw

" Text Rendering Options
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=1
set sidescrolloff=5
syntax enable
set wrap

" User Interface Options
set laststatus=2
set ruler
set wildmenu
set tabpagemax=50
set background=dark
colorscheme gruvbox
set termguicolors
set cursorline
set number
set noerrorbells
set mouse=a
set title

" Code Folding Options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Miscellaneous Options
set autoread
set backspace=indent,eol,start
set confirm
set formatoptions+=j
set hidden
set history=1000
set nomodeline
set noswapfile
set nrformats-=octal
set shell=/bin/zsh
set wildignore+=.pyc,.swp

"Keybinds
imap jj <Esc>

nnoremap <C-w> :q <CR>

"open terminal
nnoremap <C-`> :tabnew +term<CR>i

" Nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
