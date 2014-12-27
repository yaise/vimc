"""""""""""""""""""""""""""""""""""""
"Thank you:
"   Bram Moolenaar for such an awesome editor!
"   Authors of:
"       https://github.com/tpope/vim-pathogen
"       http://nvie.com/posts/how-i-boosted-my-vim/
"       http://vimcasts.org
"       http://learnvimscriptthehardway.stevelosh.com/
"       http://statico.github.io/vim.html
"""""""""""""""""""""""""""""""""""""

"""""First things First"""""
set nocompatible            "be incompatible with vi
let mapleader = "'"         "remap leader key
let maplocalleader = "\\"   "remap local leader key

"""""Initialize Pathogen"""""
call pathogen#helptags()
call pathogen#infect('bundle/{}')
"""""UI settings"""""
set title           "set the xterm window title
set relativenumber  "show line numbers
set ruler           "turn the ruler on at the bottom of the file
set laststatus=2    "always show the status line at the bottom of the window. The 2 is for 'always'
set showcmd         "show the current command 
set wildmenu

"""""Search settings"""""
set hlsearch        "highlight search matches
set ignorecase      "ignore case while searching
set smartcase       "respect case in search terms
set incsearch       "highlight matches while typing for a search term
nnoremap <leader>c :nohlsearch<cr>

"""""Editor settings"""""
filetype indent plugin on                       "detect file types and allow indentations and plugins
set encoding=utf-8
set hidden                                      "hide buffers, not close them
set undolevels=1000                             "max undo stack size
set smartindent
set tabstop=4                                   "tab space of 4
set shiftwidth=4
set expandtab
set listchars=tab:>.,trail:.,extends:#,eol:$    "change whitespace markers
" Toggle whitespace markers
nnoremap <leader>w :set list!<cr>
set omnifunc=syntaxcomplete#Complete            "enable omni completion
set completeopt=longest,menuone                 "completion options. match longest common text and show menu even if there's just one match
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
"""""Color settings""""
if &t_Co >=256
    syntax enable
    colorscheme mustang
endif

"""""Additional Key Mappings"""""
" Use ; instead of having to press Shift to get to :
nnoremap ; :

" Define shortcuts to edit and source vimrc files
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Define shortcuts for next/previous file. 
nnoremap <c-j>  :bnext <cr>
nnoremap <c-k>  :bprev <cr>

inoremap <c-d> <esc>ddi
inoremap jk <esc>

" NerdTree.
nnoremap <leader>t :NERDTreeToggle<cr>

let g:airline#extensions#tabline#enabled=1
