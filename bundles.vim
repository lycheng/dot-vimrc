set nocompatible               " be iMproved
filetype off                   " required!

" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

"------------------
" YouCompleteMe
"------------------
Plugin 'Valloric/YouCompleteMe'

"-----------------
" Fast navigation
"-----------------
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'luochen1990/rainbow'
Plugin 'Yggdroot/indentLine'

"--------------
" Git plugins
"--------------
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

"-------------
" Other Utils
"-------------
Plugin 'nvie/vim-togglemouse'
Plugin 'mhinz/vim-hugefile'

"--------------
" language features
"--------------

"------- Python ---------
Plugin 'lepture/vim-jinja'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'
Plugin 'mindriot101/vim-yapf'

"------- web frontend ----------
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nono/jquery.vim'
Plugin 'groenewege/vim-less'
Plugin 'wavded/vim-stylus'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'

"------- markup language -------
Plugin 'tpope/vim-markdown'

"------- Golang ----------
Plugin 'fatih/vim-go'

"------- lisp -------
Plugin 'kovisoft/slimv'
Plugin 'wlangstroth/vim-racket'

"--------------
" Color Schemes
"--------------
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on     " required!
