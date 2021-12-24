call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader="\<space>"
let g:fzf_layout = { 'down': '~40%' }

set hidden " permite a edição de multiplos arquivos
set relativenumber
set expandtab
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set inccommand=split " Preview of commands like substituion
set path+=** " Adiciona os subdiretorios ao path
set wildmenu

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" NerdTree settings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-Right> <C-w><Right>
nnoremap <C-Left> <C-w><Left>
nnoremap <C-Up> <C-w><Up>
nnoremap <C-Down> <C-w><Down>

inoremap <C-Right> <Esc><C-w><Right>gi
inoremap <C-Left> <Esc><C-w><Left>gi
inoremap <C-Up> <Esc><C-w><Up>gi
inoremap <C-Down> <Esc><C-w><Down>gi

nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==

vnoremap <A-Up> :'<,'>m -2<CR>gv=gv
vnoremap <A-Down> :'<,'>m +2<CR>gv=gv

inoremap <A-Up> <Esc>:m .-2<CR>==gi
inoremap <A-Down> <Esc>:m .+1<CR>==gi

vnoremap <C-c> "+y

inoremap <C-Space> <C-x><C-f>
