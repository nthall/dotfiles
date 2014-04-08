set statusline +=%f\ %h%m%r\ -\ buf#:\ %n\ %=line:\ %l/%L\ -\ col:\ %c%V\ \ 
call pathogen#infect()
set autoindent
set smartindent
set tabstop=2
set et
set shiftwidth=2
set ruler
syntax on
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
