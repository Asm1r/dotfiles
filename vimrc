""+--------------------------------------------+
""|Vim config file by asmir at archlinux dot us|
""---------------------------------------------+

"" Call vundle to install/update/remove plugins
set nocompatible				"Be modern
filetype off					"

call plug#begin('~/.vim/bundle')
 Plug 'avr.vim', {'for': 'c'}			"Syntax higlight for AVR assem
 Plug 'beyondmarc/opengl.vim', {'for': 'c'}	"OpenGL syntax higligh
 Plug 'cg433n/better-c', {'for': 'c'}		"Better C syntax highlight 
 Plug 'chrisbra/Colorizer'			"Show the color you write
 Plug 'DrawIt'					"ASCII art
 Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}	"Haskell mod
 Plug 'haskell.vim', {'for': 'haskell'}		"Fix haskell syntax hl.
 Plug 'indenthaskell.vim', {'for': 'haskell'}	"Fix haskell indenting
 Plug 'garbas/vim-snipmate'			"Insers preconfigured snips
 Plug 'honza/vim-snippets'			"Snippets for snipmate
 Plug 'kien/rainbow_parentheses.vim',		"Color your parentheses
 Plug 'majutsushi/tagbar', {'for': 'c'}		"Code browsing using ctags
 Plug 'MarcWeber/vim-addon-mw-utils' 		"Used by snipmate
 Plug 'nathanaelkane/vim-indent-guides'		"Make indents visible
 Plug 'ScrollColors'				"Vim color chooser 
 Plug 'scrooloose/syntastic'			"Spell check
 Plug 'Shougo/vimproc', {'on': 'haskell'}	"Needed for Haskell mod
 Plug 'terryma/vim-multiple-cursors'		"Sublimes multi-cursor
 Plug 'tomtom/tcomment_vim'			"Code commenting made easier
 Plug 'tomtom/tlib_vim'				"Used by snipmate
call plug#end()

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
set shiftwidth=8		"It's like a standard
set undolevels=127		"Remember this much undos
set ttyscroll=3			"Scroll faster
set incsearch			"Search as you type
set hlsearch			"Higlight search
"set digraph			"For deutsch
set showcmd			"Show 'incomplete' commands
set title			"Show what you edit on term titlebar
set lazyredraw			"Don't update display while executing macros
set wildmenu			"Better cmd line completion
let loaded_matchparen=1	 	"Don't show matching parentheses
let g:netrw_liststyle=3		"Vim Explorer NTree style

au InsertLeave * set nopaste		"Turn off paste mode on leaving insret
au BufWritePost .vimrc so ~/.vimrc	"Auto reload vimrc
au BufRead /tmp/mutt-* set tw=72	"Mail file


"" Appereance 
colorscheme dante

"" Keymap
nnoremap <F8> :TagbarToggle<CR>	"Plugin shortcut
nnoremap <F10> :Explore<CR>	"File explorer (eplaces NTree)
nnoremap Q :nohl<cr>		"Clear higlights and disable Ex-mode
nnoremap <C-J> <C-W><C-J>	"Easier split motion
nnoremap <C-K> <C-W><C-K>	"|
nnoremap <C-L> <C-W><C-L>	"|
nnoremap <C-H> <C-W><C-H>	"|
noremap t o<Esc>		"Insert empty line w/o going to insert mode
noremap T O<Esc>		"|

"" Functions
"undofile - This allows you to use undos after exiting and restarting
"This is only present in 7.3+
if exists("+undofile")
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//
  set undofile
endif

"" Abbreviations
iabbrev lenght length
