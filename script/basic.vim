" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enables :Paste to just do what you want
command Paste execute 'set noai | insert | set ai'

" Show line numbers.
set number

" Turn on syntax highlighting.
syntax on

"retab
"set softtabstop=2
set ai
set shiftwidth=2
set tabstop=2
set expandtab
autocmd FileType make setlocal noexpandtab

"set command line history size to 1000
set history=1000

ab W w
ab Q q

" disable automatic comment insertion
set formatoptions-=cro

