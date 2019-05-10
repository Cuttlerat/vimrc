set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme solarized
let g:solarized_termcolors=256
syntax on
set clipboard=unnamed
set backspace=indent,eol,start
set number relativenumber
set encoding=utf-8
set hlsearch
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNR term=bold cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight SignColumn term=bold cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
Plugin 'itspriddle/vim-marked'
Plugin 'kshenoy/vim-signature'

call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=eol,start,indent
set softtabstop=4
set viminfo='10,\"100,:20,%,n~/.viminfo

" Mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :ls<CR>:buffer<Space>
nnoremap <C-b> :bp<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>


" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

" Filetypes
au BufReadPost Jenkinsfile* set syntax=jenkinsfile

" Marked
let g:marked_app = "Marked"
au BufReadPost *.md MarkedOpen!

" Spaces
highlight ExtraWhitespace ctermbg=DarkRed guibg=DarkRed
highlight Tabs ctermbg=DarkGreen guibg=DarkGreen
match ExtraWhitespace /\s\+$/
2match Tabs /\t/

" Jumps
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'
