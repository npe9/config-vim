set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim' 

Plugin 'jgdavey/tslime.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'moll/vim-bbye'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'vim-scripts/gitignore'
Plugin 'int3/vim-extradite'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/Gundo'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'christoomey/vim-tmux-navigator'

" Haskell

Plugin 'raichoo/haskell-vim'
Plugin 'enomsg/vim-haskellConcealPlus'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Twinside/vim-hoogle'


Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" Latex
Plugin 'gerw/vim-latex-suite'
Plugin 'Lokaltog/vim-easymotion'
" Coq
Plugin 'def-lkb/vimbufsync'
Plugin 'the-lambda-church/coquille'



" Plugins 
Plugin 'vim-scripts/cscope.vim'
"Plugin 'vim-scripts/cscope_macros.vim'
" auto completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
" tags
Plugin 'majutsushi/tagbar'
" snippets
Plugin 'SirVer/ultisnips'
" C plugins
Plugin 'justinmk/vim-syntax-extra'
Plugin 'hari-rangarajan/CCTree'
Plugin 'vim-scripts/c.vim'

" AWK
Plugin 'vim-scripts/awk-support.vim'

" Vim itself
Plugin 'vim-scripts/Vim-Support'

" Go plugins
Plugin 'fatih/vim-go'

" Source control
Plugin 'tpope/vim-fugitive' 

" Color schemes 

Plugin 'altercation/vim-colors-solarized' 

" All of your Plugins must be added before the following line 
call vundle#end()            " required 
filetype plugin indent on    " required 

" Tabulation settings 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab

syntax enable
let g:solarized_termcolors=256

if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized

" Automatically open, but do not go to (if there are errors) the quickfix /
" " location list window, or close it when is has become empty.
" "
" " Note: Must allow nesting of autocmds to enable any customizations for
" quickfix
" " buffers.
" " Note: Normally, :cwindow jumps to the quickfix window if the command opens
" it
" " (but not if it's already open). However, as part of the autocmd, this
" doesn't
" " seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let mapleader=","
let g:mapleader = ","

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

let g:ycm_confirm_extra_conf=0

" Always show current position
set ruler
set number

" Show trailing whitespace
set list
" But only interesting whitespace
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif


" Height of the command bar
set cmdheight=1

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2


let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

