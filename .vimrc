"-----------------------------
" Vim Plug
"-----------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()

"-----------------------------
" Vim
"-----------------------------

" Set default colorscheme
colorscheme pablo

" Set line numbers
set number

" Set directory of opened file
autocmd BufEnter * lcd %:p:h

"-----------------------------
" NERDTree
"-----------------------------

" Open NERDTree automatically on startup
autocmd vimenter * NERDTree

" Open NERDTree automatically with directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Map Ctrl+N to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Show hidden files
let NERDTreeShowHidden=1

"-----------------------------
" NERDTree Tabs
"-----------------------------

" Open NERDTree on console vim startup. (When set to 2, open only if directory was given as startup argument).
let g:nerdtree_tabs_open_on_console_startup=1

