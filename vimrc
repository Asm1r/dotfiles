
"" Needed by Vundle
set nocompatible
filetype off

"" Call vundle to install/update/remove plugins
call vundle#rc()
 Plugin 'MarcWeber/vim-addon-mw-utils' 		"Used by snipmate
 Plugin 'tomtom/tlib_vim'			"Used by snipmate
 Plugin 'honza/vim-snippets'			"Snippets for snipmate
 Plugin 'garbas/vim-snipmate'			"Insers preconfigured snips
 Plugin 'terryma/vim-multiple-cursors'		"Sublimes multi-cursor
 Plugin 'scrooloose/syntastic'			"Spell check
 Plugin 'tomtom/tcomment_vim'			"Code commenting made easier
 Plugin 'majutsushi/tagbar'			"Code browsing using ctags
 Plugin 'scrooloose/nerdtree'			"Tree explorer for vim
 Plugin 'nathanaelkane/vim-indent-guides'	"Make indents visible
 Plugin 'avr.vim'				"Syntax higlight for AVR assem
 Plugin 'DrawIt'				"ASCII art
 Plugin 'beyondmarc/opengl.vim'			"OpenGL syntax higlight
 Plugin 'ScrollColors'				"Vim color chooser 
 Plugin 'chrisbra/Colorizer'			"Show the color you write
 Plugin 'kien/rainbow_parentheses.vim'		"Color your parentheses
 Plugin 'mhinz/vim-startify'			"Nicer vim start
 "Plugin 'eagletmt/ghcmod-vim'			"Haskell mod
 "Plugin 'Shougo/vimproc'			"Needed for Haskell mod
 "Plugin 'cg433n/better-c'			"Better C syntax highlight
filetype plugin indent on			"End vundle call, use plugins

"" Plugin settings
 "majutsushi/tagbar
  let g:tagbar_autoclose = 1
 "scrooloose/syntatic
  let g:syntastic_c_include_dirs = [ '/usr/avr/include', '/usr/include' ]
 "kien/rainbow_parentheses
  au VimEnter * RainbowParenthesesActivate
  au VimEnter * RainbowParenthesesLoadRound
  au VimEnter * RainbowParenthesesLoadSquare
  au VimEnter * RainbowParenthesesLoadBraces
  let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'red'],
      \ ]
  let g:rbpt_max = 16
  
"" Basic settings
syntax on
set number
set ruler
set shiftwidth=4		"It's like a standard
set undolevels=127		"Remember this much undos
set ttyscroll=3			"Scroll faster
set incsearch			"Search as you type
set hlsearch			"Higlight search
let loaded_matchparen=1	 	"Don't show matching parentheses

"" Appereance 
colorscheme dante

"" Keymap
nmap <F8> :TagbarToggle<CR>	"Plugin shortcut
nmap <F10> :NERDTreeToggle<CR>	"Plugin shortcut
nnoremap <C-J> <C-W><C-J>	"Easier split motion
nnoremap <C-K> <C-W><C-K>	" 
nnoremap <C-L> <C-W><C-L>	"
nnoremap <C-H> <C-W><C-H>	"
