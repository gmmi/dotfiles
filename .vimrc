call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'
Plug 'jcherven/jummidark.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

set number
set nocompatible
filetype plugin indent on
syntax on
colorscheme jummidark
set encoding=utf-8
set tabstop=2


au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

let g:ycm_autoclose_preview_window_after_completion=1
