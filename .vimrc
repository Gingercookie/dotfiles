set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber 
set nu
set nohlsearch
set hidden
set ignorecase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=4
set sidescrolloff=4
set backspace=indent,eol,start
set wildmode=longest,list,full
set wildmenu

" Vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Plugin specific settings
let g:airline_theme='base16_gruvbox_dark_soft'
let g:EasyMotion_smartcase = 1

" Keybindings
let mapleader = " "
map s <Plug>(easymotion-s)
nnoremap <leader>d "_d
nnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>fp "+p
nnoremap <leader>gg <cmd>Telescope buffers<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fa :lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
