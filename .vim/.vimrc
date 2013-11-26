execute pathogen#infect()
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
" set statusline += %{SyntasticStatuslineFlag()}  "syntastic status line stuff
au BufRead,BufNewFile *.game set filetype=php 
au BufRead,BufNewFile *.tpl set filetype=smarty
au BufRead,BufNewFile con.fig set filetype=php 
au InsertEnter * set nohlsearch 
au InsertLeave * set hlsearch 
au BufRead,BufNewFile *.less set filetype=css 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
