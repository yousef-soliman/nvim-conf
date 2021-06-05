" Set Numbers
set number

" Highlight text
syntax enable

filetype plugin indent on

" Set default tab width and behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab
set smartindent

" Enable folding
set foldmethod=indent
set foldlevel=99

" Set default text width in screen then take a new line
set textwidth=80

" Scroll through terminal lines faster
set ttyfast

" Automatically re-read the file if it's changed outside VIM
set autoread

" more-like listing per page
set more

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Make Search ignore case-sensitive and smart
set ignorecase
set smartcase

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2
set laststatus=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal! g`\"" |
\ endif
" Remember info about open buffers on close
set viminfo^=%

set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*node_modules*
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*.pyc,*.pyo

" Detect JSON
au BufRead,BufNewFile *.json setf json


" Remap <leader> key
let mapleader = ","

" Quick Tab Moviing
map <Leader>n   <esc>:tabprevious<CR>
map <Leader>m   <esc>:tabnext<CR>
map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>

" Enable mouse in VIM
set mouse=a

" Enable Clipboard
" you should use +clipboard or +xterm_clipboard enabled VIM (GVIM for example).
set clipboard=unnamedplus


" Undo History
set history=700
set undolevels=700


" Undo works after restarting vim
if exists("+undofile")
    " undofile - This allows you to use undos after exiting and restarting
    " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
    " :help undo-persistence
    " This is only present in 7.3+
    if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif

    set undodir=./.vim-undo//
    set undodir+=~/.vim/undo//
    set undofile
endif

" nvim
let g:python3_host_prog = "/home/yousef/.virtualenvs/DEV/bin/python"
let g:loaded_python_provider = 0

" color
