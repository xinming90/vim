"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
" https://github.com/gmarik/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                            " This option has the effect of making Vim either more Vi-compatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Townk/vim-autoclose'                " This plugin for Vim enable an auto-close chars feature for you. 
Plugin 'bling/vim-airline'                  " statusline
Plugin 'hynek/vim-python-pep8-indent'       " pep8 indent
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'majutsushi/tagbar'
"Plugin 'fs111/pydoc.vim'
"Plugin 'klen/python-mode'
"Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'               " <Leader>d go to definition and 
Plugin 'ervandew/supertab'
"Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'sjl/gundo.vim'
"Plugin 'scrooloose/syntastic'               " a syntax checking plugin for vim      pip install pylint

call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
set number                  " Print the line number in front of each line
syntax on                   " When this option is set, the syntax with this name is loaded
set hlsearch                " When there is a previous search pattern, highlight all its matches.
set incsearch               " While typing a search command, show where the pattern, as it was typed so far, matches.
set ignorecase              " Ignore case in search patterns.  Also used when searching in the tags file.
set smartcase               " Override the 'ignorecase' option if the search pattern contains upper case characters.  

set tabstop=4               " Number of spaces that a <Tab> in the file counts for.
set expandtab               " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
"set softtabstop=4

set noswapfile              " Use a swapfile for the buffer.  This option can be reset when a swapfile is not wanted for a specific buffer.
set backup                  " Make a backup before overwriting a file.
set backupdir=~/.vim/backup 


set cursorline              " Highlight the screen line of the cursor with CursorLine
set ruler
set laststatus=2

" When on, Vim will change the current working directory whenever you
" open a file, switch buffers, delete a buffer or open/close a window.
set autochdir               " for ctrlp
"set autoread

" switch tabs
map <Left> :bprevious<CR>
map <Right> :bnext<CR>

" switch windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Allow specified keys that move the cursor left/right to move to the previous/next line 
" when the cursor is on the first/last character in the line
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

"
let mapleader=','

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" key map和插件等其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" nerdtree 
map <C-n> :NERDTreeToggle<CR>

" Python 
autocmd FileType Python set colorcolumn=80
map <Leader>r :w<CR>:!python %<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" jedi-vim
autocmd FileType python setlocal completeopt-=preview               " I don't want the docstring window to popup during completion
let g:jedi#goto_definitions_command = "<Leader>d"

" syntastic
"let g:syntastic_check_on_open=1                                     " check on open
"let g:syntastic_auto_jump=1                                         " auto jump

" vim-colors-solarized'
let g:solarized_termtrans=1                                         "default value is 0
let g:solarized_termcolors=256                                      "default value is 16
syntax enable
"set background=light
set background=light
colorscheme solarized

" ack
nmap <Leader>s :Ack 

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

