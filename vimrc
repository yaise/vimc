set nocompatible	"be incompatible with vi

"UI settings
set title		"set the xterm window title
set nu			"show line numbers
set ruler		"turn the ruler on at the bottom of the file
set laststatus=2	"always show the status line at the bottom of the window. The 2 is for 'always'
set showmode		"show the current mode 
set showcmd			"show the current command 

"Search settings
set hlsearch		"highlight search matches
set ignorecase		"ignore case while searching
set smartcase		"respect case in search terms
set incsearch		"highlight matches while typing for a search term

"Text formatting settings
filetype indent plugin on	"detect file types and allow indentations and plugins

"Tabs and indentation settings
set autoindent
set tabstop=4

"command history
set history=100
