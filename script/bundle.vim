"In order to install new Plugin
"1) put the new plugin btw call vundle#begin and vundle#end
"2) :source %, :PluginInstall
"3) Done

" bundle manager for vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
"Plugin 'Rip-Rip/clang_complete'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'SuperTab'
Plugin 'The-NERD-Tree'
Plugin 'ctrlp.vim'
call vundle#end()

" key binding for nerdtreetoggle
map <silent> <C-n> :NERDTreeTabsToggle<CR>

"Clang & SuperTab
let g:clang_library_path = '/usr/lib/x86_64-linux-gnu/libclang.so.1'
let g:clang_complete_auto = 0
set completeopt=menuone,menu,longest
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"


"NerdTree Options
let NERDTreeIgnore=['\.o$', '\~$'] " hide object files 
