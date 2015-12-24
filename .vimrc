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


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='20,\"100,:20,%,n~/.viminfo

" actual stuff that does the cursor-position mambo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

" do the cursor-position mambo
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
