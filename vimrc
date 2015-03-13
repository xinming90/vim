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
Plugin 'scrooloose/nerdtree'
"Plugin 'majutsushi/tagbar'
"Plugin 'fs111/pydoc.vim'
"Plugin 'klen/python-mode'
"Plugin 'tpope/vim-surround'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set number                  " Print the line number in front of each line
syntax on                   " When this option is set, the syntax with this name is loaded
set hlsearch                " When there is a previous search pattern, highlight all its matches.
set incsearch               " While typing a search command, show where the pattern, as it was typed so far, matches.
set ignorecase              " Override the 'ignorecase' option if the search pattern contains upper case characters.  

set tabstop=4               " Number of spaces that a <Tab> in the file counts for.
set expandtab               " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
"set softtabstop=4

set noswapfile              " Use a swapfile for the buffer.  This option can be reset when a swapfile is not wanted for a specific buffer.
set backup                  " Make a backup before overwriting a file.
set backupdir=~/.vim/backup 

set background=light

set cursorline              " Highlight the screen line of the cursor with CursorLine
set ruler
set laststatus=2

map <left> :bprevious<CR>
map <right> :bnext<CR>

" Allow specified keys that move the cursor left/right to move to the previous/next line 
" when the cursor is on the first/last character in the line
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" key map和插件等其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree 
map <C-n> :NERDTreeToggle<CR>

" Python 
autocmd FileType Python set colorcolumn=80

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim UI (copy from LxYu)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark        " Assume a dark background
if has('gui_running')
    color Tomorrow-Night
    set guifont=Monaco\ for\ Powerline:h12     " set gui font
    set guioptions-=T          " remove the toolbar
    set guioptions-=L          " remove the left scrollbar
    set guioptions-=r          " remove the right scrollbar
else
    color solarized
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    set term=builtin_xterm     " Make terminal stuff works
    set t_Co=256
endif
