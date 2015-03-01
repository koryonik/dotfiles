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

" in most terminal emulators this works fine
set mouse=a                     

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Enable 256 colors
" set t_Co=256