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
