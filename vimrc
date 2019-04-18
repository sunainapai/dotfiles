syntax on
colorscheme murphy
set textwidth=72
set tabstop=4
set shiftwidth=0
set expandtab
set autoindent
set guioptions=i
set number
set hlsearch
set showcmd
set hidden
set ruler

" Set font according to the operating system.
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Monospace\ 12
    elseif has("gui_macvim")
        set guifont=Menlo:h12
    elseif has("gui_win32")
        set guifont=Consolas:h14
    endif
endif

" Use Slimv for Lisp programming.
set runtimepath^=~/.vim/bundle/slimv

autocmd BufNewFile,BufRead *.html,*.css,*.js,*.json,*.yml,*.yaml setlocal tabstop=2
autocmd BufNewFile,BufRead *.go,Makefile setlocal tabstop=8 noexpandtab
