" ------------------------
" plugins
" -----------------------
execute pathogen#infect()

" ------------------------
" general Config
" ------------------------

" show filename in the window titlebar
set title

" automatically load files when a file changed
set autoread

" dont beep
set noerrorbells visualbell t_vb=

" disable swp files
set noswapfile

" enable the system clipboard
" see http://vimdoc.sourceforge.net/htmldoc/gui.html#clipboard
set clipboard=unnamedplus

" enable modelines
" see http://vimdoc.sourceforge.net/htmldoc/options.html#modeline
set modeline

" ------------------------
" visuals
" -----------------------

colorscheme monotone

" make all lines show their relative number, except for current line
set number relativenumber

" add visual reference at 80 char mark
set colorcolumn=80

" show the executing command
set showcmd

" highlight matching [{()}]
set showmatch

" redraw only when we need to
set lazyredraw

" dont wrap long lines
set nowrap

" switch to normal line numbers, when in insert mode
" see https://jeffkreeftmeijer.com/vim-number/#automatic-toggling-between-line-number-modes
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

" ------------------------
" searching
" ------------------------

" highlight dynamically as pattern is typed
set incsearch

" highlight all search matches
set hlsearch

" if a pattern contains an uppercase letter, it is case sensitive, otherwise not
set ignorecase
set smartcase

" remove search hightlight, when pressing enter after searching
" see https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
nnoremap <CR> :nohlsearch<CR><CR>

" ------------------------
" scrolling
" ------------------------

" start scrolling 3 lines before horiz/vert border of window
set scrolloff=3
set sidescrolloff=3

" ------------------------
" wildmenu
" ------------------------
" see https://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu

" expand wildmenu
set wildmode=list:longest

" use <Left> or <Righ> to navigate through the compoetion lists
set wildmenu

" ------------------------
" split windows
" ------------------------

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split opening
set splitbelow
set splitright

" ------------------------
" coding style
" ------------------------

" copy indent from last line when starting a new line
set autoindent

" set tabs as 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" ------------------------
" mappings
" ------------------------

" change the leader key to space
let mapleader="\<Space>"

" ------------------------
" filetype specifics
" ------------------------

" no autocompletion for these pattern
set wildignore=.svn,.git

" ------------------------
" netrw
" ------------------------
" see https://shapeshed.com/vim-netrw/

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

