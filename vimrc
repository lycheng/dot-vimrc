source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on
set completeopt-=preview

"--------
" Vim UI
"--------
set background=dark

" gruvbox
" https://github.com/morhetz/gruvbox/wiki/Terminal-specific
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_improved_warnings=1
colorscheme gruvbox

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg

"--------
" Common
"--------

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set re=1

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set smarttab
set expandtab       " expand tab to space

" syntax support
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses settings
let g:rainbow_active = 1
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

" indentLine
let g:indentLine_color_term = 239

" easy-motion
nmap s <Plug>(easymotion-overwin-f2)

" Tagbar
let g:tagbar_right=1
let g:tagbar_width=36
let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_compact=1

" airline
let g:airline_theme="papercolor"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'

" Nerd Tree
let NERDTreeWinSize=30
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
let NERDTreeWinPos="left"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" https://github.com/scrooloose/nerdtree/issues/480#issuecomment-139815558
function NERDTreeToggleInCurDir()
    " If NERDTree is open in the current buffer
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        exe ":NERDTreeClose"
    else
        if (expand("%:t") != '')
           exe ":NERDTreeFind"
        else
           exe ":NERDTreeToggle"
        endif
    endif
endfunction

" tpope/vim-commentary
autocmd FileType python,shell,coffee set commentstring=#\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s

" the_silver_searcher
let g:ag_prg="ag --vimgrep"

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" YCM
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

highlight Pmenu ctermfg=white ctermbg=red
highlight PmenuSel ctermfg=white ctermbg=blue

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path="python"
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

map <leader>g :YcmCompleter GoTo<CR>
map <leader>G :Gbrowse<CR>
map <leader>f :YcmCompleter GoToReferences<CR>

augroup load_ycm
  autocmd!
  autocmd CursorHold, CursorHoldI * :packadd YouCompleteMe
                                \ | autocmd! load_ycm
augroup END

" LeaderF
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_DefaultMode  = 'FullPath'
let g:Lf_WildIgnore = {
            \ 'dir': ['node_modules','.git'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}

" Keybindings for plugin toggle
nmap <F3> :Yapf<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap <F5> :call NERDTreeToggleInCurDir()<cr>
nmap <F6> :TagbarToggle<cr>
set pastetoggle=<F9>
nmap  <D-/> :
nnoremap <leader>a :Ack! <cword>
nnoremap <leader>v V`]
nnoremap ff :LeaderfBuffer<cr>
nnoremap <leader>t :LeaderfBufTag<cr>
nnoremap <leader>T :LeaderfBufTagAll<cr>

" vim-json
" https://github.com/elzr/vim-json
let g:vim_json_syntax_conceal = 0

" vim-markdown
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_conceal = 0

" markdown2ctags
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/bundle/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }


"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" copy to system clipboard
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" ale
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_swift_swiftlint_use_defaults = 1
let g:ale_set_loclist = 0
let g:ale_lint_delay = 200
let g:ale_linters = {
            \ 'python': ['flake8'],
            \ 'go': ['golint', 'govet', 'errcheck']
            \}

"-------------
" languages spec
"-------------

" golang with vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" python
let g:ale_python_flake8_executable = 'flake8'

" E501 line too long
" E402 Module level import not at top of file
" E711 comparison to None should be 'if cond is None:'
" E712 comparison to False should be 'if cond is False:' or 'if not cond:'
" E722 do not use bare except
let g:ale_python_flake8_options = '--ignore=E501,E402,E711,E712,E722'
