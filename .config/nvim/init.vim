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
" vim-plug {{{
"================================================


"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('$XDG_CONFIG_HOME/nvim/plugged/')
"call plug#begin('~/.config/nvim/plugged')

"plugins here, coc for example
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'preservim/nerdtree'                 " a file system explorer

Plug 'quantum-omega/vim-burnttoast256'    " colorscheme

" Plug 'dpelle/vim-LanguageTool'           " advanced spellchecker
Plug 'preservim/nerdcommenter'

Plug 'cespare/vim-toml'                   " toml syntax
Plug 'rust-lang/rust.vim'                 " rust files detection, syntax formatting

Plug 'itchyny/lightline.vim'              " status line
" Plug 'hoob3rt/lualine.nvim'             " status line instead of lightline
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ryanoasis/vim-devicons'

call plug#end()

" }}}
" Coloring interface {{{
"================================================
" load it after plugins processing

" syntax hightlight
" set termguicolors
colorscheme burnttoast256
" colorscheme moonfly

" lightline will take care about the status line
set laststatus=2  " Always display the status line
"set noshowmode		" No show current input mode in the status line
"set noruler			" No show the line number on the status line
"let g:lightline = { 'colorscheme': 'moonfly' }
let g:lightline = { 'colorscheme': 'powerline' }

" }}}
" NERDcommenter settings {{{
"================================================

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" }}}
