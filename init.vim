" plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdTree'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'

call plug#end()

" keybindings 

nmap <C-n> :NERDTreeToggle<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
tmap <C-h> <C-w>h
tmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap <C-l> <C-w>l

tmap <Esc> <C-\><C-n>

" settings

let NERDTreeShowHidden=1

let g:go_fmt_command="goimports"

let g:deoplete#enable_at_startup = 1

set number
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
