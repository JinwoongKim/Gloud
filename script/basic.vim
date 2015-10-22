" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Show line numbers.
set number

" Turn on syntax highlighting.
syntax on

set expandtab
retab
set shiftwidth=2
set softtabstop=2
set ai

"set command line history size to 1000
set history=1000

ab w w
ab q q

" disable automatic comment insertion
set formatoptions-=cro

