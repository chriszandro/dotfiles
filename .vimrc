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
set backspace=indent,eol, start

syntax on

"coloring
set background=dark
colo elflord

filetype plugin indent on
filetype plugin on

let g:Tex_DefaultTargetFormat='pdf'

" The rest of your config follows here
"
map <F2> :! gnuplot % <CR>
"map <F3> :! ls<CR>
map <F4> :mksession! /home/hpc/mpet/mpet07/mysession <CR>

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
" set shellslash
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"Code Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=5      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set fdc=4
set foldignore=
set number

" Codebase for 4 space intendation 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set laststatus=2


"My Special Mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>py :! python %<cr>
nnoremap <leader>gu :! gnuplot %<cr>

xnoremap <leader>c <esc>:'<,'>:w !gnuplot<CR>
"Line Numbering
set rnu
set modeline

hi clear SpellBad

" Abbreviations
ab pqf # { <CR> <CR> # } <left><left><left><left><left><left><up><up>
ab lj [ ] 


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
