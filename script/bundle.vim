"In order to install new Plugin
"1) put the new plugin btw call vundle#begin and vundle#end
"2) :source %, :PluginInstall
"3) Done

" bundle manager for vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'ctrlp.vim'
call vundle#end()

