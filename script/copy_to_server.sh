# copy vim files
cp -f ~/.vimrc vimrc
cd ~
tar cvf new_vim.tar .vim
cd -
mv -f ~/new_vim.tar vim.tar

cp -f ~/.basic.vim basic.vim
cp -f ~/.bundle.vim bundle.vim
cp -f ~/.cscope.vim cscope.vim
cp -f ~/.ctag.vim ctag.vim
cp -f ~/.tab.vim tab.vim

#git
co -f ~/.gitconfig gitconfig

# scripts
cp -f ~/.scripts/mkcscope mkcscope
cp -f ~/.scripts/mkctags mkctags

#tmux 
cp -f ~/.tmux.conf tmux.conf
cd ~
tar cvf new_tmux.tar .tmux
cd -
mv -f ~/new_tmux.tar tmux.tar

#z shell
cp -f ~/.zshrc zshrc
cd ~
tar cvf new_oh-my-zsh.tar .oh-my-zsh
cd -
mv -f ~/new_oh-my-zsh.tar oh-my-zsh.tar




