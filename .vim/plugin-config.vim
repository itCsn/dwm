" Syntax Neerd Tree
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:indent_blankline_char = '|'


"kite
let g:kite_supported_languages = ['*']
let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'
let g:kite_documentation_continual=1
let g:kite_log=1
autocmd CompleteDone * if !pumvisible() | pclose | endif
let g:python_highlight_space_errors = 0

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['fileencoding', 'filetype', 'percent', 'lineinfo'] ,['fileformat'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

"Enable Rainbow Parentheses Improved
let g:rainbow_active = 1

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/config/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
