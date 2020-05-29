git submodule update --init
mkdir -p                        ~/.shell_startup
ln -sf `pwd`/shell/aliases      ~/.shell_startup/aliases
ln -sf `pwd`/shell/shell        ~/.shell_startup/shell
ln -sf `pwd`/shell/environment  ~/.shell_startup/environment
ln -sf `pwd`/shell/eyecandy     ~/.shell_startup/eyecandy
ln -sf `pwd`/shell/inputrc      ~/.inputrc

ln -sf `pwd`/shell/bash_profile ~/.bash_profile
ln -sf `pwd`/shell/bashrc       ~/.bashrc

ln -sf `pwd`/oh-my-zsh          ~/.oh-my-zsh
ln -sf `pwd`/shell/environment  ~/.zshenv
ln -sf `pwd`/shell/zshrc        ~/.zshrc

ln -sf `pwd`/tmux               ~/.tmux
ln -sf ~/.tmux/tmux.conf        ~/.tmux.conf

ln -sf `pwd`/gitconfig          ~/.gitconfig
ln -sf `pwd`/gitignore_global   ~/.gitignore_global

#ln -sf `pwd`/xsession          ~/.xsession
ln -sf `pwd`/solarized          ~/.solarized
ln -sf `pwd`/Xresources         ~/.Xresources
if [ `which xrdb > /dev/null 2>&1` ]
then
    xrdb ~/.Xresources
fi

ln -sf `pwd`/vim                ~/.vim
ln -sf ~/.vim/vimrc             ~/.vimrc

ln -sf `pwd`/curlrc             ~/.curlrc

mkdir -p ~/bin
for i in `ls bin`;
do
    ln -sf `pwd`/bin/$i ~/bin/
done

ln -sf `pwd`/devops/docker      ~/.docker

if [ -d ~/Dropbox/System/Unix/ssh ]
then
    rm -rf ~/.ssh
    ln -sf ~/Dropbox/System/Unix/ssh/ ~/.ssh
else    
    ln -sf `pwd`/ssh/rc      ~/.ssh/rc
    echo "COPY SSH KEYS Manually"
fi
if [ -d ~/Dropbox/System/Unix/gnupg ]
then
    rm -rf ~/.gnupg
    ln -sf ~/Dropbox/System/Unix/gnupg ~/.gnupg
fi
ln -sf ~/.ssh/authorized_keys   ~/.ssh/authorized_keys2

mkdir -p ~/.gnupg
ln -sf `pwd`/gnupg/gpg.conf ~/.gnupg/
ln -sf `pwd`/gnupg/gpg-agent.conf ~/.gnupg/

echo "On a new host:"
echo "> Change shell to zsh via either chsh or /etc/passwd"
