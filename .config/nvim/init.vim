filetype off

"set rtp+=~/.vim/bundle/Vundle.vim

" Init Vim-Plug if not yet done
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:python3_host_prog = $HOME.'/.neovim3/bin/python3'

""" VIM PLUG
call plug#begin('~/.vim/plugged')

""" TPOPE UTILITIES
Plug 'tpope/vim-bundler' " Bundler wrapper
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'tpope/vim-eunuch' " File operations wrapper
Plug 'tpope/vim-rails' " Ruby on Rails wrapper
Plug 'tpope/vim-surround' " Surrounding symbols wrapper

""" WORKFLOW
Plug 'vim-test/vim-test' " Wrapper for running tests on different granularities.
Plug 'goolord/alpha-nvim' " Fast and fully programmable greeter for neovim
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between vim and tmux
Plug 'preservim/nerdtree' " File system explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status support for nerdtree 

""" SEARCHING
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " General-purpose command-line fuzzy finder
Plug 'junegunn/fzf.vim' " fzf and ripgrep integration
Plug 'RRethy/vim-illuminate' " Automatic highlighting other uses of the word under the cursor

""" LANGUAGES AND MARKUP
Plug 'sheerun/vim-polyglot' " Language packs for most languages

""" COLORS AND THEME
" Plug 'itchyny/lightline.vim' " Status bar
Plug 'nvim-lualine/lualine.nvim' " Blazing fast and easy to configure Neovim statusline written in Lua
Plug 'folke/tokyonight.nvim', { 'branch': 'main'} " Tokyo Night theme

""" WRITING
Plug 'junegunn/goyo.vim' " Distraction-free writing
Plug 'xuhdev/vim-latex-live-preview' " Live preview LaTeX documents
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'} " Live preview .md files

" Neovim specific plugins
if has('nvim-0.5')

  """ SYNTAX HIGHLIGHTING AND FORMATTING
  Plug 'nvim-treesitter/nvim-treesitter' " Builds syntax tree based on source code
  Plug 'sbdchd/neoformat' " Formats code

  """ LSP
  Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig' " Syntax autocompletion

  """ COMPLETION
  Plug 'hrsh7th/cmp-nvim-lsp' " Built-in language server client
  Plug 'hrsh7th/cmp-buffer' " Source for buffer words
  Plug 'hrsh7th/cmp-path' " Source for filesystem paths
  Plug 'hrsh7th/cmp-cmdline' " Souce for Vim's command-line
  Plug 'hrsh7th/nvim-cmp' " Completion engine plugin
  Plug 'hrsh7th/cmp-nvim-lsp-signature-help' " Source for displaying function signatures with the current parameter emphasized

  """ SNIPPETS
  Plug 'L3MON4D3/LuaSnip' " Lots of snippets
  Plug 'hrsh7th/cmp-vsnip' " nvim-cmp source for vim-vsnip
  Plug 'hrsh7th/vim-vsnip' " VSCode(LSP)'s snippet feature

  """ COPILOT
  Plug 'github/copilot.vim' " Suggest code and entire functions in real-time
  Plug 'zbirenbaum/copilot-cmp' " Cmp source for zbirenbaum/copilot.lua
  Plug 'zbirenbaum/copilot.lua' " Pure Lua replacement for github/copilot.vim
endif

call plug#end()

filetype plugin indent on

""" THEME
colorscheme tokyonight-moon

" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

source $HOME/.config/nvim/autocommands.vim
source $HOME/.config/nvim/config.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/shortcuts.vim

lua require('lsp')
lua require('status')
lua require('treesitter')
lua require('welcome')
