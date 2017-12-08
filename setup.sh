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

ln -sf `pwd`/screenrc           ~/.screenrc
mkdir -p                        ~/.tmux
ln -sf `pwd`/tmux_ssh.conf      ~/.tmux/tmux_ssh.conf
cat tmux.conf   >               ~/.tmux.conf
cat solarized/tmux/tmuxcolors-256.conf >> ~/.tmux.conf

mkdir -p                        ~/.subversion/
ln -sf `pwd`/subversion.conf    ~/.subversion/config
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

ln -sf `pwd`/bin                ~/

if [ -d ~/Dropbox/System/Unix/ssh ]
then
    rm -rf ~/.ssh
    ln -sf ~/Dropbox/System/Unix/ssh/ ~/.ssh
else    
    ln -sf `pwd`/ssh/rc      ~/.ssh/rc
    echo "COPY SSH KEYS Manually"
fi
ln -sf ~/.ssh/authorized_keys   ~/.ssh/authorized_keys2

echo "On a new host:"
echo "> Change shell to zsh via either chsh or /etc/passwd"
