""+--------------------------------------------+
""|Vim config file by asmir at archlinux dot us|
""---------------------------------------------+

set encoding=utf-8
scriptencoding utf-8

"" Call vim-plug to install/update/remove plugins
filetype off					"

call plug#begin('~/.vim/plug')

 "Show the color you write
 Plug 'chrisbra/Colorizer'			"Show the color you write

"ASCII art
 Plug 'DrawIt'

 "Insert preconfigured snippets
 Plug 'garbas/vim-snipmate'| Plug 'honza/vim-snippets'
 Plug 'tomtom/tlib_vim'	| Plug 'MarcWeber/vim-addon-mw-utils'

 "Color your parentheses
 Plug 'kien/rainbow_parentheses.vim'

 "Ctags bar
 Plug 'majutsushi/tagbar', {'for': 'c'}
 
 "Theme chooser
 Plug 'ScrollColors'

 "Spell check and a bit more
 Plug 'scrooloose/syntastic'
 
 "Colorschemes
 Plug 'flazz/vim-colorschemes'

 "All-in-one indent/syntax
 Plug 'sheerun/vim-polyglot'

call plug#end()
filetype plugin indent on			"End vim-plug call, use plugins


"" Plugin settings
 "majutsushi/tagbar
  let g:tagbar_autoclose = 1
 "scrooloose/syntatic
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
  augroup parentheses
	  autocmd!
	  autocmd VimEnter * RainbowParenthesesActivate
	  autocmd VimEnter * RainbowParenthesesLoadRound
	  autocmd VimEnter * RainbowParenthesesLoadSquare
	  autocmd VimEnter * RainbowParenthesesLoadBraces
  augroup END

 "vim-polygot
  let g:LatexBox_loaded_matchparen = 1	"Disable matchparen on latex

"" Basic settings
syntax on
set number
"set ruler
set shiftwidth=8		"It's like a standard
set undolevels=127		"Remember this much undos
set ttyscroll=3			"Scroll faster
"set ttyfast			"Faster refresh
set incsearch			"Search as you type
set hlsearch			"Higlight search
"set digraph			"For deutsch
set showcmd			"Show 'incomplete' commands
set title			"Show what you edit on term titlebar
set lazyredraw			"Don't update display while executing macros
set wildmenu			"Better cmd line completion
set belloff=all
let g:loaded_matchparen=1 	"Don't show matching parentheses
let g:netrw_liststyle=3		"Vim Explorer NTree style
let &titleold=getcwd()		"Don't break my spawn_cwd dwm patch
let g:syntastic_vim_checkers = ['vint']


augroup paste
	autocmd!
	autocmd InsertLeave * set nopaste	"Turn off paste mode on leaving insret
augroup END

augroup filetypes
	autocmd!
	autocmd BufRead /tmp/mutt-* set tw=72	"Mail file
augroup END

"" Appereance 
if &filetype ==? 'c'
	if (exists('+colorcolumn'))		"Highlight 80th column
		set colorcolumn=80
		highlight ColorColumn ctermbg=9
	endif
endif

colorscheme badwolf

" Speed up syntax highlighting
" set nocursorcolumn
" set nocursorline
 syntax sync minlines=100
 syntax sync maxlines=140
 " Don't try to highlight lines longer than 800 characters
 set synmaxcol=800

"" Keymap
nnoremap <F8> :TagbarToggle<CR>	"Plugin shortcut
nnoremap <F10> :Explore<CR>	"File explorer (eplaces NTree)
nnoremap Q :nohl<cr>		"Clear higlights and disable Ex-mode
nnoremap <C-J> <C-W><C-J>	"Easier split motion
nnoremap <C-K> <C-W><C-K>	"|
nnoremap <C-L> <C-W><C-L>	"|
nnoremap <C-H> <C-W><C-H>	"|
nnoremap j gj			"Better movement with soft line breaks
nnoremap k gk			"|
vnoremap j gj			"|
vnoremap k gk			"|
inoremap <S-TAB> <C-X><C-O>

"" Functions
"undofile - This allows you to use undos after exiting and restarting
if exists('+undofile')
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//
  set undofile
endif

"" Abbreviations
iabbrev lenght length
