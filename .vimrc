set nocompatible
set encoding=utf-8
set mouse-=a
set hlsearch
syntax on

set autoindent
set backspace=eol,start,indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch

set path+=**
set wildmenu

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set number relativenumber
set cursorline
set cursorlineopt=number
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi CursorLineNr term=bold cterm=NONE ctermfg=Red ctermbg=NONE gui=NONE guifg=DarkRed guibg=NONE
