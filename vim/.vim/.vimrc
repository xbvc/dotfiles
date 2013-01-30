"------------------------------------------------------
"   file:      .vimrc
"   author:    Alexander Barnickel
"   modified:  
"------------------------------------------------------

" PLUGINS ---------------------------------------------

call pathogen#infect()

" GENERAL ---------------------------------------------

set histroy=700       "lines of history to remember
filetype plugin on    "enable filetype plugins
filetype indent on    "enable filetype indent
set autoread          "autoread, when file is changed
set encoding=utf8     "utf-8 encoding
set mouse=a           " Enable mouse usage (all modes)


" SYNTAX, AUTOINDENT, ETC. ----------------------------

syntax on             "enable syntax
set number            "enable line numbers
set autoindent        "enable autoindent
set si                "enable smart indent
set wrap              "wrap lines
set showmatch         "show matching brackets

set smarttab          "smart when using tabs
set shiftwidth=2      "1 tab = 2 spaces
set tabstop=2         "1 tab = 2 spaces
set expandtab         "spaces instead of tabs


" SEARCH ----------------------------------------------

set ignorecase        "ignore case when searching
set smartcase         "smart about searches
set hlsearch          "highlight search result
set incsearch         "incremental search


" COLORS & FONTS --------------------------------------

colorscheme tomorrow-night


