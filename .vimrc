" VIM config
" Patrik Laurell
" 2014-07-17
"
" For language specific settings put your language settings
" i ~/.vim/ftplugin/<filetype>.vim. For example python.vim
" or ruby.vim. In these files use setlocal to set local options
" Example of ruby.vim :
"
" setlocal tabstop=2
" setlocal shiftwidth=2
" setlocal autoindent
" setlocal smarttab


set nocompatible "Changes a lot of non VI-compatible options
		 "which are nice to have.

set background=dark "Changes syntaxhighlighting slightly
set hidden "Allow switching between multiple files in same window
set wildmenu "Better command-line completion
set showcmd "Show partial commands in the last line of the screen
set ignorecase 	"Ignore case when searching
set smartcase 	"Ignore case if search pattern is all lowercase,
              	"case-sensitive otherwise
set hlsearch	"Highlight search terms
set incsearch 	"Show search matches as you type

set autoindent	"Enable autoindenting
set copyindent 	"Copy previous indentation on autoindenting
set tabstop=4 	"A tab is four spaces
set shiftwidth=4 "Number of spaces to use for autoindenting
"set smarttab 	"Use shiftwidth for autoindentation instead of tabstop.
		"A shiftwidth worth of blanks are inserted
   		"A backspace deletes a shiftwidths worth of spaces.
set showmatch 	"Highlight matching parenthesis

set ww=<,>,h,l	"Allow arrow keys, h and l command to move cursor across EOL

set nostartofline " Prevent cursor from changing column when jumping between
		  " rows

set ruler "Display cursor position on last line
set number " Display line numbers on the left

set noswapfile 	"Disable the .swp files
set nobackup 	"No backup files

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2


" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Key bind <C-c> to copy to system clipboard
vnoremap <C-c> "+y

" Kay bind <C-x> to cut to system clipboard
vnoremap <C-x> "+d

" Enable ftplugin for filetype specific settings
filetype plugin on
filetype plugin indent on
