" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:

set nocompatible
filetype on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/gnuplot.vim' 
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'lervag/vimtex'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'kevinw/pyflakes-vim'
Bundle 'kien/ctrlp.vim'

#Keys and Mappings
let mapleader=","

filetype plugin indent on
filetype plugin on

"Editor Theme {
set background=dark
colo elflord

"Line Numbering
set rnu
set number
set modeline

"Syntax
hi clear SpellBad
syntax on

}

"Folding {
set foldmethod=indent   "fold based on indent
set foldnestmax=5      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set fdc=4
set foldignore=

" Codebase for 4 space intendation 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set laststatus=2
}

"Mappings {
set backspace=indent,eol,start

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>py :! python %<cr>
nnoremap <leader>gu :! gnuplot %<cr>
xnoremap <leader>c <esc>:'<,'>:w !gnuplot<CR>

"F-Keys
map <F2> :! gnuplot % <CR>
map <F4> :mksession! /home/hpc/mpet/mpet07/mysession <CR>

" Abbreviations {

ab pqf # { <CR> <CR> # } <left><left><left><left><left><left><up><up>
ab lj [ ] 

" }
"} END MAPPINGS

"Plugin Management {

"Vim Latex {
let g:Tex_DefaultTargetFormat='pdf'
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
}

 " CTRLP { 
 let g:ctrlp_cmd = 'CtrlP'
 let g:ctrlp_map = '<c-p>'
 "}

 " Fugitive { 
 "
            nnoremap <silent> <leader>gs :Gstatus<CR>
            nnoremap <silent> <leader>gd :Gdiff<CR>
            nnoremap <silent> <leader>gc :Gcommit<CR>
            nnoremap <silent> <leader>gb :Gblame<CR>
            nnoremap <silent> <leader>gl :Glog<CR>
            nnoremap <silent> <leader>gp :Git push<CR>
            nnoremap <silent> <leader>gr :Gread<CR>
            nnoremap <silent> <leader>gw :Gwrite<CR>
            nnoremap <silent> <leader>ge :Gedit<CR>
            " Mnemonic _i_nteractive
            nnoremap <silent> <leader>gi :Git add -p %<CR>
            nnoremap <silent> <leader>gg :SignifyToggle<CR>
 " } 
 
 " END Plugin Management }
