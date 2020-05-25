"General stuff
"
"get used to jj 
"inoremap <esc>   <NOP>
"
""appearance
colorscheme monokai
"colorscheme wal
"hi NonText ctermbg=none 
"hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermfg=252 ctermbg=NONE

set number
"set cursorline
""filetype
set nocompatible
filetype plugin on
filetype indent on
set modelines=5

""syntax
syntax on
set foldmethod=syntax

""set file directory to working direction 
set autochdir

"Leaders
let maplocalleader=","
let mapleader=","

"fzf
nmap <leader>l :Files<CR>

"vim rooter
let g:rooter_patterns = ['Rakefile', '.git/', 'manage.py']


"Indents
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
let g:indentLine_enabled = 0
autocmd FileType html,htmldjango setlocal ts=2 sts=2 sw=2 expandtab 
autocmd FileType html,htmldjango IndentLinesEnable

"Esc alternatives
inoremap jj <ESC>


" always yank to and paste from clipboard
set clipboard=unnamed

"Mappings
""disable cursors
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>

"tabswitch
nmap <Tab> <C-W>

"insert lines without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>



"execute "set <M-j>=\ej"
"nnoremap <M-j> }
"execute "set <M-k>=\ek"
"nnoremap <M-k> {

"execute "set <M-l>=\el"
"nnoremap <M-l> )
"execute "set <M-h>=\eh"
"nnoremap <M-h> (

nmap <c-j> }
nmap <c-k> {
nmap <c-l> )
nmap <c-h> (



nnoremap j gj
nnoremap gj j

nnoremap k gk
nnoremap gk k

"VimDiff Wrap lines
au VimEnter * if &diff | execute 'windo set wrap' | endif
highlight DiffChange cterm=none ctermfg=fg ctermbg=Red gui=none guifg=fg guibg=Red

"Python 
"autocmd FileType python set omnifunc=pythoncomplete#Complete


"PLUGINS
"colorizer
let g:colorizer_fgcontrast = 1 
nmap ,ch <Plug>Colorizer 

"Mail
"mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1
au FileType mail setlocal completeopt=menuone,noselect,noinsert
let g:mucomplete#chains = { 'mail': [ 'user', 'ulti' ] }
autocmd FileType tex,md MUcompleteAutoOff
autocmd BufEnter * if &ft ==# 'markdown' | MUcompleteAutoOff | else | MUcompleteAutoOn | endif
autocmd BufEnter * if &ft ==# 'python' | MUcompleteAutoOff | else | MUcompleteAutoOn | endif


"filetype colorscheme
autocmd FileType mail colorscheme wal
autocmd FileType tex colorscheme wal
let g:netrw_browsex_viewer= "qutebrowser"

"vim-mail
let g:VimMailSpellLangs=['de', 'en', 'sp']

"Spell check
map <leader>se :set spell spelllang=en_us <enter>
map <leader>sd :set spell spelllang=de_de <enter>
"map <leader>ss :set spell spelllang=es_ec <enter>
map <leader>S :set nospell <enter>
map <leader>n ]s
map <leader>N [s

" mutt: insert attachment with ranger
fun! RangerMuttAttach()
    if filereadable('/tmp/chosendir')
        silent !ranger --choosefiles=/tmp/chosenfiles --choosedir=/tmp/chosendir "$(cat /tmp/chosendir)"
    else
        silent !ranger --choosefiles=/tmp/chosenfiles --choosedir=/tmp/chosendir
    endif   
    if filereadable('/tmp/chosenfiles')
        call append('.', map(readfile('/tmp/chosenfiles'), '"Attach: ".substitute(v:val," ",''\\ '',"g")'))
        call system('rm /tmp/chosenfiles')
    endif
    redraw!
endfun
map <C-a> magg/Reply-To<CR><ESC>:call RangerMuttAttach()<CR>`a
imap <C-a> <ESC>magg/Reply-To<CR><ESC>:call RangerMuttAttach()<CR>`aa


"Goyo
map <leader>g :Goyo <enter>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_default_coefficient = 0.4
let g:goyo = 90

"NERDTree
"map <leader>o :NERDTreeToggle <enter>
"let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


let g:tq_thesaurus_com_do_not_prompt_for_install=1
map <leader>t <Plug>ThesaurusQueryReplaceCurrentWord

"nnoremap <leader>t :ThesaurusQueryReplaceCurrentWord<CR>

"NvimR
let R_nvimpager = 'horizontal'
let R_in_buffer = 0
let R_term_cmf = 'gnome-terminal'
"let R_term = 'st'
"let R_term_cmd = 'gnome-terminal -e'
"let R_term = 'termite'
""let R_term_cmd = 'termite -e'


"airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vnotes|help|markdown|rst|org|text|asciidoc|tex|mail'


"vCoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<F8>'

"slime
let g:slime_target = "tmux"
"let g:slime_python_ipython = 1

"latex-suite
let g:Tex_BibtexFlavor = 'biber'
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_MultipleCompileFormats='pdf,dvi'
let g:Tex_ViewRule_pdf='zathura'
"let g:Tex_CompileRule_pdf='xelatex'
imap <leader>C \cite{
imap <leader>c \cite{<F9>
imap kk <C-J>
autocmd FileType tex colorscheme wal

"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
  elseif has("gui_gtk3")
    set guifont=Inconsolata\ 11
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


"html

"Remember folds (for latex)
"augroup remember_folds
  "autocmd!
  "autocmd BufWinLeave * mkview
  "autocmd BufWinEnter * silent! loadview
"augroup END
