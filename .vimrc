" Autoline
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

"Comments
"
set nocompatible

"Important Key Mappings
let mapleader=","
"
" On-demand loading
Plug 'lucc/vim-tip'

"Textproduktion
Plug 'vim-latex/vim-latex'
Plug 'vim-scripts/LanguageTool'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rhysd/vim-grammarous'
Plug 'subosito/vim-translator'
Plug 'Ron89/thesaurus_query.vim'

"Programming
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'

"Workflow

Plug 'wakatime/wakatime'

"Look and Feel
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'vimoutliner/vimoutliner'
Plug 'itchyny/calendar.vim'

"Outsourced
"Plug 'vim-airline/vim-airlinec'


" Initialize plugin system
call plug#end()

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
"Built In Thesaurus
set thesaurus=/home/chriz/open.txt
nnoremap <leader>te :ThesaurusQueryLookupCurrentWord<cr>
let g:tq_enabled_backends=["woxikon_de", "thesaurus_com","openoffice_en","mthesaur_txt"]
let g:tq_language=['en', 'de'] 
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



