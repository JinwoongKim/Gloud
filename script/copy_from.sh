# copy vim files
tar cvf new_vim.tar ~/.vim
mv -f new_vim.tar vim.tar

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
tar cvf new_tmux.tar ~/.tmux
mv -f new_tmux.tar tmux.tar

#z shell
cp -f ~/.zshrc zshrc
tar cvf new_oh-my-zsh.tar ~/.oh-my-zsh
mv -f new_oh-my-zsh.tar oh-my-zsh.tar




