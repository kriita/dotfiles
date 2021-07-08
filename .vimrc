set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

""" VUNDLE
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

""" VIM PLUG

call plug#begin('~/.vim/plugged')

" Latex setup
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a preview'

" Other plugins
Plug 'sheerun/vim-polyglot'
Plug 'turbio/bracey.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

""" CONFIG TEMPLATES
autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp

""" SYNTASTIC CONFIG 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_checkers = ['clang_check', 'clang_tidy']

""" GENERAL
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nu
set rnu
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
