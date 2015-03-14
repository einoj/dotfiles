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
Plugin 'fabi1cazenave/suckless.vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on    

" AirLine stuff
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" Latex Box stuff
let g:LatexBox_latexmk_optios="-pdf"
let g:LatexBox_output_type="pdf"

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
" Create abbreviation suitable for MapNoContext
function! Iab (ab, full)
  exe "iab <silent> <buffer> ".a:ab." <C-R>=MapNoContext('".
    \ a:ab."', '".escape (a:full.'<C-R>=Eatchar()<CR>', '<>\"').
    \"')<CR>"
endfunction

abbr cjam #include <stdio.h><CR>#include <stdlib.h><CR><CR>int main(int argc, char* argv[]) {<CR>int i,j,k;<CR>scanf("%d", i);<CR><CR>return 0;<CR>}
