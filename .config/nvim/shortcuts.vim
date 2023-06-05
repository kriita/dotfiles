" Remap leader to <space>
noremap <space> <Nop>
let mapleader = " "

" FZF Rg to leader a (Ack)
noremap <leader>a :Rg<CR>
noremap <leader>f :Grepper<CR>

" FZF Files to leader p
noremap <C-p> :Files<cr>


" Double <space> to noh
noremap <leader><space> :noh<cr>

" Nerdtree navigation
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Visual search
nnoremap / /\v

" Tab changes windows
nnoremap <Tab> <C-w>w

" Git shortcuts
map <leader>gs :Git<cr>
map <leader>gc :Git commit<cr>
map <leader>gg :GBrowse<cr>
map <leader>gb :Git blame<cr>
map <leader>gd :Gdiff<cr>

" Make Y act like other capitals
map Y y$

" Unmap useless keys
noremap Q <Nop>
noremap K <Nop>

