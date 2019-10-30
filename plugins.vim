call plug#begin('~/.local/share/nvim/plugged')

"------------------
" YouCompleteMe
"------------------
Plug 'ycm-core/YouCompleteMe'

"--------------
" IDE features
"--------------
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'dyng/ctrlsf.vim'
Plug 'w0rp/ale'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'andymass/vim-matchup'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'
Plug 'machakann/vim-swap'

"--------------
" Git plugins
"--------------
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

"-------------
" Other Utils
"-------------
Plug 'nvie/vim-togglemouse'
Plug 'mhinz/vim-hugefile'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/csv.vim'

"--------------
" language features
"--------------

"------- Python ---------
Plug 'lepture/vim-jinja'
Plug 'hynek/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"------- web frontend ----------
Plug 'mustache/vim-mustache-handlebars'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'

"------- Golang ----------
Plug 'fatih/vim-go'

"------- Rust -------
Plug 'rust-lang/rust.vim'

"------- Others -------
Plug 'tpope/vim-markdown'
Plug 'jszakmeister/markdown2ctags'
Plug 'hashivim/vim-terraform'

"-------------
" Looks good
"-------------
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'RRethy/vim-illuminate'
Plug 'mengelbrecht/lightline-bufferline'

"--------------
" Color Schemes
"--------------
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'

call plug#end()
