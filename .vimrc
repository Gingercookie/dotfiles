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
set mouse=nvi

" Vim-plug plugins
call plug#begin('~/.vim/plugged')

" Utility plugins
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Theme-y plugins
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
call plug#end()

" Plugin specific settings
colorscheme gruvbox
let g:airline_section_z = ''
let g:airline_theme='base16_gruvbox_dark_soft'
let g:EasyMotion_smartcase = 1

" Keybindings
let mapleader = " "
map s <Plug>(easymotion-s)

" Copy, paste, delete keybinds for awesomeness
nnoremap <leader>d "_d
nnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Tcomment maps
nnoremap <leader>/ :TComment<cr>
vnoremap <leader>/ :TComment<cr>

" Telescope maps
nnoremap <leader>gg <cmd>Telescope buffers<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fd <cmd>:Telescope file_browser path=%:p:h<cr>
nnoremap <leader>fa :lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

" Set filetype for Jenkinsfiles
au BufRead,BufNewFile Jenkinsfile setf groovy
