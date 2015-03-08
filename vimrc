""+--------------------------------------------+
""|Vim config file by asmir at archlinux dot us|
""---------------------------------------------+

set encoding=utf-8
scriptencoding utf-8

"" Call vim-plug to install/update/remove plugins
set nocompatible				"Be modern
filetype off					"

call plug#begin('~/.vim/plug')
 Plug 'chrisbra/Colorizer'			"Show the color you write
 Plug 'DrawIt'					"ASCII art
 Plug 'garbas/vim-snipmate'			"Insers preconfigured snips
 Plug 'honza/vim-snippets'			"Snippets for snipmate
 Plug 'kien/rainbow_parentheses.vim',		"Color your parentheses
 Plug 'majutsushi/tagbar', {'for': 'c'}		"Code browsing using ctags
 Plug 'MarcWeber/vim-addon-mw-utils' 		"Used by snipmate
 Plug 'ScrollColors'				"Vim color chooser 
 Plug 'scrooloose/syntastic'			"Spell check
 Plug 'terryma/vim-multiple-cursors'		"Sublimes multi-cursor
 Plug 'tomtom/tcomment_vim'			"Code commenting made easier
 Plug 'tomtom/tlib_vim'				"Used by snipmate
 Plug 'flazz/vim-colorschemes'			"Self explained
 Plug 'sheerun/vim-polyglot'			"All in one ident/syntax
 Plug 'Shougo/unite.vim'			"Make Vim an IDE
 Plug 'Shougo/vimproc.vim'			"Needed for Unite (manual inst)
call plug#end()
filetype plugin indent on			"End vim-plug call, use plugins


"" Plugin settings
 "majutsushi/tagbar
  let g:tagbar_autoclose = 1
 "scrooloose/syntatic
  let g:syntastic_c_include_dirs = [ '/usr/avr/include', '/usr/include' ]
 "kien/rainbow_parentheses
  let g:rbpt_colorpairs = [
	\ ['darkyellow',  'RoyalBlue3'],
	\ ['darkgreen',   'SeaGreen3'],
	\ ['darkcyan',    'DarkOrchid3'],
	\ ['Darkblue',    'firebrick3'],
	\ ['DarkMagenta', 'RoyalBlue3'],
	\ ['darkred',     'SeaGreen3'],
	\ ['darkyellow',  'DarkOrchid3'],
	\ ['darkgreen',   'firebrick3'],
	\ ['darkcyan',    'RoyalBlue3'],
	\ ['Darkblue',    'SeaGreen3'],
	\ ['DarkMagenta', 'DarkOrchid3'],
	\ ['Darkblue',    'firebrick3'],
	\ ['darkcyan',    'SeaGreen3'],
	\ ['darkgreen',   'RoyalBlue3'],
	\ ['darkyellow',  'DarkOrchid3'],
	\ ['darkred',     'firebrick3'],
	\ ]
  let g:rbpt_max = 16
  autocmd VimEnter * RainbowParenthesesActivate
  autocmd VimEnter * RainbowParenthesesLoadRound
  autocmd VimEnter * RainbowParenthesesLoadSquare
  autocmd VimEnter * RainbowParenthesesLoadBraces
 "vim-polygot
  let g:LatexBox_loaded_matchparen = 1	"Disable matchparen on latex

 
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
let g:loaded_matchparen=1 	"Don't show matching parentheses
let g:netrw_liststyle=3		"Vim Explorer NTree style
let &titleold=getcwd()		"Don't break my spawn_cwd dwm patch

autocmd InsertLeave * set nopaste	"Turn off paste mode on leaving insret
autocmd BufWritePost .vimrc so ~/.vimrc	"Auto reload vimrc
autocmd BufRead /tmp/mutt-* set tw=72	"Mail file

"" Appereance 
if (exists('+colorcolumn'))		"Highlight 80th column
	set colorcolumn=80
        highlight ColorColumn ctermbg=9
endif

set background=dark
colorscheme solarized



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
if exists("+undofile")
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//
  set undofile
endif

"" Abbreviations
iabbrev lenght length
