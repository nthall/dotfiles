" statusline & pathogen loading
set statusline =%f\ %h%m%r\ -\ buf#:\ %n\ %=%{fugitive#statusline()}\ \ line:\ %l/%L\ -\ col:\ %c%V\ \
execute pathogen#infect()
set binary  " tbh don't remember why

" indentation
set autoindent
set smartindent
set tabstop=4
set et
set shiftwidth=4
set backspace=2

" syntax basics
syntax on
filetype plugin on

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
au InsertEnter * set nohlsearch 
au InsertLeave * set hlsearch 

"split location defaults
set splitbelow
set splitright

" au BufRead,BufNewFile *.less set filetype=css "only if no less highlighting :P

" enforce hjkl movement
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" lagniappe
set laststatus=2
set t_Co=256
source ~/.regexlist.vim
set ruler
set wildmenu

au Filetype html setlocal tabstop=2 shiftwidth=2
" django/mybox specific
au Filetype htmldjango setlocal tabstop=2 shiftwidth=2
au Filetype css setlocal tabstop=2 shiftwidth=2
au Filetype javascript setlocal tabstop=2 shiftwidth=2

" pylint chokes a bit on django :(
let g:syntastic_python_pylint_args = "--load-plugins django_pylint"
" always populate error list for :lnext, :lprev
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_javascript_checkers = ['eslint']

" Tell vim to remember certain things when we exit
"  '20  :  marks will be remembered for up to 20 previously edited files
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

" better vimdiff highlighting
" colorscheme mycolorscheme
