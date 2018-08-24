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
