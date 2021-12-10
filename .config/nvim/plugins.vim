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

"Plug 'quantum-omega/vim-burnttoast256'    " colorscheme
Plug 'ayu-theme/ayu-vim'                  " colorscheme

" Plug 'dpelle/vim-LanguageTool'           " advanced spellchecker
" Plug 'preservim/nerdtree'                 " a file system explorer

Plug 'preservim/nerdcommenter'
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

"plugins here, coc for example
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }


" " deoplete 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1


Plug 'sirver/ultisnips'
  let g:UltiSnipsExpandTrigger = '<tab>'
  let g:UltiSnipsListSnippets = '<c-tab>'
  let g:UltiSnipsJumpForwardTrigger = '<c-j>'
  let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
" `my-snippets` is the directory in the nvim/my-snippets
  let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Just call :SnipBar and it will open a scratch buffer to the right, 40
" columns width, with all the snippets that are available for the current
" file.
Plug 'robertbasic/snipbar'

" Plug 'lervag/vimtex'                     " filetype plugin for LaTeX
"   let g:tex_flavor='latex'
"   let g:vimtex_view_method='zathura'
"   let g:vimtex_quickfix_mode=0
"
" Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
"   set conceallevel=1
"   let g:tex_conceal='abdmg'
"   hi Conceal ctermbg=none


Plug 'cespare/vim-toml'                   " toml syntax
Plug 'rust-lang/rust.vim'                 " rust files detection, syntax formatting
Plug 'NoahTheDuke/vim-just'               " syntax highlighting for justfiles

" Plug 'nvim-lualine/lualine.nvim'          " status line
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ryanoasis/vim-devicons'

" lightline will take care about the status line
  set laststatus=2  " Always display the status line
" set noshowmode		" No show current input mode in the status line
" set noruler		  	" No show the line number on the status line
Plug 'itchyny/lightline.vim'
  let g:lightline = { 'colorscheme': 'powerline' }
" let g:lightline = { 'colorscheme': 'moonfly' }


call plug#end()

" }}}

" Some setting after plugins processing {{{
"================================================
"
" COLORSCHEME
" syntax hightlight
" set termguicolors (is in settings)
" colorscheme burnttoast256
colorscheme ayu

" }}}

