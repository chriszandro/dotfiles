" Autoline
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

"Comments
"
set nocompatible

"Important Key Mappings
let mapleader=","
let LocalLeader="\\"


" Specify a directory for plugins 
call plug#begin('~/.vim/plugged') 

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

"Plug 'tbabej/taskwiki' Nice tool, maybe in the future
Plug 'vimwiki/vimwiki' 
"Plug 'dbeniamine/todo.txt-vim'
Plug 'blindFS/vim-taskwarrior'

"Programming
Plug 'scrooloose/syntastic>'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'
"Plug 'davidhalter/jedi-vim' Conflicting with pymode
Plug 'tpope/vim-fugitive'
Plug 'fs111/pydoc.vim'

"Plotting
Plug 'vim-scripts/gnuplot.vim'

"Workflow
Plug 'wakatime/wakatime'
Plug 'itchyny/calendar.vim'

"Look and Feel
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'vimoutliner/vimoutliner'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()


au BufRead,BufNewFile *.plt set filetype=gnuplot

"Testenvironment{
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

    "Directories
    set backup                  " Backups are nice ...
    set autochdir

    if has('persistent_undo')
        set undofile                " So is persistent undo ...
        set undolevels=1000         " Maximum number of changes that can be undone
        set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
    endif

    set ignorecase                  " Case insensitive search

    " set it to the first line when editing a git commit message
    au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

    set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
    scriptencoding utf-8
    set history=1000                    " Store a ton of history (default is 20)

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
nnoremap <leader>eb :vsplit ~/dotfiles/.add.bashrc.sh<cr>
nnoremap <leader>tw :vsplit ~/.taskrc<cr>
"}

"Other files {
nnoremap <leader>g :vsplit ~/kosmos/out_of_mind.otl<cr>
nnoremap <leader>te :vsplit ~/thesis/thesis_outliner.otl<cr>
"}


"Textproduction {
nnoremap <leader>la :GrammarousCheck --lang=de
"}

"Misc {
nnoremap <leader>go :Goyo<cr>
nnoremap <leader>pl :! gnuplot %<cr>
"}

"}

"Plugin Management {

"Thesaurus {
"Built In Thesaurus
set thesaurus=/home/chriz/open.txt

"Thesaurus Plugin
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
let g:pymode_rope_lookup_project=0
let g:pymode_rope_regenerate_on_write = 0
"let g:pymode_rope= 1            
"let g:pymode_doc = 1
"}

"Calendar {
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"}


" Fugitive {
if isdirectory(expand("~/.vim/plugged/vim-fugitive/"))
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
endif
"}

"Airline {
set laststatus=2
set showmode!
"}
"
"
