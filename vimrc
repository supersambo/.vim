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

"PLUGINS

"airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

"vCoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<F8>'

"slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

command Play VimGameCodeBreak
