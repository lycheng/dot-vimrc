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
" Bundle 'honza/vim-snippets'
" Bundle 'SirVer/ultisnips'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'

"------ snipmate dependencies -------
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'tomtom/tlib_vim'

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
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mhinz/vim-hugefile'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'airblade/vim-gitgutter'
Bundle 'itchyny/lightline.vim'

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
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'nvie/vim-flake8'

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

"------- Go ----------
Bundle 'fatih/vim-go'

"--------------
" Color Schemes
"--------------
Bundle 'dracula/vim'
Bundle 'chriskempson/vim-tomorrow-theme'

filetype plugin indent on     " required!
