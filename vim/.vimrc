" Download plug.vim and put it in the autoload directory
" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'Lokaltog/vim-monotone', { 'dir': '~/.vim/colors/vim-monotone' }
Plug 'ap/vim-buftabline'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

colorscheme monotone

set title                           " Show file name in the titlebar
set autoread                        " Automatically load files when changed
set noerrorbells visualbell t_vb=   " Dont beep
set noswapfile                      " Disable swap file
set clipboard=unnamedplus           " See http://vimdoc.sourceforge.net/htmldoc/gui.html#clipboard
set nowrap                          " Disable wrapping long lines automatically
set lazyredraw                      " Render only when we need to

set number relativenumber           " Show relative line number, except for current line
set colorcolumn=81                  " Mark the 80 character column
set showmatch                       " Highlight matching [{()}]
set autoindent                      " Copy indent from last line when starting a new line

set incsearch                       " Highlight dynamically as pattern is typed
set hlsearch                        " Hightlight all search matches
set ignorecase                      " If a pattern contains an uppercase letter, it is case sensitive, otherwise not
set smartcase

set scrolloff=5                     " Minimum lines to keep above and below the cursor
set sidescrolloff=5
set backspace=2                     " Make backspace work like most other programs

set wildmode=list:longest           " See https://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu
set wildignore+=*/tmp/*
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**
set wildignore+=**/build/**
set wildignore+=**/dist/**

set splitbelow                      " More natural split opening
set splitright

set tabstop=2                       " Set tabs as 2 spaces
set shiftwidth=2
set expandtab

" Switch to normal line numbers, when in insert mode
" See https://jeffkreeftmeijer.com/vim-number/#automatic-toggling-between-line-number-modes
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

let mapleader="\<Space>"

" See https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
nnoremap <CR> :nohlsearch<CR><CR>

" Easier split navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" See https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_browsex_viewer = "firefox" " Make sure to open links via gx with firefox

" Workaround for opening URLs with gx
" See https://github.com/vim/vim/issues/4738#issuecomment-521506447
nmap gx yiW:!xdg-open <cWORD><CR> <C-r>" & <CR><CR>

" Ctrlp.vim
let g:ctrlp_map = '<C-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_follow_symlinks = 1

" Buftabline
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
