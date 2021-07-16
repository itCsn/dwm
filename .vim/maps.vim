let mapleader =" "

"Undo tree
nnoremap <leader>ut :UndotreeToggle<CR>

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

" coc
nmap <silent> cd <Plug>(coc-definition)
nmap <silent> ct <Plug>(coc-type-definition)
nmap <silent> ci <Plug>(coc-implementation)
nmap <silent> cr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

"NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Aditional Remap
map <leader>gcc :silent <CR> :w <CR> :!g++ % -o %< 
"nnoremap <leader>gcc :silent! <CR> :!g++ -o  %:r % -std=c++11<Enter>
map <leader>tn :tabnew 
nnoremap <Leader>cf :<C-u>ClangFormat<CR>
autocmd TermOpen term://* startinsert

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Shortcutting 
map <C-p> :w <CR> :! python
map <leader>tn :tabnew 

"Undo tree
nnoremap <leader>ut :UndotreeToggle<CR>

"Git -> fugitive
map <leader> gh :diffget //3<CR>
map <leader> gu :diffget //2<CR>
map <leader> gs :G<CR>


" Kite
nmap <silent> <buffer> gK <Plug>(kite-docs)
