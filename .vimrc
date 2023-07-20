" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set autoindent
set noexpandtab

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Show line numbers
set number

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

 Plug 'dense-analysis/ale'

 Plug 'preservim/nerdtree'

@REM  Install COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" }}}
let g:NERDTreeWinPos = "left"

@REM Map f11 to discard changes
nnoremap <F1> :e!<CR>

@REM Start NerdTree when starts
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
@REM Show hidden files
let g:NERDTreeShowHidden=1

set backspace=indent,eol,start
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'                                                                                            
call plug#end()

let g:coc_global_extensions = ['coc-yank', 'coc-pairs', 'coc-lists', 'coc-markdownlint', 'coc-clangd', 'coc-cmake', 'coc-rust-analyzer']

set t_Co=256
syntax enable
silent! colorscheme gruvbox
autocmd ColorScheme * highlight CocHighlightText gui=None guibg=#665c54
set background=dark

let g:coc_default_semantic_highlight_groups = 1
noremap <expr> <Up> pumvisible() ? "\<C-y>\<Up>" : "\<Up>"
nnoremap <silent> t :below  terminal<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
