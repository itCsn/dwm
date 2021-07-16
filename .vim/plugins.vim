call plug#begin('~/.vim/plugged')

"Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'drewtempelmeyer/palenight.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'sheerun/vim-polyglot'

""" c++
"Plug 'jackguo380/vim-lsp-cxx-highlight'
"Plug 'vim-syntastic/syntastic'
"Plug 'rhysd/vim-clang-format'

Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc

"bufferline
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

"vs icons
Plug 'onsails/lspkind-nvim'

"Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Neerd tree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
"""""" Neerd tree icons
Plug 'ryanoasis/vim-devicons'
""""""syntax highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"utils
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

"ligthline
 Plug 'itchyny/lightline.vim'

"Rainbow brackets
Plug 'frazrepo/vim-rainbow'

" Easily surround chunks of text
Plug 'tpope/vim-surround'

"Enable Rainbow Parentheses Improved
Plug 'lukas-reineke/indent-blankline.nvim'

" Syntax checking
"Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'


"Autocomplete for c++
Plug 'deoplete-plugins/deoplete-clang'

call plug#end()

