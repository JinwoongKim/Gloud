" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" enables :Paste to just do what you want
command Paste execute 'set noai | insert | set ai'

" Show line numbers.
"set number

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
ab Wq wq
ab Q q

" disable automatic comment insertion
set formatoptions-=cro

inoremap jj <ESC>j
inoremap kk <ESC>k
inoremap hhh <ESC>h
inoremap lll <ESC>l

" undo file
set undofile
set undodir=~/.vim/undo

" highlight like TODO, FIXME ...
if has("autocmd")
    if v:version > 701
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
        autocmd Syntax * call matchadd('Search', '\W\zs\(HELP\|DEBUG\)')
        autocmd Syntax * call matchadd('ErrorMsg', '\W\zs\(ERROR\|FATAL\)')
    endif
endif

" cursor  line
:set cursorline
:hi CursorLine   cterm=NONE ctermbg=52 "ctermfg=white guibg=131 guifg=white
:hi CursorColumn cterm=NONE ctermbg=52 "ctermfg=white guibg=131 guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
