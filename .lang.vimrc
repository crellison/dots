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
