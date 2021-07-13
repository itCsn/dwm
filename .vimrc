"Some base
set guicursor=a:
set number
set ruler
set mouse=a
syntax enable
set clipboard=unnamedplus
set relativenumber
set laststatus=2
set cursorline
set encoding=utf-8
set sw=2
set numberwidth=2
set showcmd
set wildmode=longest,list,full
set splitbelow splitright
set softtabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set noshowmode
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set matchpairs+=<:>
set smartcase

call plug#begin('~/.vim/plugged')

"Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'drewtempelmeyer/palenight.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
""" c++
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'

"bufferline
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/nvim-bufferline.lua'

"Fzf like 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"vs icons
Plug 'onsails/lspkind-nvim'

"Themes
Plug 'morhetz/gruvbox'

" Neerd tree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
"""""" Neerd tree icons
Plug 'ryanoasis/vim-devicons'
""""""syntax highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
""""""keymaps
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"ligthline
 Plug 'itchyny/lightline.vim'

"Rainbow brackets
Plug 'frazrepo/vim-rainbow'

" Easily surround chunks of text
Plug 'tpope/vim-surround'

"Enable Rainbow Parentheses Improved
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'Yggdroot/indentLine'

" Syntax checking
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-fugitive'

" Easily surround chunks of text
Plug 'tpope/vim-surround'

"Autocomplete for c++
Plug 'deoplete-plugins/deoplete-clang'

call plug#end()

let mapleader =" "

" Themes gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set bg=dark

" Syntax Neerd Tree
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:indent_blankline_char = '|'

"Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Open a terminal
""" Bottom
nnoremap <leader>tb :split term://zsh 
"""right
nnoremap <leader>tr :vsplit term://zsh  

"Enable Rainbow Parentheses Improved
let g:rainbow_active = 1

"Shortcutting 
map <C-p> :w <CR> :! python

"Undo tree
nnoremap <leader>gt :GundoToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"C++
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'"
nnoremap <Leader>cf :<C-u>ClangFormat<CR>
nnoremap <C-x> :!./%:r.out
autocmd TermOpen term://* startinsert

"Aditional Remap
"map <leader>gcc :w <CR> :!g++ % -o %< 
nnoremap <leader>gcc :!g++ -o  %:r % -std=c++11<Enter>
map <leader>tn :tabnew 

autocmd FileType python call AutoCmd_python()

fun! AutoCmd_python()
        "setlocal other options for python, then:
    nnoremap <buffer> <leader>p :w <CR> :exec '!python' shellescape(@%, 1)<cr>

endf
augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
    augroup END

autocmd FileType cpp set keywordprg=cppman
