set nocompatible      " Enable Vim mode (instead of vi emulation)

syntax on         " Enable syntax highlighting
filetype plugin indent on

let g:is_posix = 1              " Our /bin/sh is POSIX, not bash
set smartindent                 " Intelligent indentation matching
set autoread                    " Update the file if it's changed externally
set backspace=indent,eol,start  " Allow backspacing over anything
set belloff=all                 " Turn off bells
set display=truncate            " Show '@@@' when the last screen line overflows
set formatoptions+=j            " Delete comment char when joining lines
set history=100                 " Undo up to this many commands
set hlsearch                    " Highlight search results
set incsearch                   " Highlight search matches as you type them
set ruler                       " Show cursor position
set ttyfast                     " Redraw faster for smoother scrolling
set wildmenu                    " Show menu for tab completion in command mode
set ttyfast	                    " Speed up scrolling in tty
set number                      " Show line numbers
set expandtab                   " Expand tabs into spaces
set tabstop=4                   " Tab width is 4 spaces
set softtabstop=4
set smarttab
set autoindent
set cindent
set shiftwidth=4                " Use tabs of width 4 for indentation
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<     " Chars to represent whitespace chars

noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=ucs-bom,utf-8,latin1
endif

augroup FreeBSD
    autocmd!
    autocmd BufNewFile /usr/ports/*/*/Makefile 0r /usr/ports/Templates/Makefile
    if !empty($PORTSDIR)
        autocmd BufNewFile $PORTSDIR/*/*/Makefile 0r $PORTSDIR/Templates/Makefile
    endif
augroup END

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Rust-vim settings
let g:rust_fold = 1
let g:rustfmt_autosave = 1
