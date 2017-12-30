set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rking/ag.vim'
"Plugin 'fugitive.vim'
"Plugin 'junegunn/vim-easy-align'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-vinegar'
Plugin 'bagrat/vim-workspace'
"Plugin 'nelstrom/vim-markdown-folding'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Plugin 'thaerkh/vim-workspace'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Enable syntax color highlighting
syntax on
" Pick a colorscheme
colorscheme ron
" Show current cursor posotion in lower right corner
set ruler

" Use tabs instead of spaces
set noexpandtab

" Wrap lines
set nowrap

set number

" Tabs are 8 spaces
set tabstop=4
set shiftwidth=4

" Mark 80 character line limit for expanded window
"set colorcolumn=80

" Turn off autocomments for C/C++ files
au FileType c,cpp setlocal comments-=:// comments+=f://

au BufRead,BufNewFile *.eng set foldmethod=marker

" Allow backspace to edit everything
set backspace=indent,eol,start

" Set history length explicitly
set history=50

" Highlight the word we're searching for
set hlsearch
" Display match for search pattern as typing it
set incsearch
" Search case insensistive
set ignorecase
" ... unless they contain at least one capital letter
set smartcase
set smartindent

:filetype indent on

set hidden

nmap gt :bn<cr>
nmap gT :bp<cr>
nmap gd :A<cr>
nmap gs :b#<cr>

set tabpagemax=100

set modeline
set nocompatible
filetype plugin on

" Powerline
set rtp+=/usr/share/powerline/bindings/vim/
"set rtp+=/home/dvincelette/powerline/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

if has('gui_running')
	set guifont=Hack\ 10
endif

nmap <F3> o----------------<CR><C-R>=strftime("%Y-%m-%d %H:%M")<CR><CR>----------------<Esc>
let g:vim_markdown_folding_style_pythonic = 1
"let g:markdown_folding = 1
