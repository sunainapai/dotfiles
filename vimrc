syntax on
colorscheme murphy
set textwidth=72
set tabstop=4
set shiftwidth=4
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
        set guifont=Menlo:h13
    elseif has("gui_win32")
        set guifont=Consolas:h14
    endif
endif
