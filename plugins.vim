call plug#begin('~/.local/share/nvim/plugged')

"------------------
" YouCompleteMe
"------------------
Plug 'Valloric/YouCompleteMe'

"--------------
" IDE features
"--------------
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'w0rp/ale'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'

"--------------
" Git plugins
"--------------
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

"-------------
" Other Utils
"-------------
Plug 'nvie/vim-togglemouse'
Plug 'mhinz/vim-hugefile'
Plug 'dhruvasagar/vim-table-mode'

"--------------
" language features
"--------------

"------- Python ---------
Plug 'lepture/vim-jinja'
Plug 'hynek/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'

"------- web frontend ----------
Plug 'mustache/vim-mustache-handlebars'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'

"------- Golang ----------
Plug 'fatih/vim-go'

"------- lisp -------
Plug 'kovisoft/slimv'
Plug 'wlangstroth/vim-racket'

"------- Others -------
Plug 'tpope/vim-markdown'
Plug 'jszakmeister/markdown2ctags'
Plug 'hashivim/vim-terraform'


"-------------
" Looks good
"-------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'RRethy/vim-illuminate'

"--------------
" Color Schemes
"--------------
Plug 'morhetz/gruvbox'

call plug#end()
