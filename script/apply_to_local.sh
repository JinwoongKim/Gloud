# copy vim files
tar xvf vim.tar
rm -rf ~/.vim
mv .vim ~
cp vimrc ~/.vimrc
cp basic.vim ~/.basic.vim
cp bundle.vim ~/.bundle.vim
cp cscope.vim ~/.cscope.vim
cp ctag.vim ~/.ctag.vim
cp tab.vim ~/.tab.vim

# copy git files
cp gitconfig ~/.gitconfig

# copy scripts
mkdir ~/.scripts/
cp mkcscope ~/.scripts/
cp mkctags ~/.scripts/

# zsh & oh-my-zsh 
cp zshrc ~/.zshrc
tar xvf oh-my-zsh.tar
rm -rf ~/.oh-my-zsh
mv .oh-my-zsh ~

# tmux
cp tmux.conf ~/.tmux.conf
tar xvf tmux.tar
rm -rf ~/.tmux
mv .tmux ~
