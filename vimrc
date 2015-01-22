" Plugins with Vundle!
set nocompatible		
filetype off			

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on    

" AirLine stuff
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" Moving between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l
map <C-H> <C-W>h

" Tabbing and indenting
set showmatch
set smartindent
set number
set expandtab
set tabstop=2
set shiftwidth=2
set guioptions-=T

" Syntax colors and solaris
syntax on
set background=dark
let g:solarized_termcolors=256

" Misc
set mouse=a
set encoding=utf-8
ab sop System.out.println();
ab psvm public static void main(String[] args) {
map ø :
imap jj <esc>

