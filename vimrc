call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'vim-syntastic/syntastic'
Plug 'maksimr/vim-jsbeautify'
Plug 'morhetz/gruvbox'
Plug 'spf13/vim-autoclose'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'w0rp/ale'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

call plug#end()

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1
let g:used_javascript_libs = 'react,_,d3,chai'
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
autocmd BufReadPre *_test.js let b:javascript_lib_use_chai = 1

" Ale (Linter)
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"
"""""

" Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"
""""""

let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
set number relativenumber
"set nospell
set shiftwidth=2
set tabstop=2
"set smartindent
set expandtab
set tw=80

"Plugin 'isRuslan/vim-es6'
"Plugin 'mxw/vim-js'
