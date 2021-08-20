" Setting {{{
"================================================
" Define the <leader> key map leader to space
"let mapleader = " "
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set showcmd
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
"set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " do you want to see tabs [0|1|2]
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set ma                                  " modified 
"set autochdir                           " Your working directory will always be the same as your working directory

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vim alternatively you can run :source $MYVIMRC
au! BufWritePost ~/.config/nvim/init.vim source %

" }}}
" Folding {{{
"================================================
set foldenable          " enable folding
set foldmethod=marker
set foldlevel=0
"}}}
" Highlighting and search {{{
"================================================
" Needed for Syntax Highlighting and stuff
filetype plugin indent on
syntax enable

"set cursorline
":hi CursorLine cterm=underline
":hi CursorLine gui=underline

" Visual mode highlighting
:hi Visual term=reverse cterm=reverse guibg=LightGrey
" clear highligts with screen redraw
nnoremap <silent> <C-l> :let @/=""<CR>

" use the_silver_searcher
" let g:ackprg = 'ag --vimgrep'

" use ripgrep to search a pattern in other files
if executable("rg")
    set grepprg=rg\ --vimgrep
endif


"}}}
" Sourcing other files {{{
"================================================
source $HOME/.config/nvim/plugins.vim
" }}}
