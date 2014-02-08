                                                     
"|----------------------------------------------------+
"| vim config file asmir [at] archlinux [dot] us      |
"+----------------------------------------------------+

" Genral settings {{{                                
set number			" Line numbers       
set ruler
syntax on			" Syntax higlighting
filetype plugin indent on 
set shiftwidth=4
" }}}

" Keybind {{{
"}}}

" Folding {{{
set foldenable
set foldmethod=marker
set foldcolumn=1
" }}}

" Appearence {{{
colorscheme badwolf
" }}}

" Searching {{{
set ignorecase
set incsearch
" }}}

" {{{ Variables
set shell=zsh
" }}}

"{{{ Plugins

"{{{ c-support (c.vim)
set cinoptions=t0	"Make '<tab> int' to 'int' in function declarations
set cinoptions+=t0	"Same as ^ for C++
"}}}

"}}}
"vim: fdm=marker sw=4
