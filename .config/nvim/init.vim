set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
source ~/.config/nvim/lua/init.lua
