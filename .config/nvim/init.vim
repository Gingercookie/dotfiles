set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

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
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Theme-y plugins
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

source ~/.config/nvim/lua/init.lua

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
nnoremap <leader>fd <cmd>Telescope file_browser path=%:p:h<cr>
nnoremap <leader>fa <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>ft <cmd>Telescope treesitter<cr>
nnoremap <leader>tt <cmd>NERDTree<cr>
nnoremap <leader>gf <cmd>GoFmt<cr>
nnoremap <leader>gi <cmd>GoImports<cr>
nnoremap <C-p> <cmd>Telescope git_files cwd=%:p:h<cr>

" Set filetype for Jenkinsfiles
au BufRead,BufNewFile Jenkinsfile setf groovy

" Set omnifunc for go
au FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc
au BufWritePre FileType go :GoFmt '%:p'
