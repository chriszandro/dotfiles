" Autoline
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

"Comments
"
set nocompatible

"Important Key Mappings
let mapleader=","
"
"Plugin Loading {

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'lucc/vim-tip'
Plug 'vim-scripts/LanguageTool'
Plug 'scrooloose/nerdtree'
Plug 'vim-latex/vim-latex'
Plug 'altercation/vim-colors-solarized'
"Plug 'vim-scripts/phd'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'
Plug 'nanotech/jellybeans.vim'
Plug 'vimoutliner/vimoutliner'
"Plug 'vim-airline/vim-airlinec'
Plug 'itchyny/calendar.vim'
"Plug 'vim-scripts/vim-auto-save'
Plug 'rhysd/vim-grammarous'
Plug 'davidhalter/jedi-vim'
" Initialize plugin system
call plug#end()

"}

filetype plugin indent on
syntax enable

"Look and Feel{

"General {
set background=dark
colorscheme jellybeans
"set term=xterm
"set t_Co=256

set backspace=indent,eol,start
set wildmenu
set tw=79
"}

"Gui Options {
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=DejaVu\ Sans\ Mono\ 15
"}
"

"}

"Auto Writing Buffers
autocmd TextChanged, TextChangedI <buffer> silent write
set autowriteall

"Mappings {

"RC Files            {
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>eb :vsplit $HOME/.bashrc<cr>
"}

"Other files {
nnoremap <leader>g :vsplit $HOME/kosmos/out_of_mind.otl<cr>
"}

"Textproduction {
nnoremap <leader>spe : set spell | set spelllang=de
"}

"Misc {
nnoremap <leader>go :Goyo<cr>
nnoremap <leader>py :! python %<cr>
nnoremap <leader>gu :! gnuplot %<cr>
"}

"}

"Plugin Management {

"Thesaurus {
set thesaurus=/home/chriz/open.txt
"}

"Vim Latex {
let g:Tex_DefaultTargetFormat='pdf'
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:latex_enabled=1

"For vim-latex. Remapping the mathbf macro
"imap  <C-i> <Plug>Tex_MathBF

iabbrev ket \ket{}<Left><Left>
iabbrev bra \bra{}<Left><Left>
"}

"LimeLight {
"This is the ANSI code for a dark grey color for the text out of focus
let g:limelight_conceal_ctermfg='236'
"}

"Jedi {
let g:jedi#rename_command = ''
let g:jedi#documentation_command =''
"}

"Pymode {
let g:pymode_run_bind = '<leader>f'
let g:pymode_rope=1
let g:pymode_doc = 1
"}

"Calendar {
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"}



