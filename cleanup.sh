rm -rf ~/.shell_startup
rm -f ~/.inputrc

rm -f ~/.bash_profile
rm -f ~/.bashrc

rm -f ~/.oh-my-zsh
rm -f ~/.zshenv
rm -f ~/.zshrc

rm -rf ~/.tmux
rm -f ~/.tmux.conf

rm -f ~/.gitconfig
rm -f ~/.gitignore_global

rm -f ~/.solarized
rm -f ~/.xsession
rm -f ~/.Xresources

rm -f ~/.vimrc
rm -f ~/.vim

rm -f ~/.curlrc

for i in `ls bin`;
do
    rm ~/bin/$i
done

# rm -rf ~/.ssh
# rm -f ~/.ssh/config
rm -f ~/.ssh/rc
rm -rf ~/.gnupg
rm -rf ~/.docker

# Cleanup - No need for these scripts ever
rm -f ~/.bash_aliases
rm -f ~/.bash_profile
rm -f ~/.bash_login


