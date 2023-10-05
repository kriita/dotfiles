" Indent li and p tags properly
let g:html_indent_tags = 'li\|p'

" ALE
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \}

" Ruby indents
let g:ruby_indent_assignment_style = 'variable'

" vinegar hide dotfiles
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro nonumber'
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_retmap = 1
let g:netrw_fastbrowse = 0

" disable left click open
let g:netrw_retmap = 1

" disable netrw history
let g:netrw_dirhistmax = 0

""" LATEX CONFIG

let g:livepreview_previewer = 'open -a skim'
let g:livepreview_use_biber = 1
