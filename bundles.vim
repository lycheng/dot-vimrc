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

"--------------
" IDE features
"--------------
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'wsdjeg/FlyGrep.vim'
Plugin 'w0rp/ale'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'simnalamburt/vim-mundo'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/indentLine'
Plugin 'Yggdroot/LeaderF', { 'do': '.\install.bat' }

"--------------
" Git plugins
"--------------
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/gv.vim'

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
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'

"------- markup language -------
Plugin 'tpope/vim-markdown'
Plugin 'jszakmeister/markdown2ctags'

"------- Golang ----------
Plugin 'fatih/vim-go'

"------- lisp -------
Plugin 'kovisoft/slimv'
Plugin 'wlangstroth/vim-racket'

"-------------
" Looks good
"-------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'luochen1990/rainbow'
Plugin 'RRethy/vim-illuminate'

"--------------
" Color Schemes
"--------------
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on     " required!
