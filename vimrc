set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins to install
Plugin 'plasticboy/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show line number
set number		

" default terminal background	
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" Enable OS mouse clicking and scrolling
"
" Note for Mac OS X: Requires SIMBL and MouseTerm
"
" http://www.culater.net/software/SIMBL/SIMBL.php
" https://bitheap.org/mouseterm/
" https://github.com/mcandre/dotfiles/blob/master/.vimrc"
if has("mouse")
   set mouse=a
endif

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Enable 256 colors
" set t_Co=256