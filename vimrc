"Fileencoding
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif



"set relativenumber
set number
set cursorline
colorscheme monokai
set nocompatible
syntax enable
filetype plugin on
filetype indent on

syntax on
set foldmethod=syntax


"leaders
let maplocalleader=","
let mapleader=","


"Disable arrow keys
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>

nmap <Tab> <C-W>
"tab switch with tab 
imap <Tab> <C-N> 

"insert lines without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


map j gj
map k gk


"indents
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"set file directory to working direction 
set autochdir

