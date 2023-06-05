syntax on

set rtp+=/opt/homebrew/opt/fzf  " Add fzf to runtime path

set autoindent                  " Copy indent from previous line
set cursorline                  " highlight current line
set ignorecase                  " Ignore case in searches
set noerrorbells                " Obvious
set matchtime=0                 " Fix neovim match lag
set list                        " Don't show listchars
set listchars=tab:»·,trail:·    " Show trailing spaces as dots
set number                      " Show regular numbers
set showmatch                   " Highlight matching paren/brace/bracket
set smartindent                 " Auto insert extra indent level in certain cases
set smarttab                    " Prevents tab/space issues
set synmaxcol=180               " Prevents segfaults and slow rendering
set splitbelow                  " Open hsplits below rather than above
set splitright                  " Open vsplits to the right rather than left
set tags^=.git/tags             " where to find tags
set termguicolors               " 256 colors!
set undolevels=500              " More undo
set wildignorecase              " Case insensitive completions
set wildmenu

set signcolumn=yes:1
" neovim specific configuration
if has('nvim')
  set signcolumn=auto:1-2
endif

" Formatting settings
set expandtab                   " Make spaces not tabs
set shiftwidth=2                " 2 spaces when indented

filetype indent on              " Filetype specific indent
filetype plugin on              " Filetype specific plugins

if has('mouse')
  set mouse=a
endif

if exists("+undofile")
  if isdirectory($HOME . '/.config/nvim/undo') == 0
    :silent !mkdir -p ~/.config/nvim/undo > /dev/null 2>&1
  endif

  set undofile
  set undodir=~/.config/nvim/undo/
endif



set softtabstop=2
set tabstop=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
