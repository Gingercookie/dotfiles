" Key Remaps

inoremap jk <ESC>
let mapleader = ","

inoremap <F2> <ESC>
vnoremap <F2> <ESC>
nnoremap <F2> <ESC>

" Basic Settings

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set nospell
" spellcheck turned off by default, gets too annoying to see all the time
"   I also haven't figured out a way to turn off only spellcapcheck 
" set spell spelllang=en_us

" Not sure what "set syntax" does. "syntax on" does what I thought it did
"set syntax
syntax on
set number
set ruler
set wrap
set linebreak
set colorcolumn=78

set showmode
set showcmd
set wildmenu
set wildmode=list:longest

" Visual/Color settings

hi ColorColumn ctermbg=darkgray

" Window/Pane navigation shortcuts

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader shortcuts

nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>f *
nnoremap <leader>t :tabe 
