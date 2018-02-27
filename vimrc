"General stuff
""appearance
colorscheme monokai
set number
set cursorline
""filetype
set nocompatible
filetype plugin on
filetype indent on
""syntax
syntax on
set foldmethod=syntax
""set file directory to working direction 
set autochdir


"Indents
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


"Leaders
let maplocalleader=","
let mapleader=","


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

map j gj
map k gk

"Python 
autocmd FileType python set omnifunc=pythoncomplete#Complete

"PLUGINS
"mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

au FileType mail setlocal completeopt=menuone,noselect,noinsert
let g:mucomplete#chains = { 'mail': [ 'user', 'ulti' ] }


"airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

"vCoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<F8>'
let g:vcool_ins_hsl_map = '<F9>'

"slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

"latex-suite
let g:Tex_BibtexFlavor = 'biber'
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_MultipleCompileFormats='pdf,dvi'
imap <leader>c \cite{
