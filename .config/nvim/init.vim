set t_Co=256
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
"set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
"set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set foldmethod=marker		" fold with a marker {{{ }}}



" dein.vim {{{
" https://github.com/Shougo/dein.vim
"
"Add the following configuration to your .vimrc.
"	call dein#add('itchyny/lightline.vim')

"Install with 
"	:call dein#install()

 
if &compatible 
  set nocompatible 
endif 
" Add the dein installation directory into runtimepath
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein')
call dein#begin('~/.local/share/dein')
call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim') 
    call dein#add('roxma/nvim-yarp') 
    call dein#add('roxma/vim-hug-neovim-rpc') 
  endif



  call dein#end() 
  call dein#save_state() 
endif 

filetype plugin indent on 
syntax enable
"}}}
" Status-line {{{
call dein#add('itchyny/lightline.vim')
set laststatus=2
let g:lightline={'colorscheme': 'seoul256',}
set noshowmode
"}}}
" colorscheme {{{
"colorscheme morning
colorscheme default
" }}}
" Hightlights {{{
filetype plugin indent on
syntax enable

" Reset search highlights
nnoremap <silent> <C-l> :let @/=""<CR>
" }}}
