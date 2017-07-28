set nocompatible              " disable vi compatibility mode
filetype off                  " required to vundle plugin

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General plugins 
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ap/vim-buftabline'
Plugin 'editorconfig/editorconfig-vim'

" Colorschemes
Plugin 'altercation/solarized'

call vundle#end()

filetype plugin indent on    " required to vundle plugin

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" GENERAL EDITOR CONFIG
" Set up solarized theme colors
syntax on
set background=dark
colorscheme solarized

" Set up vim-airline and theme
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" UI Settings
set number								" show line numbers
set nowrap								" don't wrap long lines
set showmatch							" higlight matching parentheses and brackets
set cursorline						" highlight line where the cursor is

set noshowmode						" always show which more are we in
set laststatus=2					" always show statusbar
set wildmenu							" enable visual wildmenu

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Set up shortcuts to buffers
set hidden
map <C-N>  :bnext<CR>
map <C-P>  :bprev<CR>
imap <C-N> <Esc>:bnext<CR>a
imap <C-P> <Esc>:nprev<CR>a

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Relative numbering is pretty useful for motions (3g, 5k...). However I'd
" prefer to have a way for switching relative numbers with a single map.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Set up indenting
set shiftwidth=2
set tabstop=2
set autoindent
