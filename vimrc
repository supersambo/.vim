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



