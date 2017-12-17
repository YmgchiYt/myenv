"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/Users/me/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/me/.vim/bundles')
  call dein#begin('/Users/me/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/me/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('Yggdroot/indentLine')
  call dein#add('stephpy/vim-yaml')
  call dein#add('fatih/vim-go')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('alvan/vim-closetag')
  "call dein#add('Valloric/YouCompleteMe')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set nocompatible

"set noundofile
"set backupskip=/tmp/*,/private/tmp/*
"set backupdir=$HOME/.vimbackup

set enc=utf-8
set number
set ignorecase
set wrapscan
set title
set nohlsearch
set scrolloff=10
set cursorline

set smartindent
set autoindent
set smarttab
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" カッコ補完"
set showmatch
set matchtime=1

" 80文字の目安
set colorcolumn=80
set cursorcolumn

set clipboard=unnamed,unnamedplus

" indentを表示
set list lcs=tab:\¦\ 

let g:indentLine_enabled = 1
let g:indentLine_faster = 1
let g:indentLine_setColors = 0

" key mapping
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;


cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" 検索path
set path+=/Users/me/go/src/github.com/**

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 1

" vim go
let g:go_fmt_command = "goimports"

" YCM
let g:ycm_add_preview_to_complteopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1

"---------------------------------------------------
" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is '<leader>>'
let g:closetag_close_shortcut = '<leader>>'
"---------------------------------------------------

filetype plugin on
