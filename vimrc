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
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'sjl/gundo.vim'
"Plugin 'scrooloose/syntastic'               " a syntax checking plugin for vim      pip install pylint
"Plugin 'satlstack/salt-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Rip-Rip/clang_complete'

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

" Allow specified keys that move the cursor left/right to move to the previous/next line 
" when the cursor is on the first/last character in the line
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

set clipboard=unnamed



"""""""""""""""""""""""""""""""""""""""""""""""""""""
" key map和插件等其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','


" switch tabs
map 9 :bprevious<CR>
map 0 :bnext<CR>


" switch windows
map <C-l> <C-w>l
map <C-h> <C-w>h


" quit
map q :quit<CR>
map Q :quitall<CR>


" nerdtree 
map <C-n> :NERDTreeToggle<CR>


" Python 
autocmd FileType Python set colorcolumn=80
map <Leader>r :w<CR>:!python %<CR>


" Airline
let g:airline_symbols = {}
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#buffer_nr_show = 1 
"let g:airline#extensions#tabline#buffer_nr_format = '[%s]'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_extensions = ['branch', 'tabline', 'virtualenv']
let g:airline_section_c = airline#section#create(['%{getcwd()}', '/%t'])


" map buffer
map 1 :buffer 1<CR>
map 2 :buffer 2<CR>
map 3 :buffer 3<CR>
map 4 :buffer 4<CR>
map 5 :buffer 5<CR>
map 6 :buffer 6<CR>
map 7 :buffer 7<CR>
map 8 :buffer 8<CR>


" jedi-vim
autocmd FileType python setlocal completeopt-=preview               " I don't want the docstring window to popup during completion
let g:jedi#goto_definitions_command = "<Leader>d"


" clang
let g:clang_library_path="/usr/lib/llvm-3.6/lib"


" syntastic
"let g:syntastic_check_on_open=1                                     " check on open
"let g:syntastic_auto_jump=1                                         " auto jump
"let g:syntastic_python_checkers = ['pylint']


" vim-colors-solarized'
let g:solarized_termtrans=1                                         "default value is 0
let g:solarized_termcolors=256                                      "default value is 16
syntax enable
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


" Fugitive
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
