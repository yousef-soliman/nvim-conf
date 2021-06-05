"vim-javascript
let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END



" ALE
let g:black_linelength = 80
let g:javascript_plugin_jsdoc = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'html': ['htmllint'],
\   'css': ['stylelint'],
\   'vue': ['eslint'],
\   'json': ['jsonlint']
\}
let g:ale_fixers = {
\    'javascript': ['prettier', 'eslint'],
\    'typescript': ['prettier', 'eslint'],
\    'vue': ['eslint', 'prettier'],
\    'scss': ['prettier'],
\    'html': ['prettier'],
\    'xml': ['xmllint'],
\    'json': ['fixjson'],
\    'python': ['black', 'isort']
\}

let g:ale_fix_on_save = 1
let g:ale_python_black_options = "-l 80 -S"
let g:ale_python_auto_pipenv=0
let g:ale_xml_xmllint_indentsize=4
let g:ale_virtualenv_dir_names = ['/home/yousef/.virtualenvs/DEV']
let g:ale_python_flake8_options = '--max-line-length=80'
let g:ale_echo_cursor = 1
let g:ale_cursor_detail = 0
" let g:ale_python_pylint_options = '--load-plugins pylint_django'

nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>


" Deoplete
let g:deoplete#enable_at_startup = 1


" NerdTree
nmap <leader>t :NERDTreeToggle<cr>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" AirLine
let g:airline_theme='sonokai'
let g:airline#extensions#tabline#enabled = 1

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>


"snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

