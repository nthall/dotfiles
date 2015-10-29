set statusline +=%f\ %h%m%r\ -\ buf#:\ %n\ %=%{fugitive#statusline()}\ \ line:\ %l/%L\ -\ col:\ %c%V\ \
execute pathogen#infect()
set binary
set autoindent
set smartindent
set tabstop=4
set et
set shiftwidth=4
set backspace=2
set ruler
set wildmenu
syntax on
filetype plugin on
set hlsearch
set incsearch
set ignorecase
set smartcase
set splitbelow
set splitright
au InsertEnter * set nohlsearch 
au InsertLeave * set hlsearch 
" au BufRead,BufNewFile *.less set filetype=css "only if no less highlighting :P
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set laststatus=2
set t_Co=256
source ~/.regexlist.vim

" pylint chokes a bit on django :(
let g:syntastic_python_pylint_args = "--load-plugins django_pylint"
" always populate error list for :lnext, :lprev
let g:syntastic_always_populate_loc_list = 1
