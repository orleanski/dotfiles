" vim-plug {{{
"================================================


"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

"call plug#begin('$XDG_CONFIG_HOME/nvim/plugged/')
call plug#begin('~/.local/share/nvim/site/plugged')

"plugins here, coc for example
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'preservim/nerdtree'                 " a file system explorer

Plug 'quantum-omega/vim-burnttoast256'    " colorscheme
Plug 'ayu-theme/ayu-vim'                  " colorscheme

" Plug 'dpelle/vim-LanguageTool'           " advanced spellchecker
Plug 'preservim/nerdcommenter'

Plug 'cespare/vim-toml'                   " toml syntax
Plug 'rust-lang/rust.vim'                 " rust files detection, syntax formatting

Plug 'itchyny/lightline.vim'              " status line
" Plug 'nvim-lualine/lualine.nvim'          " status line
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ryanoasis/vim-devicons'

call plug#end()

" }}}
" Coloring interface {{{
"================================================
" load it after plugins processing

" syntax hightlight
" set termguicolors (is in settings)
" colorscheme burnttoast256
colorscheme ayu

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

