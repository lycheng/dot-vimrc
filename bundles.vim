set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
" Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
" Bundle 'ervandew/supertab'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
" Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
" snippets
" Bundle 'garbas/vim-snipmate'
" Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mhinz/vim-hugefile'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'airblade/vim-gitgutter'
Bundle 'hynek/vim-python-pep8-indent'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle 'lepture/vim-jinja'
" Bundle 'kevinw/pyflakes-vim'
" Bundle 'davidhalter/jedi-vim'

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'nono/jquery.vim'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Go ----------
Bundle 'fatih/vim-go'

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

filetype plugin indent on     " required!
