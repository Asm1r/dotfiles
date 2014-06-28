
"" Needed by Vundle
set nocompatible
filetype off

"" Call vundle to install/update/remove plugins
call vundle#rc()
 Plugin 'MarcWeber/vim-addon-mw-utils' 		"Used by snipmate
 Plugin 'tomtom/tlib_vim'			"Used by snipmate
 Plugin 'honza/vim-snippets'			"Snippets for snipmate
 Plugin 'garbas/vim-snipmate'			"Insers preconfigured snips
 Plugin 'scrooloose/syntastic'			"Spell check
 Plugin 'tomtom/tcomment_vim'			"Code commenting made easier
 Plugin 'majutsushi/tagbar'			"Code browsing using ctags
 Plugin 'nathanaelkane/vim-indent-guides'	"Make indents visible
 Plugin 'eagletmt/ghcmod-vim'			"Haskell mod
 Plugin 'avr.vim'				"Syntax higlight for AVR assem
 Plugin 'DrawIt'				"ASCII art
 Plugin 'beyondmarc/opengl.vim'			"OpenGL syntax higlight
 "Plugin 'cg433n/better-c'			"Better C syntax highlight
filetype plugin indent on			"End vundle call, use plugins

"" Basic settings
syntax on
set number
set ruler
set shiftwidth=4		"It's like a standard
set undolevels=127		"Remember this much undos

"" Appereance 
colorscheme badwolf

