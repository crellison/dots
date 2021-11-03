""" Get vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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

""" =============================================
""" Highlighting and UI Design Config
""" =============================================

""" Language Parsing and Fonts
set encoding=UTF-8
if has ('gui running')
  set guifont=SauceCodePro_Nerd_Font:h10
endif

""" UI Config
set relativenumber
set showcmd
set cursorline
filetype indent on
set showmatch
set linebreak
set textwidth=99
set colorcolumn=100
set scrolloff=4
set lazyredraw " only redraw when necessary

""" True Color Support for Material Theme
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" gui colors
if (has("termguicolors"))
  set termguicolors
endif

""" Airline Theme
let g:airline_theme='deus'

""" Sidebar Toggle
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Syntax Theme
colorscheme material
let g:material_theme_style='dark'

syntax on

""" =============================================
""" Language Support 
""" =============================================

""" Some settings that help
set autoindent 
set smartindent
set tabstop=2
set softtabstop=2
set expandtab " tabs are spaces
set shiftwidth=2
" Strip whitespace in file manually
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

""" Autogroups (language-specific settings)
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType java setlocal tabstop=4
    autocmd FileType java setlocal softtabstop=4
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal shiftwidth=2
augroup END

""" =============================================
""" Base Configuration 
""" =============================================

""" Leader Mappings
let mapleader=","
inoremap jk <esc>
" toggle crazy undotree
nnoremap <leader>u :GundoToggle<CR> 
" save session
nnoremap <leader>s :mksession<CR>
" open ack.vim
nnoremap <leader>a :Ack

""" General
set wildmenu  " autocomplete for filenames with :e
set ttyfast  " fast keyboard
set timeout timeoutlen=1000 ttimeoutlen=50
set nocompatible " not compatible with vi
set modelines=0
set scrolloff=3
nnoremap ; :

""" Window Navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""" Tab Management
map <leader>t :tabnew<cr>
map <leader>w :tabclose<cr>
map <leader>] :tabnext

""" Searching
set incsearch " incremental searching w/ input
set hlsearch  " highlight matches
set ignorecase
set smartcase
set gdefault

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

""" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

""" Movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>
" NO ARROWS
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" highlight last inserted text
nnoremap gV `[v`]

""" Fuzzy File Search (CtrlP)
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ack %s -l --nocolor --hidden -g ""'

""" TMUX
" allows cursor change in tmux mode
if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""" Backups
set noswapfile
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
