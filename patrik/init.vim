call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'benekastah/neomake' " consider trying out syntastic instead
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'raimondi/delimitmate'

" Colorschemes and syntax highlighting
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'kien/rainbow_parentheses.vim'

" Languages
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'digitaltoad/vim-pug'

" Frameworks
Plug 'posva/vim-vue'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""
" Set space as leader
let mapleader = "\<Space>"

" Enable line numbering
set number

" Buffer is hidden instead of closed when new buffer is opened
set hidden

" Set indentation without hard tabs 
set expandtab
set shiftwidth=2
set softtabstop=2

" Dont redraw when executing macros
set lazyredraw

" Start scrolling when 8 lines from margin
set scrolloff=8

" Open splits to the right and bottom instead of left and top
set splitright
set splitbelow


" Auto resize Vim splits to active split. For some reason winheight
" needs to be there twice to avoid E36 on startup.
set winwidth=80
set winheight=5
set winminwidth=40
set winminheight=5
set winheight=30

""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorschems and syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <C-Space> to <Esc> in insert and visual mode.
imap <NUL> <Esc>
vmap <NUL> <Esc>

" Map <C-Space> to save file in normal mode.
nmap <NUL> :w<CR>

" Handel wrapped lines as line breaks when navigating
map j gj
map k gk

" H and L end of and beggining of line iin normal mode
nnoremap H ^
nnoremap L $

" J and K move more 5 lines at a time.
nnoremap J 5j
nnoremap K 5k

" <space-,> redraws the screen and removes any search highlighting.
nnoremap <silent> <leader>, :nohl<CR>

" <Leader>w for saving
nnoremap <Leader>fs :w<CR>

" Copy, paste and cut to system clipboard using <Leader>y, p and d
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Set ctrl-d to delete in insert mode
inoremap <C-d> <delete>

" Navigate splits using Ctrl-h,j,k,l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pluggin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""
" ~~~~~~~ vim-airline ~~~~~~~
" Enable top status line for vim airline
let g:airline#extensions#tabline#enabled = 1

" ~~~~~~~ vim-expand-region ~~~~~~~
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ~~~~~~~ NERDTree ~~~~~~~
" Toggle NERDTree using <C-n>
map <C-n> :NERDTreeToggle<CR>
" Use <space> to open folder or file
let NERDTreeMapActivateNode='<space>'

" ~~~~~~~ CtrlP ~~~~~~~
" Enable different search modes. Including line which searches
" through files. Press <c-p> the <c-f> to cycle through modes.
" http://superuser.com/questions/390011/fuzzy-find-within-file-in-vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

