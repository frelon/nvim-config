" --- Plugins ---

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdTree'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" --- Keybindings ---

nmap <C-n> :NERDTreeToggle<CR>

" FZF
nmap <C-o> :FZF<CR>
nmap <C-f> :Lines<CR> 

" Window management
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
tmap <C-h> <C-w>h
tmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap <C-l> <C-w>l

" Split to terminal
nmap <C-s>t :split<CR><C-j>:resize 15<CR>:terminal<CR>i

" Escape terminal
tmap <Esc> <C-\><C-n>:q<CR>

" --- Settings ---

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']

let g:go_fmt_command="goimports"

let g:deoplete#enable_at_startup = 1

set number
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" add Jenkinsfile
au! BufNewFile,BufReadPost Jenkinsfile set filetype=groovy

" Hide status line when open fzf window
augroup fzf_hide_statusline
    autocmd!
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
                \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END
