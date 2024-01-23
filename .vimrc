        " Configuration file for VIM
        set nocompatible
        set bs=2                " allow backspacing over everything in insert mode
        set ai                  " set autoindenting on
        " set backup            " keep a backup file
        set nobackup            " do not keep a backup file
        set history=256         " keep 256 lines of command line history
        set ruler               " show the cursor position all the time
        set tabstop=8           " tab at 4 characters
        set shiftwidth=8        " 4 characters indentation
        set nowrap              " do not wrap long lines
        set visualbell          " no bell
        set background=light    " msys rxvt has a light background
        "set background=dark    " mingw shell uses a black background
        syntax on               " syntax highlighting on

        inoremap <C-[> <Esc>