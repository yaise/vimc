"""""""""""""""""""""""""""""""""""""
"Thank you:
"	Bram Moolenaar for such an awesome editor!
" 	Authors of:
"		https://github.com/tpope/vim-pathogen
"		http://nvie.com/posts/how-i-boosted-my-vim/
"		http://vimcasts.org
"		http://learnvimscriptthehardway.stevelosh.com/
"		http://statico.github.io/vim.html
"""""""""""""""""""""""""""""""""""""
set nocompatible	"be incompatible with vi

let mapleader = "'"			"remap leader key
let maplocalleader = "\\"	"remap local leader key

"-Setup pathogen as the plugin manager.
call pathogen#helptags()
call pathogen#incubate()

"-UI settings
set title			"set the xterm window title
set nu				"show line numbers
set ruler			"turn the ruler on at the bottom of the file
set laststatus=2	"always show the status line at the bottom of the window. The 2 is for 'always'
set showmode		"show the current mode 
set showcmd			"show the current command 

"-Search settings
set hlsearch		"highlight search matches
set ignorecase		"ignore case while searching
set smartcase		"respect case in search terms
set incsearch		"highlight matches while typing for a search term

"-Editor settings
filetype indent plugin on	"detect file types and allow indentations and plugins
set encoding=utf-8
set hidden					"hide buffers, not close them
set undolevels=1000			"max undo stack size
set autoindent
set tabstop=4				"tab space of 4
set list					"highlight whitespaces
set listchars=tab:>.,trail:.,extends:#,eol:$

"-Colors
if &t_Co >=256
	syntax enable
	colorscheme mustang
endif

"-Command history
set history=100
"what does this do ?
"set backspace=indent,eol,start
"set nobackup

"-KEY MAPPINGS
"
"--Normal Mode
"use ; instead of having to press Shift to get to :
nnoremap ; :
"define shortcuts to edit and source vimrc files
nnoremap <leader>c :nohlsearch<cr>
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>ev :vsplit	$MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-j>  :bnext <cr>
nnoremap <c-k>  :bprev <cr>
"--Insert Mode
inoremap <c-d> <esc>ddi
inoremap jk <esc>
