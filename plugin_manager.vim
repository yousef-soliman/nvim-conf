
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/yousef/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/yousef/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/yousef/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"basic
call dein#add('preservim/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('edkolev/tmuxline.vim')
call dein#add('jmcantrell/vim-virtualenv')

" linting
call dein#add('dense-analysis/ale')

" Auto complete
call dein#add('Shougo/deoplete.nvim')
call dein#add('deoplete-plugins/deoplete-jedi')

" javascript
call dein#add('pangloss/vim-javascript')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
