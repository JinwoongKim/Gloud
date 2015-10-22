"In order to install new Plugin
"1) put the new plugin btw call vundle#begin and vundle#end
"2) :source %, :PluginInstall
"3) Done

" bundle manager for vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'Rip-Rip/clang_complete'
Plugin 'SuperTab'
call vundle#end()

" key binding for nerdtreetoggle
map <silent> <C-n> :NERDTreeToggle<CR>

"Clang & SuperTab
let g:clang_library_path = '/usr/lib/x86_64-linux-gnu/libclang.so.1'
let g:clang_complete_auto = 0
set completeopt=menuone,menu,longest
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

