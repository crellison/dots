""" =============================================
""" All the Plugins
""" =============================================

call plug#begin('~/.vim/plugged')

""" Theme 
""" =============================================

Plug 'kaicataldo/material.vim', { 'branch': 'main' }

""" UI Design 
""" =============================================

" Bottom bar with all settings
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Toggles a sidebar!
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Highlighting for the sidebar
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" AutoCompletion & Improvements 
""" =============================================

" Alignment
Plug 'austintaylor/vim-indentobject'

" Align anything using `ga` command
Plug 'junegunn/vim-easy-align'

" Automatic closing of quotes, parenthesis, brackets, etc
Plug 'Raimondi/delimitMate'

" Get Gundo for the undo tree
Plug 'https://github.com/sjl/gundo.vim'

""" Language Support 
""" =============================================

" JS/JSX/TS/
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'thinca/vim-textobj-function-javascript',    { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug '1995eaton/vim-better-javascript-completion', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'chemzqm/vim-jsx-improve', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'gavocanov/vim-js-indent', { 'for': [ 'javascript', 'js', 'jsx' ]}

" SCSS and CSS syntax highlighting
if v:version < 704
  Plug 'JulesWang/css.vim'
endif
Plug 'cakebaker/scss-syntax.vim'

" HTML
Plug 'tpope/vim-ragtag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'skwp/vim-html-escape', {'for': ['html']}

" Flow Autocompletion for Node
Plug 'Shougo/neoinclude.vim'
Plug 'wokalski/autocomplete-flow'
" You will also need the following for function argument completion:
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

call plug#end()
