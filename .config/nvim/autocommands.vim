" Fix terrible terminal delay
if !has('gui_running')
  set timeoutlen=1000
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

if has("autocmd")
  autocmd StdinReadPre * let s:std_in=1

  """ NEW FILE TEMPLATES
  autocmd BufNewFile *.cpp 0r ~/.vim/templates/template.cpp
  autocmd BufNewFile *.h 0r ~/.vim/templates/template.h
  autocmd BufNewFile *.py 0r  ~/.vim/templates/template.py
  autocmd BufNewFile *.rb 0r  ~/.vim/templates/template.rb
  autocmd BufNewFile *.tex 0r ~/.vim/templates/template.tex

  " Language Specific Settings
  autocmd FileType text setlocal textwidth=78
  autocmd FileType gitcommit setlocal spell " nonumber norelativenumber
  autocmd BufNewFile,BufRead PULLREQ_EDITMSG set syntax=gitcommit
  autocmd FileType netrw setl bufhidden=delete
  autocmd FileType netrw setlocal nonumber relativenumber
  autocmd FileType markdown setlocal spell wrap conceallevel=0
  au Filetype markdown,tex set cc=81
  au Filetype markdown,tex set tw=80
  au Filetype markdown,tex highlight ColorColumn ctermbg=8
  au Filetype markdown,tex setl updatetime=1000
  
endif
