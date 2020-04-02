set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Proper PEP 8 indentation
au BufNewFile,BufRead *.py set tabstop=4 
au BufNewFile,BufRead *.py set softtabstop=4 
au BufNewFile,BufRead *.py set shiftwidth=4 
au BufNewFile,BufRead *.py set textwidth=79 
au BufNewFile,BufRead *.py set expandtab 
au BufNewFile,BufRead *.py set fileformat=unix
au BufNewFile,BufRead *.py set autoindent 

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

" UTF 8 encoding
set encoding=utf-8

" Customizations for YCM
let mapleader = ","
let g:ycm_autoclose_preview_window_after_completion=1

" go to definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" make code look good
let python_highlight_all=1
syntax on

" color scheme"
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
call togglebg#map("<F5>")

" Combination to open Nerdtree
nnoremap <Leader>f :NERDTreeToggle<Enter>

" Make Nerdtree close when opening a file
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Make Nerdtree look better
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Make Nerdtree show hidden files
let NERDTreeShowHidden=1

" Turn on line numbering
:set relativenumber
:set rnu
